extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef unsigned short umode_t;
typedef u64 dma_addr_t;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_nlink_t;
typedef long __kernel_off_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_nlink_t nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
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
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct task_struct;
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
typedef void (*ctor_fn_t)(void);
struct cpuinfo_x86;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_11 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_11 pgd_t;
struct page;
struct file;
struct seq_file;
struct cpumask;
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct cpuinfo_x86 {
   __u8 x86 ;
   __u8 x86_vendor ;
   __u8 x86_model ;
   __u8 x86_mask ;
   int x86_tlbsize ;
   __u8 x86_virt_bits ;
   __u8 x86_phys_bits ;
   __u8 x86_coreid_bits ;
   __u32 extended_cpuid_level ;
   int cpuid_level ;
   __u32 x86_capability[9U] ;
   char x86_vendor_id[16U] ;
   char x86_model_id[64U] ;
   int x86_cache_size ;
   int x86_cache_alignment ;
   int x86_power ;
   unsigned long loops_per_jiffy ;
   cpumask_var_t llc_shared_map ;
   u16 x86_max_cores ;
   u16 apicid ;
   u16 initial_apicid ;
   u16 x86_clflush_size ;
   u16 booted_cores ;
   u16 phys_proc_id ;
   u16 cpu_core_id ;
   u16 cpu_index ;
};
struct seq_operations;
struct kmem_cache;
struct __anonstruct_mm_segment_t_24 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_24 mm_segment_t;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_ldv_5166_26 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_27 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_28 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_29 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_5189_25 {
   struct __anonstruct_ldv_5166_26 ldv_5166 ;
   struct __anonstruct_futex_27 futex ;
   struct __anonstruct_nanosleep_28 nanosleep ;
   struct __anonstruct_poll_29 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_5189_25 ldv_5189 ;
};
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   int uaccess_err ;
};
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_arch_rwlock_t_30 {
   unsigned int lock ;
};
typedef struct __anonstruct_arch_rwlock_t_30 arch_rwlock_t;
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
   struct lock_class *class_cache ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5753_32 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5754_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5753_32 ldv_5753 ;
};
struct spinlock {
   union __anonunion_ldv_5754_31 ldv_5754 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_33 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_33 rwlock_t;
struct __anonstruct_seqlock_t_34 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_34 seqlock_t;
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
struct __anonstruct_nodemask_t_35 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_35 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct rw_semaphore;
typedef long rwsem_count_t;
struct rw_semaphore {
   rwsem_count_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct ctl_table;
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
struct device;
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
   void *start_site ;
   char start_comm[16U] ;
   int start_pid ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
enum dpm_state {
    DPM_INVALID = 0,
    DPM_ON = 1,
    DPM_PREPARING = 2,
    DPM_RESUMING = 3,
    DPM_SUSPENDING = 4,
    DPM_OFF = 5,
    DPM_OFF_IRQ = 6
} ;
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
    RPM_REQ_RESUME = 3
} ;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char should_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   enum dpm_state status ;
   struct list_head entry ;
   struct completion completion ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   spinlock_t lock ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char ignore_children : 1 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
};
struct __anonstruct_mm_context_t_100 {
   void *ldt ;
   int size ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_100 mm_context_t;
struct pci_bus;
struct vm_area_struct;
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
struct kobject;
enum kobj_ns_type;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   struct module *owner ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   mode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
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
struct kobj_ns_type_operations;
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
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct sock;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void const *(*current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_10833_110 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   u16 perm ;
   u16 flags ;
   int (*set)(char const * , struct kernel_param * ) ;
   int (*get)(char * , struct kernel_param * ) ;
   union __anonunion_ldv_10833_110 ldv_10833 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   int (*set)(char const * , struct kernel_param * ) ;
   int (*get)(char * , struct kernel_param * ) ;
   unsigned int elemsize ;
   void *elem ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
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
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint *tracepoints ;
   unsigned int num_tracepoints ;
   char const **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
   struct ftrace_event_call *trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef unsigned short sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_111 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_111 sync_serial_settings;
struct __anonstruct_te1_settings_112 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_112 te1_settings;
struct __anonstruct_raw_hdlc_proto_113 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_113 raw_hdlc_proto;
struct __anonstruct_fr_proto_114 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_114 fr_proto;
struct __anonstruct_fr_proto_pvc_115 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_115 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_116 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_116 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_117 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_117 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_118 {
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
   union __anonunion_ifs_ifsu_118 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_119 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_120 {
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
   union __anonunion_ifr_ifrn_119 ifr_ifrn ;
   union __anonunion_ifr_ifru_120 ifr_ifru ;
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
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct address_space;
struct __anonstruct_ldv_11972_123 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_11973_122 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_11972_123 ldv_11972 ;
};
struct __anonstruct_ldv_11978_125 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_11981_124 {
   struct __anonstruct_ldv_11978_125 ldv_11978 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_11985_126 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_11973_122 ldv_11973 ;
   union __anonunion_ldv_11981_124 ldv_11981 ;
   union __anonunion_ldv_11985_126 ldv_11985 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_128 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_127 {
   struct __anonstruct_vm_set_128 vm_set ;
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
   union __anonunion_shared_127 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   unsigned long vm_truncate_count ;
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
   unsigned long count[3U] ;
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
   struct rw_semaphore mmap_sem ;
   spinlock_t page_table_lock ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
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
   cpumask_t cpu_vm_mask ;
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
};
struct poll_table_struct;
struct pipe_inode_info;
struct inode;
struct net;
struct fasync_struct;
struct kiocb;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_set {
   struct list_head list ;
   struct ctl_table_set *parent ;
   int (*is_seen)(struct ctl_table_set * ) ;
};
struct ctl_table_header;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   mode_t mode ;
   struct ctl_table *child ;
   struct ctl_table *parent ;
   proc_handler *proc_handler ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_table_root {
   struct list_head root_list ;
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
};
struct ctl_table_header {
   struct ctl_table *ctl_table ;
   struct list_head ctl_entry ;
   int used ;
   int count ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_table *attached_by ;
   struct ctl_table *attached_to ;
   struct ctl_table_header *parent ;
};
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int stat[18U] ;
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
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   unsigned long min_partial ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct class_private;
struct bus_type;
struct bus_type_private;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
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
   struct bus_type_private *p ;
};
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
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
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct class_private *p ;
};
struct device_type;
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
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
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct file_ra_state;
struct writeback_control;
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
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc_coherent)(struct device * , size_t , dma_addr_t * , gfp_t ) ;
   void (*free_coherent)(struct device * , size_t , void * , dma_addr_t ) ;
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
typedef s32 dma_cookie_t;
struct net_device;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned int mask ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_18739_132 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_18740_131 {
   __wsum csum ;
   struct __anonstruct_ldv_18739_132 ldv_18739 ;
};
union __anonunion_ldv_18770_133 {
   __u32 mark ;
   __u32 dropcount ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_18740_131 ldv_18740 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u32 rxhash ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char deliver_no_wcard : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_18770_133 ldv_18770 ;
   __u16 vlan_tci ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct dentry;
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
};
struct file_operations;
struct pm_qos_request_list;
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
   __u8 reserved2 ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
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
struct ethtool_rawip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __u8 hdata[64U] ;
};
struct ethtool_ether_spec {
   __be16 ether_type ;
   __u8 frame_size ;
   __u8 eframe[16U] ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union __anonunion_h_u_135 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
union __anonunion_m_u_136 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_135 h_u ;
   union __anonunion_m_u_136 m_u ;
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
union __anonunion_h_u_137 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
union __anonunion_m_u_138 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
struct ethtool_rx_ntuple_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_137 h_u ;
   union __anonunion_m_u_138 m_u ;
   __u16 vlan_tag ;
   __u16 vlan_tag_mask ;
   __u64 data ;
   __u64 data_mask ;
   __s32 action ;
};
struct ethtool_rx_ntuple {
   __u32 cmd ;
   struct ethtool_rx_ntuple_flow_spec fs ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_rx_ntuple_list {
   struct list_head list ;
   unsigned int count ;
};
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
   u32 (*get_rx_csum)(struct net_device * ) ;
   int (*set_rx_csum)(struct net_device * , u32 ) ;
   u32 (*get_tx_csum)(struct net_device * ) ;
   int (*set_tx_csum)(struct net_device * , u32 ) ;
   u32 (*get_sg)(struct net_device * ) ;
   int (*set_sg)(struct net_device * , u32 ) ;
   u32 (*get_tso)(struct net_device * ) ;
   int (*set_tso)(struct net_device * , u32 ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*phys_id)(struct net_device * , u32 ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_ufo)(struct net_device * ) ;
   int (*set_ufo)(struct net_device * , u32 ) ;
   u32 (*get_flags)(struct net_device * ) ;
   int (*set_flags)(struct net_device * , u32 ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , void * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   int (*set_rx_ntuple)(struct net_device * , struct ethtool_rx_ntuple * ) ;
   int (*get_rx_ntuple)(struct net_device * , u32 , void * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct ipstats_mib {
   unsigned long mibs[31U] ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   unsigned long mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   unsigned long mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[78U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[2U] ;
   struct ipstats_mib *ip_statistics[2U] ;
   struct linux_mib *net_statistics[2U] ;
   struct udp_mib *udp_statistics[2U] ;
   struct udp_mib *udplite_statistics[2U] ;
   struct icmp_mib *icmp_statistics[2U] ;
   struct icmpmsg_mib *icmpmsg_statistics[2U] ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[2U] ;
   struct udp_mib *udplite_stats_in6[2U] ;
   struct ipstats_mib *ipv6_statistics[2U] ;
   struct icmpv6_mib *icmpv6_statistics[2U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics[2U] ;
   struct linux_xfrm_mib *xfrm_statistics[2U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   spinlock_t sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *tcp_sock ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   int nat_vmalloced ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   int sysctl_rt_cache_rebuild_count ;
   int current_rt_cache_rebuild_count ;
   atomic_t rt_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , u32 ) ;
   int (*local_out)(struct sk_buff * ) ;
   atomic_t entries ;
   struct kmem_cache *kmem_cachep ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *table ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
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
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nameidata;
struct path;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
union __anonunion_d_u_149 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry_operations;
struct super_block;
struct dentry {
   atomic_t d_count ;
   unsigned int d_flags ;
   spinlock_t d_lock ;
   int d_mounted ;
   struct inode *d_inode ;
   struct hlist_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct list_head d_lru ;
   union __anonunion_d_u_149 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
   unsigned long d_time ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   void *d_fsdata ;
   unsigned char d_iname[32U] ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry * , struct qstr * ) ;
   int (*d_compare)(struct dentry * , struct qstr * , struct qstr * ) ;
   int (*d_delete)(struct dentry * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct export_operations;
struct kstatfs;
struct cred;
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
   int (*quota_on)(struct super_block * , int , int , char * ) ;
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
union __anonunion_arg_151 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_150 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_151 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_150 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   void (*sync_page)(struct page * ) ;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   spinlock_t i_mmap_lock ;
   unsigned int truncate_count ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   int bd_openers ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   struct list_head bd_holder_list ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_22535_152 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   struct hlist_node i_hash ;
   struct list_head i_list ;
   struct list_head i_sb_list ;
   struct list_head i_dentry ;
   unsigned long i_ino ;
   atomic_t i_count ;
   unsigned int i_nlink ;
   uid_t i_uid ;
   gid_t i_gid ;
   dev_t i_rdev ;
   unsigned int i_blkbits ;
   u64 i_version ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   blkcnt_t i_blocks ;
   unsigned short i_bytes ;
   umode_t i_mode ;
   spinlock_t i_lock ;
   struct mutex i_mutex ;
   struct rw_semaphore i_alloc_sem ;
   struct inode_operations const *i_op ;
   struct file_operations const *i_fop ;
   struct super_block *i_sb ;
   struct file_lock *i_flock ;
   struct address_space *i_mapping ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_22535_152 ldv_22535 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_mark_entries ;
   struct list_head inotify_watches ;
   struct mutex inotify_mutex ;
   unsigned long i_state ;
   unsigned long dirtied_when ;
   unsigned int i_flags ;
   atomic_t i_writecount ;
   void *i_security ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
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
union __anonunion_f_u_153 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_153 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
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
   int (*fl_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*fl_notify)(struct file_lock * ) ;
   int (*fl_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
   void (*fl_break)(struct file_lock * ) ;
   int (*fl_mylease)(struct file_lock * , struct file_lock * ) ;
   int (*fl_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_155 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_154 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_155 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned char fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_154 fl_u ;
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
   struct hlist_head s_anon ;
   struct list_head s_files ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct list_head s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   void *s_fs_info ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
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
   int (*ioctl)(struct inode * , struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , int ) ;
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
};
struct inode_operations {
   int (*create)(struct inode * , struct dentry * , int , struct nameidata * ) ;
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , int ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , int , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   void (*truncate)(struct inode * ) ;
   int (*permission)(struct inode * , int ) ;
   int (*check_acl)(struct inode * , int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   long (*fallocate)(struct inode * , int , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   void (*drop_inode)(struct inode * ) ;
   void (*delete_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*clear_inode)(struct inode * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct vfsmount * ) ;
   int (*show_stats)(struct seq_file * , struct vfsmount * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   int (*get_sb)(struct file_system_type * , int , char const * , void * , struct vfsmount * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct list_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
   struct lock_class_key i_alloc_sem_key ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   unsigned short namelen ;
   char const *name ;
   mode_t mode ;
   nlink_t nlink ;
   uid_t uid ;
   gid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   spinlock_t pde_unload_lock ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
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
struct ip_conntrack_stat;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   int hash_vmalloc ;
   int expect_vmalloc ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
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
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
};
struct net_generic;
struct net {
   atomic_t count ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct net_device *loopback_dev ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   struct list_head rules_ops ;
   spinlock_t rules_mod_lock ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct netns_xfrm xfrm ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
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
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dcbnl_rtnl_ops {
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
   u8 (*getnumtcs)(struct net_device * , int , u8 * ) ;
   u8 (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
};
struct vlan_group;
struct netpoll_info;
struct wireless_dev;
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
struct neighbour;
struct neigh_parms;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   int refcount ;
   bool synced ;
   bool global_use ;
   struct rcu_head rcu_head ;
};
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   struct hh_cache *hh_next ;
   atomic_t hh_refcnt ;
   __be16 hh_type ;
   u16 hh_len ;
   int (*hh_output)(struct sk_buff * ) ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   unsigned int gro_count ;
   struct net_device *dev ;
   struct list_head dev_list ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
};
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   unsigned long state ;
   struct Qdisc *qdisc_sleeping ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long tx_bytes ;
   unsigned long tx_packets ;
   unsigned long tx_dropped ;
};
struct rps_map {
   unsigned int len ;
   struct rcu_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 fill ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct rcu_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct netdev_rx_queue *first ;
   atomic_t count ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   void (*ndo_set_multicast_list)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   void (*ndo_vlan_rx_register)(struct net_device * , struct vlan_group * ) ;
   void (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct net_bridge_port;
struct macvlan_port;
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct pm_qos_request_list *pm_qos_req ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   unsigned long features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned short gflags ;
   unsigned short priv_flags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   struct net_device *master ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   int uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   void *dsa_ptr ;
   void *atalk_ptr ;
   void *ip_ptr ;
   void *dn_ptr ;
   void *ip6_ptr ;
   void *ec_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   struct netdev_queue rx_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   atomic_t refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned short reg_state ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   void *ml_priv ;
   struct net_bridge_port *br_port ;
   struct macvlan_port *macvlan_port ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned long vlan_features ;
   unsigned int gso_max_size ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   unsigned int fcoe_ddp_xid ;
   struct ethtool_rx_ntuple_list ethtool_ntuple_list ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned char full_duplex : 1 ;
   unsigned char force_media : 1 ;
   unsigned char supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
struct vlan_group {
   struct net_device *real_dev ;
   unsigned int nr_vlans ;
   int killall ;
   struct hlist_node hlist ;
   struct net_device **vlan_devices_arrays[8U] ;
   struct rcu_head rcu ;
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
struct ssb_device_id {
   __u16 vendor ;
   __u16 coreid ;
   __u8 revision ;
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
union __anonunion_ldv_28195_160 {
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
   u8 pcie_type ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[18U] ;
   resource_size_t fw_addr[18U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_ucfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[18U] ;
   struct bin_attribute *res_attr_wc[18U] ;
   struct list_head msi_list ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_28195_160 ldv_28195 ;
   struct pci_ats *ats ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
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
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct pcmcia_device;
struct ssb_bus;
struct ssb_driver;
struct __anonstruct_ghz24_162 {
   s8 a0 ;
   s8 a1 ;
   s8 a2 ;
   s8 a3 ;
};
struct __anonstruct_ghz5_163 {
   s8 a0 ;
   s8 a1 ;
   s8 a2 ;
   s8 a3 ;
};
struct __anonstruct_antenna_gain_161 {
   struct __anonstruct_ghz24_162 ghz24 ;
   struct __anonstruct_ghz5_163 ghz5 ;
};
struct ssb_sprom {
   u8 revision ;
   u8 il0mac[6U] ;
   u8 et0mac[6U] ;
   u8 et1mac[6U] ;
   u8 et0phyaddr ;
   u8 et1phyaddr ;
   u8 et0mdcport ;
   u8 et1mdcport ;
   u8 board_rev ;
   u8 country_code ;
   u8 ant_available_a ;
   u8 ant_available_bg ;
   u16 pa0b0 ;
   u16 pa0b1 ;
   u16 pa0b2 ;
   u16 pa1b0 ;
   u16 pa1b1 ;
   u16 pa1b2 ;
   u16 pa1lob0 ;
   u16 pa1lob1 ;
   u16 pa1lob2 ;
   u16 pa1hib0 ;
   u16 pa1hib1 ;
   u16 pa1hib2 ;
   u8 gpio0 ;
   u8 gpio1 ;
   u8 gpio2 ;
   u8 gpio3 ;
   u16 maxpwr_bg ;
   u16 maxpwr_al ;
   u16 maxpwr_a ;
   u16 maxpwr_ah ;
   u8 itssi_a ;
   u8 itssi_bg ;
   u8 tri2g ;
   u8 tri5gl ;
   u8 tri5g ;
   u8 tri5gh ;
   u8 rxpo2g ;
   u8 rxpo5g ;
   u8 rssisav2g ;
   u8 rssismc2g ;
   u8 rssismf2g ;
   u8 bxa2g ;
   u8 rssisav5g ;
   u8 rssismc5g ;
   u8 rssismf5g ;
   u8 bxa5g ;
   u16 cck2gpo ;
   u32 ofdm2gpo ;
   u32 ofdm5glpo ;
   u32 ofdm5gpo ;
   u32 ofdm5ghpo ;
   u16 boardflags_lo ;
   u16 boardflags_hi ;
   u16 boardflags2_lo ;
   u16 boardflags2_hi ;
   struct __anonstruct_antenna_gain_161 antenna_gain ;
};
struct ssb_boardinfo {
   u16 vendor ;
   u16 type ;
   u16 rev ;
};
struct ssb_device;
struct ssb_bus_ops {
   u8 (*read8)(struct ssb_device * , u16 ) ;
   u16 (*read16)(struct ssb_device * , u16 ) ;
   u32 (*read32)(struct ssb_device * , u16 ) ;
   void (*write8)(struct ssb_device * , u16 , u8 ) ;
   void (*write16)(struct ssb_device * , u16 , u16 ) ;
   void (*write32)(struct ssb_device * , u16 , u32 ) ;
   void (*block_read)(struct ssb_device * , void * , size_t , u16 , u8 ) ;
   void (*block_write)(struct ssb_device * , void const * , size_t , u16 , u8 ) ;
};
struct ssb_device {
   struct ssb_bus_ops const *ops ;
   struct device *dev ;
   struct ssb_bus *bus ;
   struct ssb_device_id id ;
   u8 core_index ;
   unsigned int irq ;
   void *drvdata ;
   void *devtypedata ;
};
struct ssb_driver {
   char const *name ;
   struct ssb_device_id const *id_table ;
   int (*probe)(struct ssb_device * , struct ssb_device_id const * ) ;
   void (*remove)(struct ssb_device * ) ;
   int (*suspend)(struct ssb_device * , pm_message_t ) ;
   int (*resume)(struct ssb_device * ) ;
   void (*shutdown)(struct ssb_device * ) ;
   struct device_driver drv ;
};
enum ssb_bustype {
    SSB_BUSTYPE_SSB = 0,
    SSB_BUSTYPE_PCI = 1,
    SSB_BUSTYPE_PCMCIA = 2,
    SSB_BUSTYPE_SDIO = 3
} ;
struct ssb_chipcommon_pmu {
   u8 rev ;
   u32 crystalfreq ;
};
struct ssb_chipcommon {
   struct ssb_device *dev ;
   u32 capabilities ;
   u32 status ;
   u16 fast_pwrup_delay ;
   struct ssb_chipcommon_pmu pmu ;
};
struct ssb_mipscore {
};
struct ssb_extif {
};
struct ssb_pcicore {
   struct ssb_device *dev ;
   unsigned char setup_done : 1 ;
   unsigned char hostmode : 1 ;
   unsigned char cardbusmode : 1 ;
};
union __anonunion_ldv_29528_164 {
   u8 mapped_pcmcia_seg ;
   u32 sdio_sbaddr ;
};
struct sdio_func;
union __anonunion_ldv_29536_165 {
   struct pci_dev *host_pci ;
   struct pcmcia_device *host_pcmcia ;
   struct sdio_func *host_sdio ;
};
struct ssb_bus {
   void *mmio ;
   struct ssb_bus_ops const *ops ;
   struct ssb_device *mapped_device ;
   union __anonunion_ldv_29528_164 ldv_29528 ;
   spinlock_t bar_lock ;
   enum ssb_bustype bustype ;
   union __anonunion_ldv_29536_165 ldv_29536 ;
   unsigned int quirks ;
   struct mutex sprom_mutex ;
   u16 chip_id ;
   u16 chip_rev ;
   u16 sprom_offset ;
   u16 sprom_size ;
   u8 chip_package ;
   struct ssb_device devices[16U] ;
   u8 nr_devices ;
   unsigned int busnumber ;
   struct ssb_chipcommon chipco ;
   struct ssb_pcicore pcicore ;
   struct ssb_mipscore mipscore ;
   struct ssb_extif extif ;
   struct ssb_boardinfo boardinfo ;
   struct ssb_sprom sprom ;
   bool has_cardbus_slot ;
   struct list_head list ;
};
struct dma_desc {
   __le32 ctrl ;
   __le32 addr ;
};
struct rx_header {
   __le16 len ;
   __le16 flags ;
   __le16 pad[12U] ;
};
struct ring_info {
   struct sk_buff *skb ;
   dma_addr_t mapping ;
};
struct b44_hw_stats {
   u32 tx_good_octets ;
   u32 tx_good_pkts ;
   u32 tx_octets ;
   u32 tx_pkts ;
   u32 tx_broadcast_pkts ;
   u32 tx_multicast_pkts ;
   u32 tx_len_64 ;
   u32 tx_len_65_to_127 ;
   u32 tx_len_128_to_255 ;
   u32 tx_len_256_to_511 ;
   u32 tx_len_512_to_1023 ;
   u32 tx_len_1024_to_max ;
   u32 tx_jabber_pkts ;
   u32 tx_oversize_pkts ;
   u32 tx_fragment_pkts ;
   u32 tx_underruns ;
   u32 tx_total_cols ;
   u32 tx_single_cols ;
   u32 tx_multiple_cols ;
   u32 tx_excessive_cols ;
   u32 tx_late_cols ;
   u32 tx_defered ;
   u32 tx_carrier_lost ;
   u32 tx_pause_pkts ;
   u32 rx_good_octets ;
   u32 rx_good_pkts ;
   u32 rx_octets ;
   u32 rx_pkts ;
   u32 rx_broadcast_pkts ;
   u32 rx_multicast_pkts ;
   u32 rx_len_64 ;
   u32 rx_len_65_to_127 ;
   u32 rx_len_128_to_255 ;
   u32 rx_len_256_to_511 ;
   u32 rx_len_512_to_1023 ;
   u32 rx_len_1024_to_max ;
   u32 rx_jabber_pkts ;
   u32 rx_oversize_pkts ;
   u32 rx_fragment_pkts ;
   u32 rx_missed_pkts ;
   u32 rx_crc_align_errs ;
   u32 rx_undersize ;
   u32 rx_crc_errs ;
   u32 rx_align_errs ;
   u32 rx_symbol_errs ;
   u32 rx_pause_pkts ;
   u32 rx_nonpause_pkts ;
};
struct b44 {
   spinlock_t lock ;
   u32 imask ;
   u32 istat ;
   struct dma_desc *rx_ring ;
   struct dma_desc *tx_ring ;
   u32 tx_prod ;
   u32 tx_cons ;
   u32 rx_prod ;
   u32 rx_cons ;
   struct ring_info *rx_buffers ;
   struct ring_info *tx_buffers ;
   struct napi_struct napi ;
   u32 dma_offset ;
   u32 flags ;
   u32 msg_enable ;
   struct timer_list timer ;
   struct b44_hw_stats hw_stats ;
   struct ssb_device *sdev ;
   struct net_device *dev ;
   dma_addr_t rx_ring_dma ;
   dma_addr_t tx_ring_dma ;
   u32 rx_pending ;
   u32 tx_pending ;
   u8 phy_addr ;
   u8 force_copybreak ;
   struct mii_if_info mii_if ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_turn_off_carrier_detection(void) ;
int ldv_register_netdev(void) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )(*((unsigned long *)addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int printk(char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static int get_order(unsigned long size )
{
  int order ;
  {
  size = (size - 1UL) >> 11;
  order = -1;
  ldv_4354:
  size = size >> 1;
  order = order + 1;
  if (size != 0UL) {
    goto ldv_4354;
  } else {
  }
  return (order);
}
}
extern struct cpuinfo_x86 boot_cpu_data ;
extern void lockdep_rcu_dereference(char const * , int const ) ;
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
  return (& lock->ldv_5754.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5754.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5754.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5754.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5754.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5754.rlock, flags);
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , char const * , struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern unsigned long round_jiffies(unsigned long ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_sched_held(void)
{
  {
  return (1);
}
}
__inline static void rcu_read_lock_sched_notrace(void)
{
  {
  return;
}
}
extern struct module __this_module ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern int net_ratelimit(void) ;
extern void kfree(void const * ) ;
extern struct tracepoint __tracepoint_kmalloc ;
__inline static void trace_kmalloc(unsigned long call_site , void const *ptr , size_t bytes_req ,
                                   size_t bytes_alloc , gfp_t gfp_flags )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct tracepoint_func *_________p1 ;
  long tmp___1 ;
  {
  tmp___1 = ldv__builtin_expect(__tracepoint_kmalloc.state != 0, 0L);
  if (tmp___1 != 0L) {
    rcu_read_lock_sched_notrace();
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0) {
        __warned = 1;
        lockdep_rcu_dereference("include/trace/events/kmem.h", 87);
      } else {
      }
    } else {
    }
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_kmalloc.funcs));
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_13401:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , unsigned long , void const * , size_t , size_t ,
                   gfp_t ))it_func))(__data, call_site, ptr, bytes_req, bytes_alloc,
                                      gfp_flags);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_13401;
      } else {
      }
    } else {
    }
    rcu_read_lock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void kmemleak_alloc(void const *ptr , size_t size , int min_count ,
                                    gfp_t gfp )
{
  {
  return;
}
}
extern struct kmem_cache kmalloc_caches[28U] ;
__inline static int kmalloc_index(size_t size )
{
  {
  if (size == 0UL) {
    return (0);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size > 64UL && size <= 96UL) {
    return (1);
  } else {
  }
  if (size > 128UL && size <= 192UL) {
    return (2);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size <= 16UL) {
    return (4);
  } else {
  }
  if (size <= 32UL) {
    return (5);
  } else {
  }
  if (size <= 64UL) {
    return (6);
  } else {
  }
  if (size <= 128UL) {
    return (7);
  } else {
  }
  if (size <= 256UL) {
    return (8);
  } else {
  }
  if (size <= 512UL) {
    return (9);
  } else {
  }
  if (size <= 1024UL) {
    return (10);
  } else {
  }
  if (size <= 2048UL) {
    return (11);
  } else {
  }
  if (size <= 4096UL) {
    return (12);
  } else {
  }
  if (size <= 8192UL) {
    return (13);
  } else {
  }
  if (size <= 16384UL) {
    return (14);
  } else {
  }
  if (size <= 32768UL) {
    return (15);
  } else {
  }
  if (size <= 65536UL) {
    return (16);
  } else {
  }
  if (size <= 131072UL) {
    return (17);
  } else {
  }
  if (size <= 262144UL) {
    return (18);
  } else {
  }
  if (size <= 524288UL) {
    return (19);
  } else {
  }
  if (size <= 1048576UL) {
    return (20);
  } else {
  }
  if (size <= 2097152UL) {
    return (21);
  } else {
  }
  return (-1);
}
}
__inline static struct kmem_cache *kmalloc_slab(size_t size )
{
  int index ;
  int tmp ;
  {
  tmp = kmalloc_index(size);
  index = tmp;
  if (index == 0) {
    return (0);
  } else {
  }
  return ((struct kmem_cache *)(& kmalloc_caches) + (unsigned long )index);
}
}
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
extern void *kmem_cache_alloc_notrace(struct kmem_cache * , gfp_t ) ;
__inline static void *kmalloc_large(size_t size , gfp_t flags )
{
  unsigned int order ;
  int tmp ;
  void *ret ;
  unsigned long tmp___0 ;
  {
  tmp = get_order(size);
  order = (unsigned int )tmp;
  tmp___0 = __get_free_pages(flags | 16384U, order);
  ret = (void *)tmp___0;
  kmemleak_alloc((void const *)ret, size, 1, flags);
  trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, 4096UL << (int )order,
                flags);
  return (ret);
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *ret ;
  void *tmp ;
  struct kmem_cache *s ;
  struct kmem_cache *tmp___0 ;
  void *tmp___1 ;
  {
  if (0) {
    if (size > 8192UL) {
      tmp = kmalloc_large(size, flags);
      return (tmp);
    } else {
    }
    if ((flags & 1U) == 0U) {
      tmp___0 = kmalloc_slab(size);
      s = tmp___0;
      if ((unsigned long )s == (unsigned long )((struct kmem_cache *)0)) {
        return (16);
      } else {
      }
      ret = kmem_cache_alloc_notrace(s, flags);
      trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, (size_t )s->size,
                    flags);
      return (ret);
    } else {
    }
  } else {
  }
  tmp___1 = __kmalloc(size, flags);
  return (tmp___1);
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
extern char const *dev_driver_string(struct device const * ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
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
                         "i" (18), "i" (12UL));
    ldv_17861: ;
    goto ldv_17861;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
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
                         "i" (35), "i" (12UL));
    ldv_17870: ;
    goto ldv_17870;
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
                         "i" (102), "i" (12UL));
    ldv_17920: ;
    goto ldv_17920;
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
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
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
                         "i" (114), "i" (12UL));
    ldv_17928: ;
    goto ldv_17928;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_range_for_cpu(struct device *dev , dma_addr_t addr ,
                                                   unsigned long offset , size_t size ,
                                                   enum dma_data_direction dir )
{
  {
  dma_sync_single_for_cpu(dev, addr + (unsigned long long )offset, size, dir);
  return;
}
}
__inline static void dma_sync_single_range_for_device(struct device *dev , dma_addr_t addr ,
                                                      unsigned long offset , size_t size ,
                                                      enum dma_data_direction dir )
{
  {
  dma_sync_single_for_device(dev, addr + (unsigned long long )offset, size, dir);
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
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static int dma_get_cache_alignment(void)
{
  {
  return ((int )boot_cpu_data.x86_clflush_size);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
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
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = memcpy(to, (void const *)skb->data, __len);
  return;
}
}
__inline static void skb_copy_from_linear_data_offset(struct sk_buff const *skb ,
                                                      int const offset , void *to ,
                                                      unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = memcpy(to, (void const *)skb->data + (unsigned long )offset,
                           __len);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static int napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& n->state));
  return (tmp);
}
}
__inline static int napi_schedule_prep(struct napi_struct *n )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp == 0) {
    tmp___0 = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
    if (tmp___0 == 0) {
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
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  set_bit(1U, (unsigned long volatile *)(& n->state));
  goto ldv_25615;
  ldv_25614:
  msleep(1U);
  ldv_25615:
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_25614;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (462), "i" (12UL));
    ldv_25620: ;
    goto ldv_25620;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0, (unsigned long volatile *)(& n->state));
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
  return ((void *)dev + 2432U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void free_netdev(struct net_device * ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
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
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = netpoll_trap();
  if (tmp != 0) {
    netif_tx_start_queue(dev_queue);
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___0 != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
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
  set_bit(0U, (unsigned long volatile *)(& dev_queue->state));
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
__inline static int netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp);
}
}
__inline static int netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
__inline static int netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev->state));
  return (tmp);
}
}
extern void dev_kfree_skb_irq(struct sk_buff * ) ;
extern void dev_kfree_skb_any(struct sk_buff * ) ;
extern int netif_receive_skb(struct sk_buff * ) ;
__inline static int netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
void ldv_netif_carrier_off_1(struct net_device *ldv_func_arg1 ) ;
void ldv_netif_carrier_off_2(struct net_device *ldv_func_arg1 ) ;
void ldv_netif_carrier_off_3(struct net_device *ldv_func_arg1 ) ;
void ldv_netif_carrier_off_5(struct net_device *ldv_func_arg1 ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
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
int ldv_register_netdev_4(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
__inline static char const *netdev_name(struct net_device const *dev )
{
  {
  if ((unsigned int )((unsigned short )dev->reg_state) != 1U) {
    return ("(unregistered net_device)");
  } else {
  }
  return ((char const *)(& dev->name));
}
}
extern int generic_mii_ioctl(struct mii_if_info * , struct mii_ioctl_data * , int ,
                             unsigned int * ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mq(int , unsigned int ) ;
__inline static int is_zero_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )((((((int )((unsigned char )*addr) | (int )((unsigned char )*(addr + 1UL))) | (int )((unsigned char )*(addr + 2UL))) | (int )((unsigned char )*(addr + 3UL))) | (int )((unsigned char )*(addr + 4UL))) | (int )((unsigned char )*(addr + 5UL))) == 0U);
}
}
__inline static int is_multicast_ether_addr(u8 const *addr )
{
  {
  return ((int )*addr & 1);
}
}
__inline static int is_valid_ether_addr(u8 const *addr )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp == 0) {
    tmp___0 = is_zero_ether_addr(addr);
    if (tmp___0 == 0) {
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
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev *dev , int where , u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev *dev , int where , u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             ptr, size, (enum dma_data_direction )direction, 0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                         dma_addr, size, (enum dma_data_direction )direction, 0);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
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
__inline static void ssb_set_drvdata(struct ssb_device *dev , void *data )
{
  {
  dev->drvdata = data;
  return;
}
}
__inline static void *ssb_get_drvdata(struct ssb_device *dev )
{
  {
  return (dev->drvdata);
}
}
extern int __ssb_driver_register(struct ssb_driver * , struct module * ) ;
__inline static int ssb_driver_register(struct ssb_driver *drv )
{
  int tmp ;
  {
  tmp = __ssb_driver_register(drv, & __this_module);
  return (tmp);
}
}
extern void ssb_driver_unregister(struct ssb_driver * ) ;
extern int ssb_pcicore_dev_irqvecs_enable(struct ssb_pcicore * , struct ssb_device * ) ;
extern u32 ssb_clockspeed(struct ssb_bus * ) ;
extern int ssb_device_is_enabled(struct ssb_device * ) ;
extern void ssb_device_enable(struct ssb_device * , u32 ) ;
extern void ssb_device_disable(struct ssb_device * , u32 ) ;
__inline static u32 ssb_read32(struct ssb_device *dev , u16 offset )
{
  u32 tmp ;
  {
  tmp = (*((dev->ops)->read32))(dev, (int )offset);
  return (tmp);
}
}
__inline static void ssb_write32(struct ssb_device *dev , u16 offset , u32 value )
{
  {
  (*((dev->ops)->write32))(dev, (int )offset, value);
  return;
}
}
extern u32 ssb_dma_translation(struct ssb_device * ) ;
extern int ssb_dma_set_mask(struct ssb_device * , u64 ) ;
extern void *ssb_dma_alloc_consistent(struct ssb_device * , size_t , dma_addr_t * ,
                                      gfp_t ) ;
extern void ssb_dma_free_consistent(struct ssb_device * , size_t , void * , dma_addr_t ,
                                    gfp_t ) ;
__inline static void __ssb_dma_not_implemented(struct ssb_device *dev )
{
  {
  return;
}
}
__inline static int ssb_dma_mapping_error(struct ssb_device *dev , dma_addr_t addr )
{
  int tmp ;
  int tmp___0 ;
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  tmp = pci_dma_mapping_error((dev->bus)->ldv_29536.host_pci, addr);
  return (tmp);
  case 0U:
  tmp___0 = dma_mapping_error(dev->dev, addr);
  return (tmp___0);
  default: ;
  goto ldv_29666;
  }
  ldv_29666:
  __ssb_dma_not_implemented(dev);
  return (-38);
}
}
__inline static dma_addr_t ssb_dma_map_single(struct ssb_device *dev , void *p , size_t size ,
                                              enum dma_data_direction dir )
{
  dma_addr_t tmp ;
  dma_addr_t tmp___0 ;
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  tmp = pci_map_single((dev->bus)->ldv_29536.host_pci, p, size, (int )dir);
  return (tmp);
  case 0U:
  tmp___0 = dma_map_single_attrs(dev->dev, p, size, dir, 0);
  return (tmp___0);
  default: ;
  goto ldv_29676;
  }
  ldv_29676:
  __ssb_dma_not_implemented(dev);
  return (0ULL);
}
}
__inline static void ssb_dma_unmap_single(struct ssb_device *dev , dma_addr_t dma_addr ,
                                          size_t size , enum dma_data_direction dir )
{
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  pci_unmap_single((dev->bus)->ldv_29536.host_pci, dma_addr, size, (int )dir);
  return;
  case 0U:
  dma_unmap_single_attrs(dev->dev, dma_addr, size, dir, 0);
  return;
  default: ;
  goto ldv_29686;
  }
  ldv_29686:
  __ssb_dma_not_implemented(dev);
  return;
}
}
__inline static void ssb_dma_sync_single_for_cpu(struct ssb_device *dev , dma_addr_t dma_addr ,
                                                 size_t size , enum dma_data_direction dir )
{
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  pci_dma_sync_single_for_cpu((dev->bus)->ldv_29536.host_pci, dma_addr, size, (int )dir);
  return;
  case 0U:
  dma_sync_single_for_cpu(dev->dev, dma_addr, size, dir);
  return;
  default: ;
  goto ldv_29696;
  }
  ldv_29696:
  __ssb_dma_not_implemented(dev);
  return;
}
}
__inline static void ssb_dma_sync_single_for_device(struct ssb_device *dev , dma_addr_t dma_addr ,
                                                    size_t size , enum dma_data_direction dir )
{
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  pci_dma_sync_single_for_device((dev->bus)->ldv_29536.host_pci, dma_addr, size, (int )dir);
  return;
  case 0U:
  dma_sync_single_for_device(dev->dev, dma_addr, size, dir);
  return;
  default: ;
  goto ldv_29706;
  }
  ldv_29706:
  __ssb_dma_not_implemented(dev);
  return;
}
}
__inline static void ssb_dma_sync_single_range_for_cpu(struct ssb_device *dev , dma_addr_t dma_addr ,
                                                       unsigned long offset , size_t size ,
                                                       enum dma_data_direction dir )
{
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  pci_dma_sync_single_for_cpu((dev->bus)->ldv_29536.host_pci, dma_addr, offset + size,
                              (int )dir);
  return;
  case 0U:
  dma_sync_single_range_for_cpu(dev->dev, dma_addr, offset, size, dir);
  return;
  default: ;
  goto ldv_29717;
  }
  ldv_29717:
  __ssb_dma_not_implemented(dev);
  return;
}
}
__inline static void ssb_dma_sync_single_range_for_device(struct ssb_device *dev ,
                                                          dma_addr_t dma_addr , unsigned long offset ,
                                                          size_t size , enum dma_data_direction dir )
{
  {
  switch ((unsigned int )(dev->bus)->bustype) {
  case 1U:
  pci_dma_sync_single_for_device((dev->bus)->ldv_29536.host_pci, dma_addr, offset + size,
                                 (int )dir);
  return;
  case 0U:
  dma_sync_single_range_for_device(dev->dev, dma_addr, offset, size, dir);
  return;
  default: ;
  goto ldv_29728;
  }
  ldv_29728:
  __ssb_dma_not_implemented(dev);
  return;
}
}
extern int ssb_pcihost_register(struct pci_driver * ) ;
__inline static void ssb_pcihost_unregister(struct pci_driver *driver )
{
  {
  pci_unregister_driver(driver);
  return;
}
}
__inline static void ssb_pcihost_set_power_state(struct ssb_device *sdev , pci_power_t state )
{
  {
  if ((unsigned int )(sdev->bus)->bustype == 1U) {
    pci_set_power_state((sdev->bus)->ldv_29536.host_pci, state);
  } else {
  }
  return;
}
}
extern int ssb_bus_may_powerdown(struct ssb_bus * ) ;
extern int ssb_bus_powerup(struct ssb_bus * , bool ) ;
static char version[12U] =
  { 'b', '4', '4', '.',
        'c', ':', 'v', '2',
        '.', '0', '\n', '\000'};
static int b44_debug = -1;
static struct pci_device_id const b44_pci_tbl[4U] = { {5348U, 17409U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 17410U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5900U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver b44_pci_driver =
     {{0, 0}, (char *)"b44", (struct pci_device_id const *)(& b44_pci_tbl), 0, 0,
    0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{0U}, 0U,
                                                                          0U, 0, {0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                       {0, 0}}};
static struct ssb_device_id const b44_ssb_tbl[2U] = { {16963U, 2054U, 255U},
        {0U, (unsigned short)0, (unsigned char)0}};
struct ssb_device_id const __mod_ssb_device_table ;
static void b44_halt(struct b44 *bp ) ;
static void b44_init_rings(struct b44 *bp ) ;
static void b44_init_hw(struct b44 *bp , int reset_kind ) ;
static int dma_desc_align_mask ;
static int dma_desc_sync_size ;
static int instance ;
static char const b44_gstrings[47U][32U] =
  { { 't', 'x', '_', 'g',
            'o', 'o', 'd', '_',
            'o', 'c', 't', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', 'g',
            'o', 'o', 'd', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 't', 'x', '_', 'o',
            'c', 't', 'e', 't',
            's', '\000'},
   { 't', 'x', '_', 'p',
            'k', 't', 's', '\000'},
   { 't', 'x', '_', 'b',
            'r', 'o', 'a', 'd',
            'c', 'a', 's', 't',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            'c', 'a', 's', 't',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '6',
            '4', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '6',
            '5', '_', 't', 'o',
            '_', '1', '2', '7',
            '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '1',
            '2', '8', '_', 't',
            'o', '_', '2', '5',
            '5', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '2',
            '5', '6', '_', 't',
            'o', '_', '5', '1',
            '1', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '5',
            '1', '2', '_', 't',
            'o', '_', '1', '0',
            '2', '3', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', '_', '1',
            '0', '2', '4', '_',
            't', 'o', '_', 'm',
            'a', 'x', '\000'},
   { 't', 'x', '_', 'j',
            'a', 'b', 'b', 'e',
            'r', '_', 'p', 'k',
            't', 's', '\000'},
   { 't', 'x', '_', 'o',
            'v', 'e', 'r', 's',
            'i', 'z', 'e', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 't', 'x', '_', 'f',
            'r', 'a', 'g', 'm',
            'e', 'n', 't', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 't', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            'r', 'u', 'n', 's',
            '\000'},
   { 't', 'x', '_', 't',
            'o', 't', 'a', 'l',
            '_', 'c', 'o', 'l',
            's', '\000'},
   { 't', 'x', '_', 's',
            'i', 'n', 'g', 'l',
            'e', '_', 'c', 'o',
            'l', 's', '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            'p', 'l', 'e', '_',
            'c', 'o', 'l', 's',
            '\000'},
   { 't', 'x', '_', 'e',
            'x', 'c', 'e', 's',
            's', 'i', 'v', 'e',
            '_', 'c', 'o', 'l',
            's', '\000'},
   { 't', 'x', '_', 'l',
            'a', 't', 'e', '_',
            'c', 'o', 'l', 's',
            '\000'},
   { 't', 'x', '_', 'd',
            'e', 'f', 'e', 'r',
            'e', 'd', '\000'},
   { 't', 'x', '_', 'c',
            'a', 'r', 'r', 'i',
            'e', 'r', '_', 'l',
            'o', 's', 't', '\000'},
   { 't', 'x', '_', 'p',
            'a', 'u', 's', 'e',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 'r', 'x', '_', 'g',
            'o', 'o', 'd', '_',
            'o', 'c', 't', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'g',
            'o', 'o', 'd', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'o',
            'c', 't', 'e', 't',
            's', '\000'},
   { 'r', 'x', '_', 'p',
            'k', 't', 's', '\000'},
   { 'r', 'x', '_', 'b',
            'r', 'o', 'a', 'd',
            'c', 'a', 's', 't',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 'r', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            'c', 'a', 's', 't',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '6',
            '4', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '6',
            '5', '_', 't', 'o',
            '_', '1', '2', '7',
            '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '1',
            '2', '8', '_', 't',
            'o', '_', '2', '5',
            '5', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '2',
            '5', '6', '_', 't',
            'o', '_', '5', '1',
            '1', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '5',
            '1', '2', '_', 't',
            'o', '_', '1', '0',
            '2', '3', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', '_', '1',
            '0', '2', '4', '_',
            't', 'o', '_', 'm',
            'a', 'x', '\000'},
   { 'r', 'x', '_', 'j',
            'a', 'b', 'b', 'e',
            'r', '_', 'p', 'k',
            't', 's', '\000'},
   { 'r', 'x', '_', 'o',
            'v', 'e', 'r', 's',
            'i', 'z', 'e', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'f',
            'r', 'a', 'g', 'm',
            'e', 'n', 't', '_',
            'p', 'k', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'm',
            'i', 's', 's', 'e',
            'd', '_', 'p', 'k',
            't', 's', '\000'},
   { 'r', 'x', '_', 'c',
            'r', 'c', '_', 'a',
            'l', 'i', 'g', 'n',
            '_', 'e', 'r', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            's', 'i', 'z', 'e',
            '\000'},
   { 'r', 'x', '_', 'c',
            'r', 'c', '_', 'e',
            'r', 'r', 's', '\000'},
   { 'r', 'x', '_', 'a',
            'l', 'i', 'g', 'n',
            '_', 'e', 'r', 'r',
            's', '\000'},
   { 'r', 'x', '_', 's',
            'y', 'm', 'b', 'o',
            'l', '_', 'e', 'r',
            'r', 's', '\000'},
   { 'r', 'x', '_', 'p',
            'a', 'u', 's', 'e',
            '_', 'p', 'k', 't',
            's', '\000'},
   { 'r', 'x', '_', 'n',
            'o', 'n', 'p', 'a',
            'u', 's', 'e', '_',
            'p', 'k', 't', 's',
            '\000'}};
__inline static void b44_sync_dma_desc_for_device(struct ssb_device *sdev , dma_addr_t dma_base ,
                                                  unsigned long offset , enum dma_data_direction dir )
{
  {
  ssb_dma_sync_single_range_for_device(sdev, dma_base, (unsigned long )dma_desc_align_mask & offset,
                                       (size_t )dma_desc_sync_size, dir);
  return;
}
}
__inline static void b44_sync_dma_desc_for_cpu(struct ssb_device *sdev , dma_addr_t dma_base ,
                                               unsigned long offset , enum dma_data_direction dir )
{
  {
  ssb_dma_sync_single_range_for_cpu(sdev, dma_base, (unsigned long )dma_desc_align_mask & offset,
                                    (size_t )dma_desc_sync_size, dir);
  return;
}
}
__inline static unsigned long br32(struct b44 const *bp , unsigned long reg )
{
  u32 tmp ;
  {
  tmp = ssb_read32(bp->sdev, (int )((u16 )reg));
  return ((unsigned long )tmp);
}
}
__inline static void bw32(struct b44 const *bp , unsigned long reg , unsigned long val )
{
  {
  ssb_write32(bp->sdev, (int )((u16 )reg), (u32 )val);
  return;
}
}
static int b44_wait_bit(struct b44 *bp , unsigned long reg , u32 bit , unsigned long timeout ,
                        int const clear )
{
  unsigned long i ;
  u32 val ;
  unsigned long tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  {
  i = 0UL;
  goto ldv_29898;
  ldv_29897:
  tmp = br32((struct b44 const *)bp, reg);
  val = (u32 )tmp;
  if ((int )clear != 0 && (val & bit) == 0U) {
    goto ldv_29896;
  } else {
  }
  if ((int )clear == 0 && (val & bit) != 0U) {
    goto ldv_29896;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1UL;
  ldv_29898: ;
  if (i < timeout) {
    goto ldv_29897;
  } else {
  }
  ldv_29896: ;
  if (i == timeout) {
    tmp___3 = net_ratelimit();
    if (tmp___3 != 0) {
      tmp___0 = netdev_name((struct net_device const *)bp->dev);
      tmp___1 = dev_name((struct device const *)(bp->dev)->dev.parent);
      tmp___2 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
      printk("<3>%s %s: %s: BUG!  Timeout waiting for bit %08x of register %lx to %s\n",
             tmp___2, tmp___1, tmp___0, bit, reg, (int )clear != 0 ? (char *)"clear" : (char *)"set");
    } else {
    }
    return (-19);
  } else {
  }
  return (0);
}
}
__inline static void __b44_cam_write(struct b44 *bp , unsigned char *data , int index )
{
  u32 val ;
  {
  val = (unsigned int )*(data + 2UL) << 24;
  val = ((unsigned int )*(data + 3UL) << 16) | val;
  val = ((unsigned int )*(data + 4UL) << 8) | val;
  val = (u32 )*(data + 5UL) | val;
  bw32((struct b44 const *)bp, 1056UL, (unsigned long )val);
  val = (((unsigned int )*data << 8) | (unsigned int )*(data + 1UL)) | 65536U;
  bw32((struct b44 const *)bp, 1060UL, (unsigned long )val);
  bw32((struct b44 const *)bp, 1064UL, (unsigned long )((index << 16) | 8));
  b44_wait_bit(bp, 1064UL, 2147483648U, 100UL, 1);
  return;
}
}
__inline static void __b44_disable_ints(struct b44 *bp )
{
  {
  bw32((struct b44 const *)bp, 36UL, 0UL);
  return;
}
}
static void b44_disable_ints(struct b44 *bp )
{
  {
  __b44_disable_ints(bp);
  br32((struct b44 const *)bp, 36UL);
  return;
}
}
static void b44_enable_ints(struct b44 *bp )
{
  {
  bw32((struct b44 const *)bp, 36UL, (unsigned long )bp->imask);
  return;
}
}
static int __b44_readphy(struct b44 *bp , int phy_addr , int reg , u32 *val )
{
  int err ;
  unsigned long tmp ;
  {
  bw32((struct b44 const *)bp, 1052UL, 1UL);
  bw32((struct b44 const *)bp, 1044UL, (unsigned long )((((phy_addr << 23) | 1610612736) | (reg << 18)) | 131072));
  err = b44_wait_bit(bp, 1052UL, 1U, 100UL, 0);
  tmp = br32((struct b44 const *)bp, 1044UL);
  *val = (u32 )tmp & 65535U;
  return (err);
}
}
static int __b44_writephy(struct b44 *bp , int phy_addr , int reg , u32 val )
{
  int tmp ;
  {
  bw32((struct b44 const *)bp, 1052UL, 1UL);
  bw32((struct b44 const *)bp, 1044UL, (unsigned long )(((u32 )(((phy_addr << 23) | 1342177280) | (reg << 18)) | (val & 65535U)) | 131072U));
  tmp = b44_wait_bit(bp, 1052UL, 1U, 100UL, 0);
  return (tmp);
}
}
__inline static int b44_readphy(struct b44 *bp , int reg , u32 *val )
{
  int tmp ;
  {
  if ((unsigned int )bp->phy_addr == 30U) {
    return (0);
  } else {
  }
  tmp = __b44_readphy(bp, (int )bp->phy_addr, reg, val);
  return (tmp);
}
}
__inline static int b44_writephy(struct b44 *bp , int reg , u32 val )
{
  int tmp ;
  {
  if ((unsigned int )bp->phy_addr == 30U) {
    return (0);
  } else {
  }
  tmp = __b44_writephy(bp, (int )bp->phy_addr, reg, val);
  return (tmp);
}
}
static int b44_mii_read(struct net_device *dev , int phy_id , int location )
{
  u32 val ;
  struct b44 *bp ;
  void *tmp ;
  int rc ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  tmp___0 = __b44_readphy(bp, phy_id, location, & val);
  rc = tmp___0;
  if (rc != 0) {
    return (-1);
  } else {
  }
  return ((int )val);
}
}
static void b44_mii_write(struct net_device *dev , int phy_id , int location , int val )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  __b44_writephy(bp, phy_id, location, (u32 )val);
  return;
}
}
static int b44_phy_reset(struct b44 *bp )
{
  u32 val ;
  int err ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  if ((unsigned int )bp->phy_addr == 30U) {
    return (0);
  } else {
  }
  err = b44_writephy(bp, 0, 32768U);
  if (err != 0) {
    return (err);
  } else {
  }
  __const_udelay(429500UL);
  err = b44_readphy(bp, 0, & val);
  if (err == 0) {
    if ((val & 32768U) != 0U) {
      tmp = netdev_name((struct net_device const *)bp->dev);
      tmp___0 = dev_name((struct device const *)(bp->dev)->dev.parent);
      tmp___1 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
      printk("<3>%s %s: %s: PHY Reset would not complete\n", tmp___1, tmp___0, tmp);
      err = -19;
    } else {
    }
  } else {
  }
  return (err);
}
}
static void __b44_set_flow_ctrl(struct b44 *bp , u32 pause_flags )
{
  u32 val ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  bp->flags = bp->flags & 4294180863U;
  bp->flags = bp->flags | pause_flags;
  tmp = br32((struct b44 const *)bp, 1024UL);
  val = (u32 )tmp;
  if ((pause_flags & 524288U) != 0U) {
    val = val | 32U;
  } else {
    val = val & 4294967263U;
  }
  bw32((struct b44 const *)bp, 1024UL, (unsigned long )val);
  tmp___0 = br32((struct b44 const *)bp, 172UL);
  val = (u32 )tmp___0;
  if ((pause_flags & 262144U) != 0U) {
    val = val | 32960U;
  } else {
    val = val & 4294934527U;
  }
  bw32((struct b44 const *)bp, 172UL, (unsigned long )val);
  return;
}
}
static void b44_set_flow_ctrl(struct b44 *bp , u32 local , u32 remote )
{
  u32 pause_enab ;
  {
  pause_enab = 0U;
  if ((local & 1024U) != 0U && (local & 2048U) != 0U) {
    if ((remote & 2048U) != 0U && (remote & 1024U) == 0U) {
      pause_enab = pause_enab | 524288U;
    } else {
    }
  } else {
  }
  __b44_set_flow_ctrl(bp, pause_enab);
  return;
}
}
__inline static void b44_wap54g10_workaround(struct b44 *bp )
{
  {
  return;
}
}
static int b44_setup_phy(struct b44 *bp )
{
  u32 val ;
  int err ;
  u32 adv ;
  u32 bmcr ;
  {
  b44_wap54g10_workaround(bp);
  if ((unsigned int )bp->phy_addr == 30U) {
    return (0);
  } else {
  }
  err = b44_readphy(bp, 26, & val);
  if (err != 0) {
    goto out;
  } else {
  }
  err = b44_writephy(bp, 26, val & 32767U);
  if (err != 0) {
    goto out;
  } else {
  }
  err = b44_readphy(bp, 27, & val);
  if (err != 0) {
    goto out;
  } else {
  }
  err = b44_writephy(bp, 27, val | 64U);
  if (err != 0) {
    goto out;
  } else {
  }
  if ((bp->flags & 1048576U) == 0U) {
    adv = 1U;
    if ((bp->flags & 16777216U) != 0U) {
      adv = adv | 32U;
    } else {
    }
    if ((bp->flags & 33554432U) != 0U) {
      adv = adv | 64U;
    } else {
    }
    if ((bp->flags & 67108864U) != 0U) {
      adv = adv | 128U;
    } else {
    }
    if ((bp->flags & 134217728U) != 0U) {
      adv = adv | 256U;
    } else {
    }
    if ((bp->flags & 32768U) != 0U) {
      adv = adv | 3072U;
    } else {
    }
    err = b44_writephy(bp, 4, adv);
    if (err != 0) {
      goto out;
    } else {
    }
    err = b44_writephy(bp, 0, 4608U);
    if (err != 0) {
      goto out;
    } else {
    }
  } else {
    err = b44_readphy(bp, 0, & bmcr);
    if (err != 0) {
      goto out;
    } else {
    }
    bmcr = bmcr & 4294954751U;
    if ((bp->flags & 131072U) != 0U) {
      bmcr = bmcr | 8192U;
    } else {
    }
    if ((bp->flags & 65536U) != 0U) {
      bmcr = bmcr | 256U;
    } else {
    }
    err = b44_writephy(bp, 0, bmcr);
    if (err != 0) {
      goto out;
    } else {
    }
    b44_set_flow_ctrl(bp, 0U, 0U);
  }
  out: ;
  return (err);
}
}
static void b44_stats_update(struct b44 *bp )
{
  unsigned long reg ;
  u32 *val ;
  u32 *tmp ;
  unsigned long tmp___0 ;
  u32 *tmp___1 ;
  unsigned long tmp___2 ;
  {
  val = & bp->hw_stats.tx_good_octets;
  reg = 1280UL;
  goto ldv_29991;
  ldv_29990:
  tmp = val;
  val = val + 1;
  tmp___0 = br32((struct b44 const *)bp, reg);
  *tmp = *tmp + (u32 )tmp___0;
  reg = reg + 4UL;
  ldv_29991: ;
  if (reg <= 1372UL) {
    goto ldv_29990;
  } else {
  }
  reg = reg + 32UL;
  reg = 1408UL;
  goto ldv_29994;
  ldv_29993:
  tmp___1 = val;
  val = val + 1;
  tmp___2 = br32((struct b44 const *)bp, reg);
  *tmp___1 = *tmp___1 + (u32 )tmp___2;
  reg = reg + 4UL;
  ldv_29994: ;
  if (reg <= 1496UL) {
    goto ldv_29993;
  } else {
  }
  return;
}
}
static void b44_link_report(struct b44 *bp )
{
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  int tmp___8 ;
  {
  tmp___8 = netif_carrier_ok((struct net_device const *)bp->dev);
  if (tmp___8 == 0) {
    tmp = netdev_name((struct net_device const *)bp->dev);
    tmp___0 = dev_name((struct device const *)(bp->dev)->dev.parent);
    tmp___1 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
    printk("<6>%s %s: %s: Link is down\n", tmp___1, tmp___0, tmp);
  } else {
    tmp___2 = netdev_name((struct net_device const *)bp->dev);
    tmp___3 = dev_name((struct device const *)(bp->dev)->dev.parent);
    tmp___4 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
    printk("<6>%s %s: %s: Link is up at %d Mbps, %s duplex\n", tmp___4, tmp___3, tmp___2,
           (bp->flags & 131072U) != 0U ? 100 : 10, (bp->flags & 65536U) != 0U ? (char *)"full" : (char *)"half");
    tmp___5 = netdev_name((struct net_device const *)bp->dev);
    tmp___6 = dev_name((struct device const *)(bp->dev)->dev.parent);
    tmp___7 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
    printk("<6>%s %s: %s: Flow control is %s for TX and %s for RX\n", tmp___7, tmp___6,
           tmp___5, (bp->flags & 262144U) != 0U ? (char *)"on" : (char *)"off", (bp->flags & 524288U) != 0U ? (char *)"on" : (char *)"off");
  }
  return;
}
}
static void b44_check_phy(struct b44 *bp )
{
  u32 bmsr ;
  u32 aux ;
  u32 val ;
  unsigned long tmp ;
  int tmp___0 ;
  u32 val___0 ;
  unsigned long tmp___1 ;
  u32 local_adv ;
  u32 remote_adv ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  char const *tmp___8 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  char const *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  if ((unsigned int )bp->phy_addr == 30U) {
    bp->flags = bp->flags | 131072U;
    bp->flags = bp->flags | 65536U;
    tmp___0 = netif_carrier_ok((struct net_device const *)bp->dev);
    if (tmp___0 == 0) {
      tmp = br32((struct b44 const *)bp, 1072UL);
      val = (u32 )tmp;
      val = val | 1U;
      bw32((struct b44 const *)bp, 1072UL, (unsigned long )val);
      netif_carrier_on(bp->dev);
      b44_link_report(bp);
    } else {
    }
    return;
  } else {
  }
  tmp___12 = b44_readphy(bp, 1, & bmsr);
  if (tmp___12 == 0) {
    tmp___13 = b44_readphy(bp, 24, & aux);
    if (tmp___13 == 0) {
      if (bmsr != 65535U) {
        if ((aux & 2U) != 0U) {
          bp->flags = bp->flags | 131072U;
        } else {
          bp->flags = bp->flags & 4294836223U;
        }
        if ((int )aux & 1) {
          bp->flags = bp->flags | 65536U;
        } else {
          bp->flags = bp->flags & 4294901759U;
        }
        tmp___5 = netif_carrier_ok((struct net_device const *)bp->dev);
        if (tmp___5 == 0 && (bmsr & 4U) != 0U) {
          tmp___1 = br32((struct b44 const *)bp, 1072UL);
          val___0 = (u32 )tmp___1;
          if ((bp->flags & 65536U) != 0U) {
            val___0 = val___0 | 1U;
          } else {
            val___0 = val___0 & 4294967294U;
          }
          bw32((struct b44 const *)bp, 1072UL, (unsigned long )val___0);
          if ((bp->flags & 1048576U) == 0U) {
            tmp___2 = b44_readphy(bp, 4, & local_adv);
            if (tmp___2 == 0) {
              tmp___3 = b44_readphy(bp, 5, & remote_adv);
              if (tmp___3 == 0) {
                b44_set_flow_ctrl(bp, local_adv, remote_adv);
              } else {
              }
            } else {
            }
          } else {
          }
          netif_carrier_on(bp->dev);
          b44_link_report(bp);
        } else {
          tmp___4 = netif_carrier_ok((struct net_device const *)bp->dev);
          if (tmp___4 != 0 && (bmsr & 4U) == 0U) {
            ldv_netif_carrier_off_1(bp->dev);
            b44_link_report(bp);
          } else {
          }
        }
        if ((bmsr & 16U) != 0U) {
          tmp___6 = netdev_name((struct net_device const *)bp->dev);
          tmp___7 = dev_name((struct device const *)(bp->dev)->dev.parent);
          tmp___8 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
          printk("<4>%s %s: %s: Remote fault detected in PHY\n", tmp___8, tmp___7,
                 tmp___6);
        } else {
        }
        if ((bmsr & 2U) != 0U) {
          tmp___9 = netdev_name((struct net_device const *)bp->dev);
          tmp___10 = dev_name((struct device const *)(bp->dev)->dev.parent);
          tmp___11 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
          printk("<4>%s %s: %s: Jabber detected in PHY\n", tmp___11, tmp___10, tmp___9);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void b44_timer(unsigned long __opaque )
{
  struct b44 *bp ;
  unsigned long tmp ;
  {
  bp = (struct b44 *)__opaque;
  spin_lock_irq(& bp->lock);
  b44_check_phy(bp);
  b44_stats_update(bp);
  spin_unlock_irq(& bp->lock);
  tmp = round_jiffies((unsigned long )jiffies + 250UL);
  mod_timer(& bp->timer, tmp);
  return;
}
}
static void b44_tx(struct b44 *bp )
{
  u32 cur ;
  u32 cons ;
  unsigned long tmp ;
  struct ring_info *rp ;
  struct sk_buff *skb ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = br32((struct b44 const *)bp, 524UL);
  cur = (u32 )tmp & 4095U;
  cur = cur / 8U;
  cons = bp->tx_cons;
  goto ldv_30021;
  ldv_30020:
  rp = bp->tx_buffers + (unsigned long )cons;
  skb = rp->skb;
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-070--linux-stable--dir/work/current--X--drivers/net/b44.ko--X--defaultlinux-stable-073676f-1--X--114_1a--X--cpachecker/linux-stable-073676f-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/114_1a/drivers/net/b44.c.prepared"),
                         "i" (613), "i" (12UL));
    ldv_30019: ;
    goto ldv_30019;
  } else {
  }
  ssb_dma_unmap_single(bp->sdev, rp->mapping, (size_t )skb->len, 1);
  rp->skb = 0;
  dev_kfree_skb_irq(skb);
  cons = (cons + 1U) & 511U;
  ldv_30021: ;
  if (cons != cur) {
    goto ldv_30020;
  } else {
  }
  bp->tx_cons = cons;
  tmp___1 = netif_queue_stopped((struct net_device const *)bp->dev);
  if (tmp___1 != 0 && (bp->tx_cons <= bp->tx_prod ? (bp->tx_cons + bp->tx_pending) - bp->tx_prod > 128U : ((bp->tx_cons - bp->tx_prod) + bp->tx_pending) - 512U > 128U)) {
    netif_wake_queue(bp->dev);
  } else {
  }
  bw32((struct b44 const *)bp, 40UL, 0UL);
  return;
}
}
static int b44_alloc_rx_skb(struct b44 *bp , int src_idx , u32 dest_idx_unmasked )
{
  struct dma_desc *dp ;
  struct ring_info *src_map ;
  struct ring_info *map ;
  struct rx_header *rh ;
  struct sk_buff *skb ;
  dma_addr_t mapping ;
  int dest_idx ;
  u32 ctrl ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  src_map = 0;
  if (src_idx >= 0) {
    src_map = bp->rx_buffers + (unsigned long )src_idx;
  } else {
  }
  dest_idx = (int )dest_idx_unmasked & 511;
  map = bp->rx_buffers + (unsigned long )dest_idx;
  skb = netdev_alloc_skb(bp->dev, 1566U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  mapping = ssb_dma_map_single(bp->sdev, (void *)skb->data, 1566UL, 2);
  tmp___2 = ssb_dma_mapping_error(bp->sdev, mapping);
  if (tmp___2 != 0 || mapping + 1566ULL > 1073741823ULL) {
    tmp = ssb_dma_mapping_error(bp->sdev, mapping);
    if (tmp == 0) {
      ssb_dma_unmap_single(bp->sdev, mapping, 1566UL, 2);
    } else {
    }
    dev_kfree_skb_any(skb);
    skb = __netdev_alloc_skb(bp->dev, 1566U, 33U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      return (-12);
    } else {
    }
    mapping = ssb_dma_map_single(bp->sdev, (void *)skb->data, 1566UL, 2);
    tmp___1 = ssb_dma_mapping_error(bp->sdev, mapping);
    if (tmp___1 != 0 || mapping + 1566ULL > 1073741823ULL) {
      tmp___0 = ssb_dma_mapping_error(bp->sdev, mapping);
      if (tmp___0 == 0) {
        ssb_dma_unmap_single(bp->sdev, mapping, 1566UL, 2);
      } else {
      }
      dev_kfree_skb_any(skb);
      return (-12);
    } else {
    }
    bp->force_copybreak = 1U;
  } else {
  }
  rh = (struct rx_header *)skb->data;
  rh->len = 0U;
  rh->flags = 0U;
  map->skb = skb;
  map->mapping = mapping;
  if ((unsigned long )src_map != (unsigned long )((struct ring_info *)0)) {
    src_map->skb = 0;
  } else {
  }
  ctrl = 1566U;
  if (dest_idx == 511) {
    ctrl = ctrl | 268435456U;
  } else {
  }
  dp = bp->rx_ring + (unsigned long )dest_idx;
  dp->ctrl = ctrl;
  dp->addr = (unsigned int )mapping + bp->dma_offset;
  if ((bp->flags & 536870912U) != 0U) {
    b44_sync_dma_desc_for_device(bp->sdev, bp->rx_ring_dma, (unsigned long )dest_idx * 8UL,
                                 0);
  } else {
  }
  return (1566);
}
}
static void b44_recycle_rx(struct b44 *bp , int src_idx , u32 dest_idx_unmasked )
{
  struct dma_desc *src_desc ;
  struct dma_desc *dest_desc ;
  struct ring_info *src_map ;
  struct ring_info *dest_map ;
  struct rx_header *rh ;
  int dest_idx ;
  __le32 ctrl ;
  {
  dest_idx = (int )dest_idx_unmasked & 511;
  dest_desc = bp->rx_ring + (unsigned long )dest_idx;
  dest_map = bp->rx_buffers + (unsigned long )dest_idx;
  src_desc = bp->rx_ring + (unsigned long )src_idx;
  src_map = bp->rx_buffers + (unsigned long )src_idx;
  dest_map->skb = src_map->skb;
  rh = (struct rx_header *)(src_map->skb)->data;
  rh->len = 0U;
  rh->flags = 0U;
  dest_map->mapping = src_map->mapping;
  if ((bp->flags & 536870912U) != 0U) {
    b44_sync_dma_desc_for_cpu(bp->sdev, bp->rx_ring_dma, (unsigned long )src_idx * 8UL,
                              0);
  } else {
  }
  ctrl = src_desc->ctrl;
  if (dest_idx == 511) {
    ctrl = ctrl | 268435456U;
  } else {
    ctrl = ctrl & 4026531839U;
  }
  dest_desc->ctrl = ctrl;
  dest_desc->addr = src_desc->addr;
  src_map->skb = 0;
  if ((bp->flags & 536870912U) != 0U) {
    b44_sync_dma_desc_for_device(bp->sdev, bp->rx_ring_dma, (unsigned long )dest_idx * 8UL,
                                 0);
  } else {
  }
  ssb_dma_sync_single_for_device(bp->sdev, dest_map->mapping, 1566UL, 2);
  return;
}
}
static int b44_rx(struct b44 *bp , int budget )
{
  int received ;
  u32 cons ;
  u32 prod ;
  unsigned long tmp ;
  struct ring_info *rp ;
  struct sk_buff *skb ;
  dma_addr_t map ;
  struct rx_header *rh ;
  u16 len ;
  int i ;
  int tmp___0 ;
  int skb_size ;
  struct sk_buff *copy_skb ;
  {
  received = 0;
  tmp = br32((struct b44 const *)bp, 540UL);
  prod = (u32 )tmp & 4095U;
  prod = prod / 8U;
  cons = bp->rx_cons;
  goto ldv_30069;
  ldv_30068:
  rp = bp->rx_buffers + (unsigned long )cons;
  skb = rp->skb;
  map = rp->mapping;
  ssb_dma_sync_single_for_cpu(bp->sdev, map, 1566UL, 2);
  rh = (struct rx_header *)skb->data;
  len = rh->len;
  if ((unsigned int )len > 1536U || ((int )rh->flags & 15) != 0) {
    drop_it:
    b44_recycle_rx(bp, (int )cons, bp->rx_prod);
    drop_it_no_recycle:
    (bp->dev)->stats.rx_dropped = (bp->dev)->stats.rx_dropped + 1UL;
    goto next_pkt;
  } else {
  }
  if ((unsigned int )len == 0U) {
    i = 0;
    ldv_30064:
    __const_udelay(8590UL);
    __asm__ volatile ("": : : "memory");
    len = rh->len;
    if ((unsigned int )len == 0U) {
      tmp___0 = i;
      i = i + 1;
      if (tmp___0 <= 4) {
        goto ldv_30064;
      } else {
        goto ldv_30065;
      }
    } else {
    }
    ldv_30065: ;
    if ((unsigned int )len == 0U) {
      goto drop_it;
    } else {
    }
  } else {
  }
  len = (unsigned int )len + 65532U;
  if ((unsigned int )bp->force_copybreak == 0U && (unsigned int )len > 256U) {
    skb_size = b44_alloc_rx_skb(bp, (int )cons, bp->rx_prod);
    if (skb_size < 0) {
      goto drop_it;
    } else {
    }
    ssb_dma_unmap_single(bp->sdev, map, (size_t )skb_size, 2);
    skb_put(skb, (unsigned int )((int )len + 30));
    skb_pull(skb, 30U);
  } else {
    b44_recycle_rx(bp, (int )cons, bp->rx_prod);
    copy_skb = netdev_alloc_skb(bp->dev, (unsigned int )((int )len + 2));
    if ((unsigned long )copy_skb == (unsigned long )((struct sk_buff *)0)) {
      goto drop_it_no_recycle;
    } else {
    }
    skb_reserve(copy_skb, 2);
    skb_put(copy_skb, (unsigned int )len);
    skb_copy_from_linear_data_offset((struct sk_buff const *)skb, 30, (void *)copy_skb->data,
                                     (unsigned int const )len);
    skb = copy_skb;
  }
  skb->ip_summed = 0U;
  skb->protocol = eth_type_trans(skb, bp->dev);
  netif_receive_skb(skb);
  received = received + 1;
  budget = budget - 1;
  next_pkt:
  bp->rx_prod = (bp->rx_prod + 1U) & 511U;
  cons = (cons + 1U) & 511U;
  ldv_30069: ;
  if (cons != prod && budget > 0) {
    goto ldv_30068;
  } else {
  }
  bp->rx_cons = cons;
  bw32((struct b44 const *)bp, 536UL, (unsigned long )cons * 8UL);
  return (received);
}
}
static int b44_poll(struct napi_struct *napi , int budget )
{
  struct b44 *bp ;
  struct napi_struct const *__mptr ;
  int work_done ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  __mptr = (struct napi_struct const *)napi;
  bp = (struct b44 *)__mptr + 0xffffffffffffff88UL;
  tmp = spinlock_check(& bp->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((bp->istat & 16777344U) != 0U) {
    b44_tx(bp);
  } else {
  }
  spin_unlock_irqrestore(& bp->lock, flags);
  work_done = 0;
  if ((bp->istat & 65536U) != 0U) {
    tmp___0 = b44_rx(bp, budget);
    work_done = tmp___0 + work_done;
  } else {
  }
  if ((bp->istat & 64512U) != 0U) {
    tmp___1 = spinlock_check(& bp->lock);
    flags = _raw_spin_lock_irqsave(tmp___1);
    b44_halt(bp);
    b44_init_rings(bp);
    b44_init_hw(bp, 2);
    netif_wake_queue(bp->dev);
    spin_unlock_irqrestore(& bp->lock, flags);
    work_done = 0;
  } else {
  }
  if (work_done < budget) {
    napi_complete(napi);
    b44_enable_ints(bp);
  } else {
  }
  return (work_done);
}
}
static irqreturn_t b44_interrupt(int irq , void *dev_id )
{
  struct net_device *dev ;
  struct b44 *bp ;
  void *tmp ;
  u32 istat ;
  u32 imask ;
  int handled ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  {
  dev = (struct net_device *)dev_id;
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  handled = 0;
  spin_lock(& bp->lock);
  tmp___0 = br32((struct b44 const *)bp, 32UL);
  istat = (u32 )tmp___0;
  tmp___1 = br32((struct b44 const *)bp, 36UL);
  imask = (u32 )tmp___1;
  istat = istat & imask;
  if (istat != 0U) {
    handled = 1;
    tmp___5 = netif_running((struct net_device const *)dev);
    tmp___6 = ldv__builtin_expect(tmp___5 == 0, 0L);
    if (tmp___6 != 0L) {
      tmp___2 = netdev_name((struct net_device const *)dev);
      tmp___3 = dev_name((struct device const *)dev->dev.parent);
      tmp___4 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: late interrupt\n", tmp___4, tmp___3, tmp___2);
      goto irq_ack;
    } else {
    }
    tmp___7 = napi_schedule_prep(& bp->napi);
    if (tmp___7 != 0) {
      bp->istat = istat;
      __b44_disable_ints(bp);
      __napi_schedule(& bp->napi);
    } else {
    }
    irq_ack:
    bw32((struct b44 const *)bp, 32UL, (unsigned long )istat);
    br32((struct b44 const *)bp, 32UL);
  } else {
  }
  spin_unlock(& bp->lock);
  return (handled != 0);
}
}
static void b44_tx_timeout(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  tmp___0 = netdev_name((struct net_device const *)dev);
  tmp___1 = dev_name((struct device const *)dev->dev.parent);
  tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
  printk("<3>%s %s: %s: transmit timed out, resetting\n", tmp___2, tmp___1, tmp___0);
  spin_lock_irq(& bp->lock);
  b44_halt(bp);
  b44_init_rings(bp);
  b44_init_hw(bp, 1);
  spin_unlock_irq(& bp->lock);
  b44_enable_ints(bp);
  netif_wake_queue(dev);
  return;
}
}
static netdev_tx_t b44_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  int rc ;
  dma_addr_t mapping ;
  u32 len ;
  u32 entry ;
  u32 ctrl ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  struct sk_buff *bounce_skb ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  unsigned char *tmp___8 ;
  int tmp___9 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  rc = 0;
  len = skb->len;
  tmp___0 = spinlock_check(& bp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tmp___4 = ldv__builtin_expect(bp->tx_cons <= bp->tx_prod ? bp->tx_cons + bp->tx_pending == bp->tx_prod : (bp->tx_cons - bp->tx_prod) + bp->tx_pending == 512U,
                             0L);
  if (tmp___4 != 0L) {
    netif_stop_queue(dev);
    tmp___1 = netdev_name((struct net_device const *)dev);
    tmp___2 = dev_name((struct device const *)dev->dev.parent);
    tmp___3 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<3>%s %s: %s: BUG! Tx Ring full when queue awake!\n", tmp___3, tmp___2,
           tmp___1);
    goto err_out;
  } else {
  }
  mapping = ssb_dma_map_single(bp->sdev, (void *)skb->data, (size_t )len, 1);
  tmp___9 = ssb_dma_mapping_error(bp->sdev, mapping);
  if (tmp___9 != 0 || (dma_addr_t )len + mapping > 1073741823ULL) {
    tmp___5 = ssb_dma_mapping_error(bp->sdev, mapping);
    if (tmp___5 == 0) {
      ssb_dma_unmap_single(bp->sdev, mapping, (size_t )len, 1);
    } else {
    }
    bounce_skb = __netdev_alloc_skb(dev, len, 33U);
    if ((unsigned long )bounce_skb == (unsigned long )((struct sk_buff *)0)) {
      goto err_out;
    } else {
    }
    mapping = ssb_dma_map_single(bp->sdev, (void *)bounce_skb->data, (size_t )len,
                                 1);
    tmp___7 = ssb_dma_mapping_error(bp->sdev, mapping);
    if (tmp___7 != 0 || (dma_addr_t )len + mapping > 1073741823ULL) {
      tmp___6 = ssb_dma_mapping_error(bp->sdev, mapping);
      if (tmp___6 == 0) {
        ssb_dma_unmap_single(bp->sdev, mapping, (size_t )len, 1);
      } else {
      }
      dev_kfree_skb_any(bounce_skb);
      goto err_out;
    } else {
    }
    tmp___8 = skb_put(bounce_skb, len);
    skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)tmp___8, len);
    dev_kfree_skb_any(skb);
    skb = bounce_skb;
  } else {
  }
  entry = bp->tx_prod;
  (bp->tx_buffers + (unsigned long )entry)->skb = skb;
  (bp->tx_buffers + (unsigned long )entry)->mapping = mapping;
  ctrl = len & 8191U;
  ctrl = ctrl | 3758096384U;
  if (entry == 511U) {
    ctrl = ctrl | 268435456U;
  } else {
  }
  (bp->tx_ring + (unsigned long )entry)->ctrl = ctrl;
  (bp->tx_ring + (unsigned long )entry)->addr = (unsigned int )mapping + bp->dma_offset;
  if ((bp->flags & 1073741824U) != 0U) {
    b44_sync_dma_desc_for_device(bp->sdev, bp->tx_ring_dma, (unsigned long )entry * 8UL,
                                 1);
  } else {
  }
  entry = (entry + 1U) & 511U;
  bp->tx_prod = entry;
  __asm__ volatile ("sfence": : : "memory");
  bw32((struct b44 const *)bp, 520UL, (unsigned long )entry * 8UL);
  if ((bp->flags & 2U) != 0U) {
    bw32((struct b44 const *)bp, 520UL, (unsigned long )entry * 8UL);
  } else {
  }
  if ((bp->flags & 4U) != 0U) {
    br32((struct b44 const *)bp, 520UL);
  } else {
  }
  if (bp->tx_cons <= bp->tx_prod ? bp->tx_cons + bp->tx_pending == bp->tx_prod : (bp->tx_cons - bp->tx_prod) + bp->tx_pending == 512U) {
    netif_stop_queue(dev);
  } else {
  }
  out_unlock:
  spin_unlock_irqrestore(& bp->lock, flags);
  return ((netdev_tx_t )rc);
  err_out:
  rc = 16;
  goto out_unlock;
}
}
static int b44_change_mtu(struct net_device *dev , int new_mtu )
{
  struct b44 *bp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  if (new_mtu <= 59 || new_mtu > 1500) {
    return (-22);
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 == 0) {
    dev->mtu = (unsigned int )new_mtu;
    return (0);
  } else {
  }
  spin_lock_irq(& bp->lock);
  b44_halt(bp);
  dev->mtu = (unsigned int )new_mtu;
  b44_init_rings(bp);
  b44_init_hw(bp, 1);
  spin_unlock_irq(& bp->lock);
  b44_enable_ints(bp);
  return (0);
}
}
static void b44_free_rings(struct b44 *bp )
{
  struct ring_info *rp ;
  int i ;
  {
  i = 0;
  goto ldv_30129;
  ldv_30128:
  rp = bp->rx_buffers + (unsigned long )i;
  if ((unsigned long )rp->skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_30127;
  } else {
  }
  ssb_dma_unmap_single(bp->sdev, rp->mapping, 1566UL, 2);
  dev_kfree_skb_any(rp->skb);
  rp->skb = 0;
  ldv_30127:
  i = i + 1;
  ldv_30129: ;
  if (i <= 511) {
    goto ldv_30128;
  } else {
  }
  i = 0;
  goto ldv_30133;
  ldv_30132:
  rp = bp->tx_buffers + (unsigned long )i;
  if ((unsigned long )rp->skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_30131;
  } else {
  }
  ssb_dma_unmap_single(bp->sdev, rp->mapping, (size_t )(rp->skb)->len, 1);
  dev_kfree_skb_any(rp->skb);
  rp->skb = 0;
  ldv_30131:
  i = i + 1;
  ldv_30133: ;
  if (i <= 511) {
    goto ldv_30132;
  } else {
  }
  return;
}
}
static void b44_init_rings(struct b44 *bp )
{
  int i ;
  int tmp ;
  {
  b44_free_rings(bp);
  memset((void *)bp->rx_ring, 0, 4096UL);
  memset((void *)bp->tx_ring, 0, 4096UL);
  if ((bp->flags & 536870912U) != 0U) {
    ssb_dma_sync_single_for_device(bp->sdev, bp->rx_ring_dma, 4096UL, 0);
  } else {
  }
  if ((bp->flags & 1073741824U) != 0U) {
    ssb_dma_sync_single_for_device(bp->sdev, bp->tx_ring_dma, 4096UL, 1);
  } else {
  }
  i = 0;
  goto ldv_30141;
  ldv_30140:
  tmp = b44_alloc_rx_skb(bp, -1, (u32 )i);
  if (tmp < 0) {
    goto ldv_30139;
  } else {
  }
  i = i + 1;
  ldv_30141: ;
  if ((u32 )i < bp->rx_pending) {
    goto ldv_30140;
  } else {
  }
  ldv_30139: ;
  return;
}
}
static void b44_free_consistent(struct b44 *bp )
{
  {
  kfree((void const *)bp->rx_buffers);
  bp->rx_buffers = 0;
  kfree((void const *)bp->tx_buffers);
  bp->tx_buffers = 0;
  if ((unsigned long )bp->rx_ring != (unsigned long )((struct dma_desc *)0)) {
    if ((bp->flags & 536870912U) != 0U) {
      ssb_dma_unmap_single(bp->sdev, bp->rx_ring_dma, 4096UL, 0);
      kfree((void const *)bp->rx_ring);
    } else {
      ssb_dma_free_consistent(bp->sdev, 4096UL, (void *)bp->rx_ring, bp->rx_ring_dma,
                              208U);
    }
    bp->rx_ring = 0;
    bp->flags = bp->flags & 3758096383U;
  } else {
  }
  if ((unsigned long )bp->tx_ring != (unsigned long )((struct dma_desc *)0)) {
    if ((bp->flags & 1073741824U) != 0U) {
      ssb_dma_unmap_single(bp->sdev, bp->tx_ring_dma, 4096UL, 1);
      kfree((void const *)bp->tx_ring);
    } else {
      ssb_dma_free_consistent(bp->sdev, 4096UL, (void *)bp->tx_ring, bp->tx_ring_dma,
                              208U);
    }
    bp->tx_ring = 0;
    bp->flags = bp->flags & 3221225471U;
  } else {
  }
  return;
}
}
static int b44_alloc_consistent(struct b44 *bp , gfp_t gfp )
{
  int size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct dma_desc *rx_ring ;
  dma_addr_t rx_ring_dma ;
  void *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  struct dma_desc *tx_ring ;
  dma_addr_t tx_ring_dma ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  size = 8192;
  tmp = kzalloc((size_t )size, gfp);
  bp->rx_buffers = (struct ring_info *)tmp;
  if ((unsigned long )bp->rx_buffers == (unsigned long )((struct ring_info *)0)) {
    goto out_err;
  } else {
  }
  size = 8192;
  tmp___0 = kzalloc((size_t )size, gfp);
  bp->tx_buffers = (struct ring_info *)tmp___0;
  if ((unsigned long )bp->tx_buffers == (unsigned long )((struct ring_info *)0)) {
    goto out_err;
  } else {
  }
  size = 4096;
  tmp___1 = ssb_dma_alloc_consistent(bp->sdev, (size_t )size, & bp->rx_ring_dma, gfp);
  bp->rx_ring = (struct dma_desc *)tmp___1;
  if ((unsigned long )bp->rx_ring == (unsigned long )((struct dma_desc *)0)) {
    tmp___2 = kzalloc((size_t )size, gfp);
    rx_ring = (struct dma_desc *)tmp___2;
    if ((unsigned long )rx_ring == (unsigned long )((struct dma_desc *)0)) {
      goto out_err;
    } else {
    }
    rx_ring_dma = ssb_dma_map_single(bp->sdev, (void *)rx_ring, 4096UL, 0);
    tmp___3 = ssb_dma_mapping_error(bp->sdev, rx_ring_dma);
    if (tmp___3 != 0 || (dma_addr_t )size + rx_ring_dma > 1073741823ULL) {
      kfree((void const *)rx_ring);
      goto out_err;
    } else {
    }
    bp->rx_ring = rx_ring;
    bp->rx_ring_dma = rx_ring_dma;
    bp->flags = bp->flags | 536870912U;
  } else {
  }
  tmp___4 = ssb_dma_alloc_consistent(bp->sdev, (size_t )size, & bp->tx_ring_dma, gfp);
  bp->tx_ring = (struct dma_desc *)tmp___4;
  if ((unsigned long )bp->tx_ring == (unsigned long )((struct dma_desc *)0)) {
    tmp___5 = kzalloc((size_t )size, gfp);
    tx_ring = (struct dma_desc *)tmp___5;
    if ((unsigned long )tx_ring == (unsigned long )((struct dma_desc *)0)) {
      goto out_err;
    } else {
    }
    tx_ring_dma = ssb_dma_map_single(bp->sdev, (void *)tx_ring, 4096UL, 1);
    tmp___6 = ssb_dma_mapping_error(bp->sdev, tx_ring_dma);
    if (tmp___6 != 0 || (dma_addr_t )size + tx_ring_dma > 1073741823ULL) {
      kfree((void const *)tx_ring);
      goto out_err;
    } else {
    }
    bp->tx_ring = tx_ring;
    bp->tx_ring_dma = tx_ring_dma;
    bp->flags = bp->flags | 1073741824U;
  } else {
  }
  return (0);
  out_err:
  b44_free_consistent(bp);
  return (-12);
}
}
static void b44_clear_stats(struct b44 *bp )
{
  unsigned long reg ;
  {
  bw32((struct b44 const *)bp, 1080UL, 1UL);
  reg = 1280UL;
  goto ldv_30160;
  ldv_30159:
  br32((struct b44 const *)bp, reg);
  reg = reg + 4UL;
  ldv_30160: ;
  if (reg <= 1372UL) {
    goto ldv_30159;
  } else {
  }
  reg = 1408UL;
  goto ldv_30163;
  ldv_30162:
  br32((struct b44 const *)bp, reg);
  reg = reg + 4UL;
  ldv_30163: ;
  if (reg <= 1496UL) {
    goto ldv_30162;
  } else {
  }
  return;
}
}
static void b44_chip_reset(struct b44 *bp , int reset_kind )
{
  struct ssb_device *sdev ;
  bool was_enabled ;
  int tmp ;
  u32 tmp___0 ;
  unsigned long tmp___1 ;
  u32 tmp___2 ;
  int __divisor ;
  u32 tmp___3 ;
  int __ret_warn_on ;
  long tmp___4 ;
  u32 val ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  {
  sdev = bp->sdev;
  tmp = ssb_device_is_enabled(bp->sdev);
  was_enabled = tmp != 0;
  ssb_device_enable(bp->sdev, 0U);
  ssb_pcicore_dev_irqvecs_enable(& (sdev->bus)->pcicore, sdev);
  if ((int )was_enabled) {
    bw32((struct b44 const *)bp, 256UL, 0UL);
    bw32((struct b44 const *)bp, 1068UL, 2UL);
    b44_wait_bit(bp, 1068UL, 2U, 200UL, 1);
    bw32((struct b44 const *)bp, 512UL, 0UL);
    tmp___0 = 0U;
    bp->tx_cons = tmp___0;
    bp->tx_prod = tmp___0;
    tmp___1 = br32((struct b44 const *)bp, 540UL);
    if ((tmp___1 & 983040UL) != 0UL) {
      b44_wait_bit(bp, 540UL, 8192U, 100UL, 0);
    } else {
    }
    bw32((struct b44 const *)bp, 528UL, 0UL);
    tmp___2 = 0U;
    bp->rx_cons = tmp___2;
    bp->rx_prod = tmp___2;
  } else {
  }
  b44_clear_stats(bp);
  if (reset_kind == 5) {
    return;
  } else {
  }
  switch ((unsigned int )(sdev->bus)->bustype) {
  case 0U:
  __divisor = 5000000;
  tmp___3 = ssb_clockspeed(sdev->bus);
  bw32((struct b44 const *)bp, 1040UL, (unsigned long )(((tmp___3 + (u32 )(__divisor / 2)) / (u32 )__divisor & 255U) | 128U));
  goto ldv_30174;
  case 1U:
  bw32((struct b44 const *)bp, 1040UL, 141UL);
  goto ldv_30174;
  case 2U: ;
  case 3U:
  __ret_warn_on = 1;
  tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/work/vladimir/commit-test/commit-test-work/task-070--linux-stable--dir/work/current--X--drivers/net/b44.ko--X--defaultlinux-stable-073676f-1--X--114_1a--X--cpachecker/linux-stable-073676f-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/114_1a/drivers/net/b44.c.prepared",
                       1302);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_30174;
  }
  ldv_30174:
  br32((struct b44 const *)bp, 1040UL);
  tmp___6 = br32((struct b44 const *)bp, 0UL);
  if ((tmp___6 & 1024UL) == 0UL) {
    bw32((struct b44 const *)bp, 1068UL, 8UL);
    br32((struct b44 const *)bp, 1068UL);
    bp->flags = bp->flags & 4026531839U;
  } else {
    tmp___5 = br32((struct b44 const *)bp, 0UL);
    val = (u32 )tmp___5;
    if ((val & 32768U) != 0U) {
      bw32((struct b44 const *)bp, 0UL, (unsigned long )val & 4294934527UL);
      br32((struct b44 const *)bp, 0UL);
      __const_udelay(429500UL);
    } else {
    }
    bp->flags = bp->flags | 268435456U;
  }
  return;
}
}
static void b44_halt(struct b44 *bp )
{
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  b44_disable_ints(bp);
  b44_phy_reset(bp);
  tmp = netdev_name((struct net_device const *)bp->dev);
  tmp___0 = dev_name((struct device const *)(bp->dev)->dev.parent);
  tmp___1 = dev_driver_string((struct device const *)(bp->dev)->dev.parent);
  printk("<6>%s %s: %s: powering down PHY\n", tmp___1, tmp___0, tmp);
  bw32((struct b44 const *)bp, 168UL, 4UL);
  b44_chip_reset(bp, 5);
  return;
}
}
static void __b44_set_mac_addr(struct b44 *bp )
{
  u32 val ;
  unsigned long tmp ;
  {
  bw32((struct b44 const *)bp, 1064UL, 0UL);
  if (((bp->dev)->flags & 256U) == 0U) {
    __b44_cam_write(bp, (bp->dev)->dev_addr, 0);
    tmp = br32((struct b44 const *)bp, 1064UL);
    val = (u32 )tmp;
    bw32((struct b44 const *)bp, 1064UL, (unsigned long )(val | 1U));
  } else {
  }
  return;
}
}
static int b44_set_mac_addr(struct net_device *dev , void *p )
{
  struct b44 *bp ;
  void *tmp ;
  struct sockaddr *addr ;
  u32 val ;
  int tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  tmp___1 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___1 == 0) {
    return (-22);
  } else {
  }
  __len = (size_t )dev->addr_len;
  __ret = memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data),
                           __len);
  spin_lock_irq(& bp->lock);
  tmp___2 = br32((struct b44 const *)bp, 1024UL);
  val = (u32 )tmp___2;
  if ((val & 256U) == 0U) {
    __b44_set_mac_addr(bp);
  } else {
  }
  spin_unlock_irq(& bp->lock);
  return (0);
}
}
static void __b44_set_rx_mode(struct net_device *dev ) ;
static void b44_init_hw(struct b44 *bp , int reset_kind )
{
  u32 val ;
  unsigned long tmp ;
  {
  b44_chip_reset(bp, 4);
  if (reset_kind == 1) {
    b44_phy_reset(bp);
    b44_setup_phy(bp);
  } else {
  }
  bw32((struct b44 const *)bp, 168UL, 225UL);
  bw32((struct b44 const *)bp, 256UL, 16777216UL);
  __b44_set_rx_mode(bp->dev);
  bw32((struct b44 const *)bp, 1028UL, (unsigned long )((bp->dev)->mtu + 50U));
  bw32((struct b44 const *)bp, 1032UL, (unsigned long )((bp->dev)->mtu + 50U));
  bw32((struct b44 const *)bp, 1076UL, 56UL);
  if (reset_kind == 3) {
    bw32((struct b44 const *)bp, 528UL, 61UL);
  } else {
    bw32((struct b44 const *)bp, 512UL, 1UL);
    bw32((struct b44 const *)bp, 516UL, (unsigned long )(bp->tx_ring_dma + (dma_addr_t )bp->dma_offset));
    bw32((struct b44 const *)bp, 528UL, 61UL);
    bw32((struct b44 const *)bp, 532UL, (unsigned long )(bp->rx_ring_dma + (dma_addr_t )bp->dma_offset));
    bw32((struct b44 const *)bp, 536UL, (unsigned long )bp->rx_pending);
    bp->rx_prod = bp->rx_pending;
    bw32((struct b44 const *)bp, 1080UL, 1UL);
  }
  tmp = br32((struct b44 const *)bp, 1068UL);
  val = (u32 )tmp;
  bw32((struct b44 const *)bp, 1068UL, (unsigned long )(val | 1U));
  return;
}
}
static int b44_open(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  int err ;
  long tmp___0 ;
  struct lock_class_key __key ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  err = b44_alloc_consistent(bp, 208U);
  if (err != 0) {
    goto out;
  } else {
  }
  napi_enable(& bp->napi);
  b44_init_rings(bp);
  b44_init_hw(bp, 1);
  b44_check_phy(bp);
  err = request_irq(dev->irq, & b44_interrupt, 128UL, (char const *)(& dev->name),
                    (void *)dev);
  tmp___0 = ldv__builtin_expect(err < 0, 0L);
  if (tmp___0 != 0L) {
    napi_disable(& bp->napi);
    b44_chip_reset(bp, 5);
    b44_free_rings(bp);
    b44_free_consistent(bp);
    goto out;
  } else {
  }
  init_timer_key(& bp->timer, "&bp->timer", & __key);
  bp->timer.expires = (unsigned long )jiffies + 250UL;
  bp->timer.data = (unsigned long )bp;
  bp->timer.function = & b44_timer;
  add_timer(& bp->timer);
  b44_enable_ints(bp);
  netif_start_queue(dev);
  out: ;
  return (err);
}
}
static void b44_poll_controller(struct net_device *dev )
{
  {
  disable_irq(dev->irq);
  b44_interrupt((int )dev->irq, (void *)dev);
  enable_irq(dev->irq);
  return;
}
}
static void bwfilter_table(struct b44 *bp , u8 *pp , u32 bytes , u32 table_offset )
{
  u32 i ;
  u32 *pattern ;
  {
  pattern = (u32 *)pp;
  i = 0U;
  goto ldv_30224;
  ldv_30223:
  bw32((struct b44 const *)bp, 144UL, (unsigned long )(table_offset + i));
  bw32((struct b44 const *)bp, 148UL, (unsigned long )*(pattern + (unsigned long )(i / 4U)));
  i = i + 4U;
  ldv_30224: ;
  if (i < bytes) {
    goto ldv_30223;
  } else {
  }
  return;
}
}
static int b44_magic_pattern(u8 *macaddr , u8 *ppattern , u8 *pmask , int offset )
{
  int magicsync ;
  int k ;
  int j ;
  int len ;
  int ethaddr_bytes ;
  int tmp ;
  int tmp___0 ;
  {
  magicsync = 6;
  len = offset;
  ethaddr_bytes = 6;
  memset((void *)ppattern + (unsigned long )offset, 255, (size_t )magicsync);
  j = 0;
  goto ldv_30238;
  ldv_30237:
  tmp = len;
  len = len + 1;
  set_bit((unsigned int )tmp, (unsigned long volatile *)pmask);
  j = j + 1;
  ldv_30238: ;
  if (j < magicsync) {
    goto ldv_30237;
  } else {
  }
  j = 0;
  goto ldv_30245;
  ldv_30244: ;
  if (128 - len > 5) {
    ethaddr_bytes = 6;
  } else {
    ethaddr_bytes = 128 - len;
  }
  if (ethaddr_bytes <= 0) {
    goto ldv_30240;
  } else {
  }
  k = 0;
  goto ldv_30242;
  ldv_30241:
  *(ppattern + (unsigned long )(((offset + magicsync) + j * 6) + k)) = *(macaddr + (unsigned long )k);
  tmp___0 = len;
  len = len + 1;
  set_bit((unsigned int )tmp___0, (unsigned long volatile *)pmask);
  k = k + 1;
  ldv_30242: ;
  if (k < ethaddr_bytes) {
    goto ldv_30241;
  } else {
  }
  j = j + 1;
  ldv_30245: ;
  if (j <= 15) {
    goto ldv_30244;
  } else {
  }
  ldv_30240: ;
  return (len + -1);
}
}
static void b44_setup_pseudo_magicp(struct b44 *bp )
{
  u32 val ;
  int plen0 ;
  int plen1 ;
  int plen2 ;
  u8 *pwol_pattern ;
  u8 pwol_mask[16U] ;
  void *tmp ;
  unsigned long tmp___0 ;
  {
  tmp = kzalloc(128UL, 208U);
  pwol_pattern = (u8 *)tmp;
  if ((unsigned long )pwol_pattern == (unsigned long )((u8 *)0)) {
    printk("<3>b44: Memory not available for WOL\n");
    return;
  } else {
  }
  memset((void *)(& pwol_mask), 0, 16UL);
  plen0 = b44_magic_pattern((bp->dev)->dev_addr, pwol_pattern, (u8 *)(& pwol_mask),
                            42);
  bwfilter_table(bp, pwol_pattern, 128U, 1024U);
  bwfilter_table(bp, (u8 *)(& pwol_mask), 16U, 1536U);
  memset((void *)pwol_pattern, 0, 128UL);
  memset((void *)(& pwol_mask), 0, 16UL);
  plen1 = b44_magic_pattern((bp->dev)->dev_addr, pwol_pattern, (u8 *)(& pwol_mask),
                            14);
  bwfilter_table(bp, pwol_pattern, 128U, 1152U);
  bwfilter_table(bp, (u8 *)(& pwol_mask), 16U, 1552U);
  memset((void *)pwol_pattern, 0, 128UL);
  memset((void *)(& pwol_mask), 0, 16UL);
  plen2 = b44_magic_pattern((bp->dev)->dev_addr, pwol_pattern, (u8 *)(& pwol_mask),
                            62);
  bwfilter_table(bp, pwol_pattern, 128U, 1280U);
  bwfilter_table(bp, (u8 *)(& pwol_mask), 16U, 1568U);
  kfree((void const *)pwol_pattern);
  val = (unsigned int )(((plen1 << 8) | plen0) | (plen2 << 16)) | 2147483648U;
  bw32((struct b44 const *)bp, 16UL, (unsigned long )val);
  tmp___0 = br32((struct b44 const *)bp, 0UL);
  val = (u32 )tmp___0;
  bw32((struct b44 const *)bp, 0UL, (unsigned long )(val | 128U));
  return;
}
}
static void b44_setup_wol_pci(struct b44 *bp )
{
  u16 val ;
  unsigned long tmp ;
  {
  if ((unsigned int )((bp->sdev)->bus)->bustype != 0U) {
    tmp = br32((struct b44 const *)bp, 3992UL);
    bw32((struct b44 const *)bp, 3992UL, tmp | 1073741824UL);
    pci_read_config_word(((bp->sdev)->bus)->ldv_29536.host_pci, 68, & val);
    pci_write_config_word(((bp->sdev)->bus)->ldv_29536.host_pci, 68, (int )((unsigned int )val | 256U));
  } else {
  }
  return;
}
}
static void b44_setup_wol(struct b44 *bp )
{
  u32 val ;
  unsigned long tmp ;
  {
  bw32((struct b44 const *)bp, 1024UL, 2UL);
  if ((int )bp->flags & 1) {
    bw32((struct b44 const *)bp, 16UL, 2155905152UL);
    val = (u32 )(((((int )*((bp->dev)->dev_addr + 2UL) << 24) | ((int )*((bp->dev)->dev_addr + 3UL) << 16)) | ((int )*((bp->dev)->dev_addr + 4UL) << 8)) | (int )*((bp->dev)->dev_addr + 5UL));
    bw32((struct b44 const *)bp, 136UL, (unsigned long )val);
    val = (u32 )(((int )*((bp->dev)->dev_addr) << 8) | (int )*((bp->dev)->dev_addr + 1UL));
    bw32((struct b44 const *)bp, 140UL, (unsigned long )val);
    tmp = br32((struct b44 const *)bp, 0UL);
    val = (u32 )tmp;
    bw32((struct b44 const *)bp, 0UL, (unsigned long )(val | 192U));
  } else {
    b44_setup_pseudo_magicp(bp);
  }
  b44_setup_wol_pci(bp);
  return;
}
}
static int b44_close(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  netif_stop_queue(dev);
  napi_disable(& bp->napi);
  del_timer_sync(& bp->timer);
  spin_lock_irq(& bp->lock);
  b44_halt(bp);
  b44_free_rings(bp);
  ldv_netif_carrier_off_2(dev);
  spin_unlock_irq(& bp->lock);
  free_irq(dev->irq, (void *)dev);
  if ((int )bp->flags < 0) {
    b44_init_hw(bp, 3);
    b44_setup_wol(bp);
  } else {
  }
  b44_free_consistent(bp);
  return (0);
}
}
static struct net_device_stats *b44_get_stats(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  struct net_device_stats *nstat ;
  struct b44_hw_stats *hwstat ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  nstat = & dev->stats;
  hwstat = & bp->hw_stats;
  nstat->rx_packets = (unsigned long )hwstat->rx_pkts;
  nstat->tx_packets = (unsigned long )hwstat->tx_pkts;
  nstat->rx_bytes = (unsigned long )hwstat->rx_octets;
  nstat->tx_bytes = (unsigned long )hwstat->tx_octets;
  nstat->tx_errors = (unsigned long )((((hwstat->tx_jabber_pkts + hwstat->tx_oversize_pkts) + hwstat->tx_underruns) + hwstat->tx_excessive_cols) + hwstat->tx_late_cols);
  nstat->multicast = (unsigned long )hwstat->tx_multicast_pkts;
  nstat->collisions = (unsigned long )hwstat->tx_total_cols;
  nstat->rx_length_errors = (unsigned long )(hwstat->rx_oversize_pkts + hwstat->rx_undersize);
  nstat->rx_over_errors = (unsigned long )hwstat->rx_missed_pkts;
  nstat->rx_frame_errors = (unsigned long )hwstat->rx_align_errs;
  nstat->rx_crc_errors = (unsigned long )hwstat->rx_crc_errs;
  nstat->rx_errors = (unsigned long )(((((((hwstat->rx_jabber_pkts + hwstat->rx_oversize_pkts) + hwstat->rx_missed_pkts) + hwstat->rx_crc_align_errs) + hwstat->rx_undersize) + hwstat->rx_crc_errs) + hwstat->rx_align_errs) + hwstat->rx_symbol_errs);
  nstat->tx_aborted_errors = (unsigned long )hwstat->tx_underruns;
  return (nstat);
}
}
static int __b44_load_mcast(struct b44 *bp , struct net_device *dev )
{
  struct netdev_hw_addr *ha ;
  int i ;
  int num_ents ;
  int __min1 ;
  int __min2 ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __min1 = dev->mc.count;
  __min2 = 32;
  num_ents = __min1 < __min2 ? __min1 : __min2;
  i = 0;
  __mptr = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_30289;
  ldv_30288: ;
  if (i == num_ents) {
    goto ldv_30287;
  } else {
  }
  tmp = i;
  i = i + 1;
  __b44_cam_write(bp, (unsigned char *)(& ha->addr), tmp + 1);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_30289:
  __builtin_prefetch((void const *)ha->list.next);
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_30288;
  } else {
  }
  ldv_30287: ;
  return (i + 1);
}
}
static void __b44_set_rx_mode(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  u32 val ;
  unsigned long tmp___0 ;
  unsigned char zero[6U] ;
  int i ;
  unsigned long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  tmp___0 = br32((struct b44 const *)bp, 1024UL);
  val = (u32 )tmp___0;
  val = val & 4294967285U;
  if ((dev->flags & 256U) != 0U || (val & 256U) != 0U) {
    val = val | 8U;
    bw32((struct b44 const *)bp, 1024UL, (unsigned long )val);
  } else {
    zero[0] = 0U;
    zero[1] = 0U;
    zero[2] = 0U;
    zero[3] = 0U;
    zero[4] = 0U;
    zero[5] = 0U;
    i = 1;
    __b44_set_mac_addr(bp);
    if ((dev->flags & 512U) != 0U || dev->mc.count > 32) {
      val = val | 2U;
    } else {
      i = __b44_load_mcast(bp, dev);
    }
    goto ldv_30298;
    ldv_30297:
    __b44_cam_write(bp, (unsigned char *)(& zero), i);
    i = i + 1;
    ldv_30298: ;
    if (i <= 63) {
      goto ldv_30297;
    } else {
    }
    bw32((struct b44 const *)bp, 1024UL, (unsigned long )val);
    tmp___1 = br32((struct b44 const *)bp, 1064UL);
    val = (u32 )tmp___1;
    bw32((struct b44 const *)bp, 1064UL, (unsigned long )(val | 1U));
  }
  return;
}
}
static void b44_set_rx_mode(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  spin_lock_irq(& bp->lock);
  __b44_set_rx_mode(dev);
  spin_unlock_irq(& bp->lock);
  return;
}
}
static u32 b44_get_msglevel(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  return (bp->msg_enable);
}
}
static void b44_set_msglevel(struct net_device *dev , u32 value )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  bp->msg_enable = value;
  return;
}
}
static void b44_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct b44 *bp ;
  void *tmp ;
  struct ssb_bus *bus ;
  char const *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  bus = (bp->sdev)->bus;
  strlcpy((char *)(& info->driver), "b44", 32UL);
  strlcpy((char *)(& info->version), "2.0", 32UL);
  switch ((unsigned int )bus->bustype) {
  case 1U:
  tmp___0 = pci_name((struct pci_dev const *)bus->ldv_29536.host_pci);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  goto ldv_30320;
  case 0U:
  strlcpy((char *)(& info->bus_info), "SSB", 32UL);
  goto ldv_30320;
  case 2U: ;
  case 3U:
  __ret_warn_on = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/vladimir/commit-test/commit-test-work/task-070--linux-stable--dir/work/current--X--drivers/net/b44.ko--X--defaultlinux-stable-073676f-1--X--114_1a--X--cpachecker/linux-stable-073676f-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/114_1a/drivers/net/b44.c.prepared",
                       1767);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_30320;
  }
  ldv_30320: ;
  return;
}
}
static int b44_nway_reset(struct net_device *dev )
{
  struct b44 *bp ;
  void *tmp ;
  u32 bmcr ;
  int r ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  spin_lock_irq(& bp->lock);
  b44_readphy(bp, 0, & bmcr);
  b44_readphy(bp, 0, & bmcr);
  r = -22;
  if ((bmcr & 4096U) != 0U) {
    b44_writephy(bp, 0, bmcr | 512U);
    r = 0;
  } else {
  }
  spin_unlock_irq(& bp->lock);
  return (r);
}
}
static int b44_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct b44 *bp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  cmd->supported = 64U;
  cmd->supported = cmd->supported | 527U;
  cmd->advertising = 0U;
  if ((bp->flags & 16777216U) != 0U) {
    cmd->advertising = cmd->advertising | 1U;
  } else {
  }
  if ((bp->flags & 33554432U) != 0U) {
    cmd->advertising = cmd->advertising | 2U;
  } else {
  }
  if ((bp->flags & 67108864U) != 0U) {
    cmd->advertising = cmd->advertising | 4U;
  } else {
  }
  if ((bp->flags & 134217728U) != 0U) {
    cmd->advertising = cmd->advertising | 8U;
  } else {
  }
  cmd->advertising = cmd->advertising | 24576U;
  cmd->speed = (bp->flags & 131072U) != 0U ? 100U : 10U;
  cmd->duplex = (bp->flags & 65536U) != 0U;
  cmd->port = 0U;
  cmd->phy_address = bp->phy_addr;
  cmd->transceiver = (bp->flags & 268435456U) == 0U;
  cmd->autoneg = (bp->flags & 1048576U) == 0U;
  if ((unsigned int )cmd->autoneg == 1U) {
    cmd->advertising = cmd->advertising | 64U;
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 == 0) {
    cmd->speed = 0U;
    cmd->duplex = 255U;
  } else {
  }
  cmd->maxtxpkt = 0U;
  cmd->maxrxpkt = 0U;
  return (0);
}
}
static int b44_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct b44 *bp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  if ((unsigned int )cmd->autoneg == 1U) {
    if ((cmd->advertising & 48U) != 0U) {
      return (-22);
    } else {
    }
  } else
  if (((unsigned int )cmd->speed != 100U && (unsigned int )cmd->speed != 10U) || ((unsigned int )cmd->duplex != 0U && (unsigned int )cmd->duplex != 1U)) {
    return (-22);
  } else {
  }
  spin_lock_irq(& bp->lock);
  if ((unsigned int )cmd->autoneg == 1U) {
    bp->flags = bp->flags & 4042063871U;
    if (cmd->advertising == 0U) {
      bp->flags = bp->flags | 251658240U;
    } else {
      if ((int )cmd->advertising & 1) {
        bp->flags = bp->flags | 16777216U;
      } else {
      }
      if ((cmd->advertising & 2U) != 0U) {
        bp->flags = bp->flags | 33554432U;
      } else {
      }
      if ((cmd->advertising & 4U) != 0U) {
        bp->flags = bp->flags | 67108864U;
      } else {
      }
      if ((cmd->advertising & 8U) != 0U) {
        bp->flags = bp->flags | 134217728U;
      } else {
      }
    }
  } else {
    bp->flags = bp->flags | 1048576U;
    bp->flags = bp->flags & 4294770687U;
    if ((unsigned int )cmd->speed == 100U) {
      bp->flags = bp->flags | 131072U;
    } else {
    }
    if ((unsigned int )cmd->duplex == 1U) {
      bp->flags = bp->flags | 65536U;
    } else {
    }
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 != 0) {
    b44_setup_phy(bp);
  } else {
  }
  spin_unlock_irq(& bp->lock);
  return (0);
}
}
static void b44_get_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  ering->rx_max_pending = 511U;
  ering->rx_pending = bp->rx_pending;
  return;
}
}
static int b44_set_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  if (((ering->rx_pending > 511U || ering->rx_mini_pending != 0U) || ering->rx_jumbo_pending != 0U) || ering->tx_pending > 511U) {
    return (-22);
  } else {
  }
  spin_lock_irq(& bp->lock);
  bp->rx_pending = ering->rx_pending;
  bp->tx_pending = ering->tx_pending;
  b44_halt(bp);
  b44_init_rings(bp);
  b44_init_hw(bp, 1);
  netif_wake_queue(bp->dev);
  spin_unlock_irq(& bp->lock);
  b44_enable_ints(bp);
  return (0);
}
}
static void b44_get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  epause->autoneg = (bp->flags & 32768U) != 0U;
  epause->rx_pause = (bp->flags & 524288U) != 0U;
  epause->tx_pause = (bp->flags & 262144U) != 0U;
  return;
}
}
static int b44_set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  spin_lock_irq(& bp->lock);
  if (epause->autoneg != 0U) {
    bp->flags = bp->flags | 32768U;
  } else {
    bp->flags = bp->flags & 4294934527U;
  }
  if (epause->rx_pause != 0U) {
    bp->flags = bp->flags | 524288U;
  } else {
    bp->flags = bp->flags & 4294443007U;
  }
  if (epause->tx_pause != 0U) {
    bp->flags = bp->flags | 262144U;
  } else {
    bp->flags = bp->flags & 4294705151U;
  }
  if ((bp->flags & 32768U) != 0U) {
    b44_halt(bp);
    b44_init_rings(bp);
    b44_init_hw(bp, 1);
  } else {
    __b44_set_flow_ctrl(bp, bp->flags);
  }
  spin_unlock_irq(& bp->lock);
  b44_enable_ints(bp);
  return (0);
}
}
static void b44_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  size_t __len ;
  void *__ret ;
  {
  switch (stringset) {
  case 1U:
  __len = 1504UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& b44_gstrings), __len);
  } else {
    __ret = memcpy((void *)data, (void const *)(& b44_gstrings), __len);
  }
  goto ldv_30371;
  }
  ldv_30371: ;
  return;
}
}
static int b44_get_sset_count(struct net_device *dev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (47);
  default: ;
  return (-95);
  }
}
}
static void b44_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                  u64 *data )
{
  struct b44 *bp ;
  void *tmp ;
  u32 *val ;
  u32 i ;
  u64 *tmp___0 ;
  u32 *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  val = & bp->hw_stats.tx_good_octets;
  spin_lock_irq(& bp->lock);
  b44_stats_update(bp);
  i = 0U;
  goto ldv_30391;
  ldv_30390:
  tmp___0 = data;
  data = data + 1;
  tmp___1 = val;
  val = val + 1;
  *tmp___0 = (u64 )*tmp___1;
  i = i + 1U;
  ldv_30391: ;
  if (i <= 46U) {
    goto ldv_30390;
  } else {
  }
  spin_unlock_irq(& bp->lock);
  return;
}
}
static void b44_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  wol->supported = 32U;
  if ((int )bp->flags < 0) {
    wol->wolopts = 32U;
  } else {
    wol->wolopts = 0U;
  }
  memset((void *)(& wol->sopass), 0, 6UL);
  return;
}
}
static int b44_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct b44 *bp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp;
  spin_lock_irq(& bp->lock);
  if ((wol->wolopts & 32U) != 0U) {
    bp->flags = bp->flags | 2147483648U;
  } else {
    bp->flags = bp->flags & 2147483647U;
  }
  spin_unlock_irq(& bp->lock);
  return (0);
}
}
static struct ethtool_ops const b44_ethtool_ops =
     {& b44_get_settings, & b44_set_settings, & b44_get_drvinfo, 0, 0, & b44_get_wol,
    & b44_set_wol, & b44_get_msglevel, & b44_set_msglevel, & b44_nway_reset, & ethtool_op_get_link,
    0, 0, 0, 0, 0, & b44_get_ringparam, & b44_set_ringparam, & b44_get_pauseparam,
    & b44_set_pauseparam, 0, 0, 0, 0, 0, 0, 0, 0, 0, & b44_get_strings, 0, & b44_get_ethtool_stats,
    0, 0, 0, 0, 0, 0, 0, 0, & b44_get_sset_count, 0, 0, 0, 0, 0, 0};
static int b44_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp ;
  struct b44 *bp ;
  void *tmp___0 ;
  int err ;
  int tmp___1 ;
  {
  tmp = if_mii(ifr);
  data = tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp___0;
  err = -22;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1 == 0) {
    goto out;
  } else {
  }
  spin_lock_irq(& bp->lock);
  err = generic_mii_ioctl(& bp->mii_if, data, cmd, 0);
  spin_unlock_irq(& bp->lock);
  out: ;
  return (err);
}
}
static int b44_get_invariants(struct b44 *bp )
{
  struct ssb_device *sdev ;
  int err ;
  u8 *addr ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  sdev = bp->sdev;
  err = 0;
  bp->dma_offset = ssb_dma_translation(sdev);
  if ((unsigned int )(sdev->bus)->bustype == 0U && instance > 1) {
    addr = (u8 *)(& (sdev->bus)->sprom.et1mac);
    bp->phy_addr = (sdev->bus)->sprom.et1phyaddr;
  } else {
    addr = (u8 *)(& (sdev->bus)->sprom.et0mac);
    bp->phy_addr = (sdev->bus)->sprom.et0phyaddr;
  }
  bp->phy_addr = (unsigned int )bp->phy_addr & 31U;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(bp->dev)->dev_addr, (void const *)addr, __len);
  } else {
    __ret = memcpy((void *)(bp->dev)->dev_addr, (void const *)addr, __len);
  }
  tmp = is_valid_ether_addr((u8 const *)(bp->dev)->dev_addr);
  if (tmp == 0) {
    printk("<3>b44: Invalid MAC address found in EEPROM\n");
    return (-22);
  } else {
  }
  __len___0 = (size_t )(bp->dev)->addr_len;
  __ret___0 = memcpy((void *)(& (bp->dev)->perm_addr), (void const *)(bp->dev)->dev_addr,
                               __len___0);
  bp->imask = 16907392U;
  if ((unsigned int )(bp->sdev)->id.revision > 6U) {
    bp->flags = bp->flags | 1U;
  } else {
  }
  return (err);
}
}
static struct net_device_ops const b44_netdev_ops =
     {0, 0, & b44_open, & b44_close, & b44_start_xmit, 0, 0, 0, & b44_set_rx_mode, & b44_set_mac_addr,
    & eth_validate_addr, & b44_ioctl, 0, & b44_change_mtu, 0, & b44_tx_timeout, & b44_get_stats,
    0, 0, 0, & b44_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int b44_init_one(struct ssb_device *sdev , struct ssb_device_id const *ent )
{
  int b44_version_printed ;
  struct net_device *dev ;
  struct b44 *bp ;
  int err ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  char const *tmp___8 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  int tmp___11 ;
  char const *tmp___12 ;
  char const *tmp___13 ;
  char const *tmp___14 ;
  {
  b44_version_printed = 0;
  instance = instance + 1;
  tmp = b44_version_printed;
  b44_version_printed = b44_version_printed + 1;
  if (tmp == 0) {
    printk("<6>b44: %s", (char *)(& version));
  } else {
  }
  dev = alloc_etherdev_mq(704, 1U);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    tmp___0 = dev_name((struct device const *)sdev->dev);
    tmp___1 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Etherdev alloc failed, aborting\n", tmp___1, tmp___0);
    err = -12;
    goto out;
  } else {
  }
  dev->dev.parent = sdev->dev;
  dev->features = dev->features;
  tmp___2 = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp___2;
  bp->sdev = sdev;
  bp->dev = dev;
  bp->force_copybreak = 0U;
  bp->msg_enable = netif_msg_init(b44_debug, 255);
  spinlock_check(& bp->lock);
  __raw_spin_lock_init(& bp->lock.ldv_5754.rlock, "&(&bp->lock)->rlock", & __key);
  bp->rx_pending = 200U;
  bp->tx_pending = 511U;
  dev->netdev_ops = & b44_netdev_ops;
  netif_napi_add(dev, & bp->napi, & b44_poll, 64);
  dev->watchdog_timeo = 1250;
  dev->irq = sdev->irq;
  dev->ethtool_ops = & b44_ethtool_ops;
  ldv_netif_carrier_off_3(dev);
  err = ssb_bus_powerup(sdev->bus, 0);
  if (err != 0) {
    tmp___3 = dev_name((struct device const *)sdev->dev);
    tmp___4 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Failed to powerup the bus\n", tmp___4, tmp___3);
    goto err_out_free_dev;
  } else {
  }
  err = ssb_dma_set_mask(sdev, 1073741823ULL);
  if (err != 0) {
    tmp___5 = dev_name((struct device const *)sdev->dev);
    tmp___6 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Required 30BIT DMA mask unsupported by the system\n", tmp___6,
           tmp___5);
    goto err_out_powerdown;
  } else {
  }
  err = b44_get_invariants(bp);
  if (err != 0) {
    tmp___7 = dev_name((struct device const *)sdev->dev);
    tmp___8 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Problem fetching invariants of chip, aborting\n", tmp___8, tmp___7);
    goto err_out_powerdown;
  } else {
  }
  bp->mii_if.dev = dev;
  bp->mii_if.mdio_read = & b44_mii_read;
  bp->mii_if.mdio_write = & b44_mii_write;
  bp->mii_if.phy_id = (int )bp->phy_addr;
  bp->mii_if.phy_id_mask = 31;
  bp->mii_if.reg_num_mask = 31;
  bp->flags = bp->flags | 251658240U;
  bp->flags = bp->flags | 32768U;
  err = ldv_register_netdev_4(dev);
  if (err != 0) {
    tmp___9 = dev_name((struct device const *)sdev->dev);
    tmp___10 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Cannot register net device, aborting\n", tmp___10, tmp___9);
    goto err_out_powerdown;
  } else {
  }
  ssb_set_drvdata(sdev, (void *)dev);
  b44_chip_reset(bp, 4);
  tmp___11 = b44_phy_reset(bp);
  if (tmp___11 < 0) {
    bp->phy_addr = 30U;
  } else {
  }
  tmp___12 = netdev_name((struct net_device const *)dev);
  tmp___13 = dev_name((struct device const *)dev->dev.parent);
  tmp___14 = dev_driver_string((struct device const *)dev->dev.parent);
  printk("<6>%s %s: %s: Broadcom 44xx/47xx 10/100BaseT Ethernet %pM\n", tmp___14,
         tmp___13, tmp___12, dev->dev_addr);
  return (0);
  err_out_powerdown:
  ssb_bus_may_powerdown(sdev->bus);
  err_out_free_dev:
  free_netdev(dev);
  out: ;
  return (err);
}
}
static void b44_remove_one(struct ssb_device *sdev )
{
  struct net_device *dev ;
  void *tmp ;
  {
  tmp = ssb_get_drvdata(sdev);
  dev = (struct net_device *)tmp;
  unregister_netdev(dev);
  ssb_device_disable(sdev, 0U);
  ssb_bus_may_powerdown(sdev->bus);
  free_netdev(dev);
  ssb_pcihost_set_power_state(sdev, 3);
  ssb_set_drvdata(sdev, 0);
  return;
}
}
static int b44_suspend(struct ssb_device *sdev , pm_message_t state )
{
  struct net_device *dev ;
  void *tmp ;
  struct b44 *bp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ssb_get_drvdata(sdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1 == 0) {
    return (0);
  } else {
  }
  del_timer_sync(& bp->timer);
  spin_lock_irq(& bp->lock);
  b44_halt(bp);
  ldv_netif_carrier_off_5(bp->dev);
  netif_device_detach(bp->dev);
  b44_free_rings(bp);
  spin_unlock_irq(& bp->lock);
  free_irq(dev->irq, (void *)dev);
  if ((int )bp->flags < 0) {
    b44_init_hw(bp, 3);
    b44_setup_wol(bp);
  } else {
  }
  ssb_pcihost_set_power_state(sdev, 3);
  return (0);
}
}
static int b44_resume(struct ssb_device *sdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct b44 *bp ;
  void *tmp___0 ;
  int rc ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  {
  tmp = ssb_get_drvdata(sdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct b44 *)tmp___0;
  rc = 0;
  rc = ssb_bus_powerup(sdev->bus, 0);
  if (rc != 0) {
    tmp___1 = dev_name((struct device const *)sdev->dev);
    tmp___2 = dev_driver_string((struct device const *)sdev->dev);
    printk("<3>%s %s: Failed to powerup the bus\n", tmp___2, tmp___1);
    return (rc);
  } else {
  }
  tmp___3 = netif_running((struct net_device const *)dev);
  if (tmp___3 == 0) {
    return (0);
  } else {
  }
  rc = request_irq(dev->irq, & b44_interrupt, 128UL, (char const *)(& dev->name),
                   (void *)dev);
  if (rc != 0) {
    tmp___4 = netdev_name((struct net_device const *)dev);
    tmp___5 = dev_name((struct device const *)dev->dev.parent);
    tmp___6 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<3>%s %s: %s: request_irq failed\n", tmp___6, tmp___5, tmp___4);
    return (rc);
  } else {
  }
  spin_lock_irq(& bp->lock);
  b44_init_rings(bp);
  b44_init_hw(bp, 1);
  netif_device_attach(bp->dev);
  spin_unlock_irq(& bp->lock);
  b44_enable_ints(bp);
  netif_wake_queue(dev);
  mod_timer(& bp->timer, (unsigned long )jiffies + 1UL);
  return (0);
}
}
static struct ssb_driver b44_ssb_driver =
     {"b44", (struct ssb_device_id const *)(& b44_ssb_tbl), & b44_init_one, & b44_remove_one,
    & b44_suspend, & b44_resume, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0}};
__inline static int b44_pci_init(void)
{
  int err ;
  {
  err = 0;
  err = ssb_pcihost_register(& b44_pci_driver);
  return (err);
}
}
__inline static void b44_pci_exit(void)
{
  {
  ssb_pcihost_unregister(& b44_pci_driver);
  return;
}
}
static int b44_init(void)
{
  unsigned int dma_desc_align_size ;
  int tmp ;
  int err ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  {
  tmp = dma_get_cache_alignment();
  dma_desc_align_size = (unsigned int )tmp;
  dma_desc_align_mask = (int )(- dma_desc_align_size);
  __max1 = dma_desc_align_size;
  __max2 = 8U;
  dma_desc_sync_size = (int )(__max1 > __max2 ? __max1 : __max2);
  err = b44_pci_init();
  if (err != 0) {
    return (err);
  } else {
  }
  err = ssb_driver_register(& b44_ssb_driver);
  if (err != 0) {
    b44_pci_exit();
  } else {
  }
  return (err);
}
}
static void b44_cleanup(void)
{
  {
  ssb_driver_unregister(& b44_ssb_driver);
  b44_pci_exit();
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct net_device *var_group1 ;
  struct ethtool_drvinfo *var_group2 ;
  struct ethtool_cmd *var_group3 ;
  struct ethtool_wolinfo *var_group4 ;
  struct ethtool_ringparam *var_group5 ;
  struct ethtool_pauseparam *var_group6 ;
  u32 var_b44_set_msglevel_59_p1 ;
  u32 var_b44_get_strings_68_p1 ;
  u8 *var_b44_get_strings_68_p2 ;
  int var_b44_get_sset_count_69_p1 ;
  struct ethtool_stats *var_group7 ;
  u64 *var_b44_get_ethtool_stats_70_p2 ;
  int res_b44_open_45 ;
  int res_b44_close_53 ;
  struct sk_buff *var_group8 ;
  void *var_b44_set_mac_addr_43_p1 ;
  struct ifreq *var_group9 ;
  int var_b44_ioctl_73_p2 ;
  int var_b44_change_mtu_34_p1 ;
  struct ssb_device *var_group10 ;
  struct ssb_device_id const *var_b44_init_one_75_p1 ;
  int res_b44_init_one_75 ;
  pm_message_t var_b44_suspend_77_p1 ;
  int var_b44_interrupt_31_p0 ;
  void *var_b44_interrupt_31_p1 ;
  unsigned long var_b44_timer_25_p0 ;
  int ldv_s_b44_netdev_ops_net_device_ops ;
  int ldv_s_b44_ssb_driver_ssb_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_b44_netdev_ops_net_device_ops = 0;
  ldv_s_b44_ssb_driver_ssb_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = b44_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_30563;
  ldv_30562:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  b44_get_drvinfo(var_group1, var_group2);
  goto ldv_30529;
  case 1:
  ldv_handler_precall();
  b44_get_settings(var_group1, var_group3);
  goto ldv_30529;
  case 2:
  ldv_handler_precall();
  b44_set_settings(var_group1, var_group3);
  goto ldv_30529;
  case 3:
  ldv_handler_precall();
  b44_nway_reset(var_group1);
  goto ldv_30529;
  case 4:
  ldv_handler_precall();
  b44_get_wol(var_group1, var_group4);
  goto ldv_30529;
  case 5:
  ldv_handler_precall();
  b44_set_wol(var_group1, var_group4);
  goto ldv_30529;
  case 6:
  ldv_handler_precall();
  b44_get_ringparam(var_group1, var_group5);
  goto ldv_30529;
  case 7:
  ldv_handler_precall();
  b44_set_ringparam(var_group1, var_group5);
  goto ldv_30529;
  case 8:
  ldv_handler_precall();
  b44_get_pauseparam(var_group1, var_group6);
  goto ldv_30529;
  case 9:
  ldv_handler_precall();
  b44_set_pauseparam(var_group1, var_group6);
  goto ldv_30529;
  case 10:
  ldv_handler_precall();
  b44_get_msglevel(var_group1);
  goto ldv_30529;
  case 11:
  ldv_handler_precall();
  b44_set_msglevel(var_group1, var_b44_set_msglevel_59_p1);
  goto ldv_30529;
  case 12:
  ldv_handler_precall();
  b44_get_strings(var_group1, var_b44_get_strings_68_p1, var_b44_get_strings_68_p2);
  goto ldv_30529;
  case 13:
  ldv_handler_precall();
  b44_get_sset_count(var_group1, var_b44_get_sset_count_69_p1);
  goto ldv_30529;
  case 14:
  ldv_handler_precall();
  b44_get_ethtool_stats(var_group1, var_group7, var_b44_get_ethtool_stats_70_p2);
  goto ldv_30529;
  case 15: ;
  if (ldv_s_b44_netdev_ops_net_device_ops == 0) {
    ldv_handler_precall();
    res_b44_open_45 = b44_open(var_group1);
    ldv_check_return_value(res_b44_open_45);
    if (res_b44_open_45 < 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_b44_netdev_ops_net_device_ops = ldv_s_b44_netdev_ops_net_device_ops + 1;
  } else {
  }
  goto ldv_30529;
  case 16: ;
  if (ldv_s_b44_netdev_ops_net_device_ops == 1) {
    ldv_handler_precall();
    res_b44_close_53 = b44_close(var_group1);
    ldv_check_return_value(res_b44_close_53);
    if (res_b44_close_53 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_b44_netdev_ops_net_device_ops = 0;
  } else {
  }
  goto ldv_30529;
  case 17:
  ldv_handler_precall();
  b44_start_xmit(var_group8, var_group1);
  goto ldv_30529;
  case 18:
  ldv_handler_precall();
  b44_get_stats(var_group1);
  goto ldv_30529;
  case 19:
  ldv_handler_precall();
  b44_set_rx_mode(var_group1);
  goto ldv_30529;
  case 20:
  ldv_handler_precall();
  b44_set_mac_addr(var_group1, var_b44_set_mac_addr_43_p1);
  goto ldv_30529;
  case 21:
  ldv_handler_precall();
  b44_ioctl(var_group1, var_group9, var_b44_ioctl_73_p2);
  goto ldv_30529;
  case 22:
  ldv_handler_precall();
  b44_tx_timeout(var_group1);
  goto ldv_30529;
  case 23:
  ldv_handler_precall();
  b44_change_mtu(var_group1, var_b44_change_mtu_34_p1);
  goto ldv_30529;
  case 24:
  ldv_handler_precall();
  b44_poll_controller(var_group1);
  goto ldv_30529;
  case 25: ;
  if (ldv_s_b44_ssb_driver_ssb_driver == 0) {
    res_b44_init_one_75 = b44_init_one(var_group10, var_b44_init_one_75_p1);
    ldv_check_return_value(res_b44_init_one_75);
    ldv_check_return_value_probe(res_b44_init_one_75);
    if (res_b44_init_one_75 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_b44_ssb_driver_ssb_driver = ldv_s_b44_ssb_driver_ssb_driver + 1;
  } else {
  }
  goto ldv_30529;
  case 26: ;
  if (ldv_s_b44_ssb_driver_ssb_driver == 1) {
    ldv_handler_precall();
    b44_remove_one(var_group10);
    ldv_s_b44_ssb_driver_ssb_driver = 0;
  } else {
  }
  goto ldv_30529;
  case 27:
  ldv_handler_precall();
  b44_suspend(var_group10, var_b44_suspend_77_p1);
  goto ldv_30529;
  case 28:
  ldv_handler_precall();
  b44_resume(var_group10);
  goto ldv_30529;
  case 29:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  b44_interrupt(var_b44_interrupt_31_p0, var_b44_interrupt_31_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_30529;
  case 30:
  ldv_handler_precall();
  b44_timer(var_b44_timer_25_p0);
  goto ldv_30529;
  default: ;
  goto ldv_30529;
  }
  ldv_30529: ;
  ldv_30563:
  tmp___1 = __VERIFIER_nondet_int();
  if ((tmp___1 != 0 || ldv_s_b44_netdev_ops_net_device_ops != 0) || ldv_s_b44_ssb_driver_ssb_driver != 0) {
    goto ldv_30562;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  b44_cleanup();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_netif_carrier_off_1(struct net_device *ldv_func_arg1 )
{
  {
  ldv_turn_off_carrier_detection();
  return;
}
}
void ldv_netif_carrier_off_2(struct net_device *ldv_func_arg1 )
{
  {
  ldv_turn_off_carrier_detection();
  return;
}
}
void ldv_netif_carrier_off_3(struct net_device *ldv_func_arg1 )
{
  {
  ldv_turn_off_carrier_detection();
  return;
}
}
int ldv_register_netdev_4(struct net_device *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_register_netdev();
  return (tmp);
}
}
void ldv_netif_carrier_off_5(struct net_device *ldv_func_arg1 )
{
  {
  ldv_turn_off_carrier_detection();
  return;
}
}
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
int ldv_carrier = 2;
int ldv_register = 0;
int ldv_register_netdev(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  if (tmp) {
    ldv_register = 1;
    if (ldv_carrier) {
    } else {
      ldv_error();
    }
    return (0);
  } else {
    return (-1);
  }
}
}
void ldv_turn_off_carrier_detection(void)
{
  {
  if (ldv_register == 0 && ldv_carrier == 2) {
    ldv_carrier = 0;
  } else
  if (ldv_carrier == 2) {
    ldv_carrier = 1;
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ssb_driver_register(struct ssb_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
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
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_etherdev_mq(int arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct net_device));
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
const char *dev_driver_string(const struct device *arg0) {
  return ldv_malloc(sizeof(char));
}
void dev_kfree_skb_any(struct sk_buff *arg0) {
  return;
}
void dev_kfree_skb_irq(struct sk_buff *arg0) {
  return;
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int generic_mii_ioctl(struct mii_if_info *arg0, struct mii_ioctl_data *arg1, int arg2, unsigned int *arg3) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void ldv_initialize() {
  return;
}
void lockdep_rcu_dereference(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
int __VERIFIER_nondet_int(void);
int ssb_bus_may_powerdown(struct ssb_bus *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ssb_bus_powerup(struct ssb_bus *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ssb_clockspeed(struct ssb_bus *arg0) {
  return __VERIFIER_nondet_uint();
}
void ssb_device_disable(struct ssb_device *arg0, u32 arg1) {
  return;
}
void ssb_device_enable(struct ssb_device *arg0, u32 arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_device_is_enabled(struct ssb_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *ssb_dma_alloc_consistent(struct ssb_device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3) {
  return ldv_malloc(0UL);
}
void ssb_dma_free_consistent(struct ssb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, gfp_t arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_dma_set_mask(struct ssb_device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ssb_dma_translation(struct ssb_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void ssb_driver_unregister(struct ssb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_pcicore_dev_irqvecs_enable(struct ssb_pcicore *arg0, struct ssb_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ssb_pcihost_register(struct pci_driver *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
