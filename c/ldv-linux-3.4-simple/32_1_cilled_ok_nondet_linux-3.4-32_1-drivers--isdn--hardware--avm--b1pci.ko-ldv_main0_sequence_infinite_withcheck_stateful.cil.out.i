extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned int __u32;
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
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int u_int;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef __u32 __wsum;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
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
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct net_device;
struct net_device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct page;
struct mm_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct device;
struct pci_dev;
struct pci_dev;
struct device;
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
   char start_comm[16] ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct pci_bus;
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct pci_dev;
struct pci_dev;
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct file;
struct task_struct;
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
struct file;
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
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
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
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
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
struct module;
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
                    size_t count ) ;
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
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
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
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
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
struct address_space;
struct address_space;
union __anonunion____missing_field_name_202 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_206 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_205 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_206 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_204 {
   union __anonunion____missing_field_name_205 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_203 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_204 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_201 {
   union __anonunion____missing_field_name_202 __annonCompField33 ;
   union __anonunion____missing_field_name_203 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_208 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_207 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_208 __annonCompField39 ;
};
union __anonunion____missing_field_name_209 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_201 __annonCompField38 ;
   union __anonunion____missing_field_name_207 __annonCompField40 ;
   union __anonunion____missing_field_name_209 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_211 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_210 {
   struct __anonstruct_vm_set_211 vm_set ;
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
   union __anonunion_shared_210 shared ;
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
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
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
   unsigned long saved_auxv[44] ;
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
struct vm_area_struct;
struct page;
struct module;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   struct kmem_cache_node *node[1 << 10] ;
};
struct module;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
struct sk_buff;
struct klist_node;
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
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
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
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
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
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct task_struct;
struct task_struct;
struct mempolicy;
struct anon_vma;
struct mm_struct;
struct vm_area_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t const *from , nodemask_t const *to ,
                  unsigned long flags ) ;
};
struct page;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
typedef s32 dma_cookie_t;
struct dma_attrs {
   unsigned long flags[((4UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device *dev , size_t size , dma_addr_t *dma_handle , gfp_t gfp ,
                  struct dma_attrs *attrs ) ;
   void (*free)(struct device *dev , size_t size , void *vaddr , dma_addr_t dma_handle ,
                struct dma_attrs *attrs ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs *attrs ) ;
   dma_addr_t (*map_page)(struct device *dev , struct page *page , unsigned long offset ,
                          size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
   void (*unmap_page)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ,
                      struct dma_attrs *attrs ) ;
   int (*map_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                 struct dma_attrs *attrs ) ;
   void (*unmap_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                    struct dma_attrs *attrs ) ;
   void (*sync_single_for_cpu)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ) ;
   void (*sync_single_for_device)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                                  enum dma_data_direction dir ) ;
   void (*sync_sg_for_cpu)(struct device *dev , struct scatterlist *sg , int nents ,
                           enum dma_data_direction dir ) ;
   void (*sync_sg_for_device)(struct device *dev , struct scatterlist *sg , int nents ,
                              enum dma_data_direction dir ) ;
   int (*mapping_error)(struct device *dev , dma_addr_t dma_addr ) ;
   int (*dma_supported)(struct device *dev , u64 mask ) ;
   int (*set_dma_mask)(struct device *dev , u64 mask ) ;
   int is_phys ;
};
struct device;
struct scatterlist;
struct bus_type;
struct device;
struct dma_attrs;
struct scatterlist;
struct net_device;
struct scatterlist;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned int mask ;
   unsigned long data[32UL / sizeof(unsigned long )] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct sk_buff;
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_222 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_221 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_222 __annonCompField42 ;
};
union __anonunion____missing_field_name_223 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48] __attribute__((__aligned__(8))) ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_221 __annonCompField43 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff *skb ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion____missing_field_name_223 __annonCompField44 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct module;
struct proc_dir_entry;
struct proc_dir_entry;
struct module;
struct proc_dir_entry;
struct task_struct;
struct mm_struct;
struct task_struct;
struct device;
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
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct device;
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
struct pcie_link_state;
struct pci_vpd;
struct pci_vpd;
struct pci_sriov;
struct pci_sriov;
struct pci_ats;
struct pci_ats;
struct pci_driver;
union __anonunion____missing_field_name_234 {
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
   u8 pcie_type : 4 ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17] ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int is_pcie : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17] ;
   struct bin_attribute *res_attr_wc[17] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_234 __annonCompField45 ;
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
   struct resource *resource[4] ;
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
   char name[48] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus *bus , unsigned int devfn , int where , int size , u32 *val ) ;
   int (*write)(struct pci_bus *bus , unsigned int devfn , int where , int size ,
                u32 val ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev *dev , enum pci_channel_state error ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev *dev ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev *dev ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev *dev ) ;
   void (*resume)(struct pci_dev *dev ) ;
};
struct module;
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev *dev , struct pci_device_id const *id ) ;
   void (*remove)(struct pci_dev *dev ) ;
   int (*suspend)(struct pci_dev *dev , pm_message_t state ) ;
   int (*suspend_late)(struct pci_dev *dev , pm_message_t state ) ;
   int (*resume_early)(struct pci_dev *dev ) ;
   int (*resume)(struct pci_dev *dev ) ;
   void (*shutdown)(struct pci_dev *dev ) ;
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct capi_register_params {
   __u32 level3cnt ;
   __u32 datablkcnt ;
   __u32 datablklen ;
};
typedef struct capi_register_params capi_register_params;
struct capi_version {
   __u32 majorversion ;
   __u32 minorversion ;
   __u32 majormanuversion ;
   __u32 minormanuversion ;
};
typedef struct capi_version capi_version;
struct capi_profile {
   __u16 ncontroller ;
   __u16 nbchannel ;
   __u32 goptions ;
   __u32 support1 ;
   __u32 support2 ;
   __u32 support3 ;
   __u32 reserved[6] ;
   __u32 manu[5] ;
};
typedef struct capi_profile capi_profile;
struct capiloaddatapart {
   int user ;
   int len ;
   unsigned char *data ;
};
typedef struct capiloaddatapart capiloaddatapart;
struct capiloaddata {
   capiloaddatapart firmware ;
   capiloaddatapart configuration ;
};
typedef struct capiloaddata capiloaddata;
struct capicardparams {
   unsigned int port ;
   unsigned int irq ;
   int cardtype ;
   int cardnr ;
   unsigned int membase ;
};
typedef struct capicardparams capicardparams;
struct file_operations;
struct capi_ctr {
   struct module *owner ;
   void *driverdata ;
   char name[32] ;
   char *driver_name ;
   int (*load_firmware)(struct capi_ctr * , capiloaddata * ) ;
   void (*reset_ctr)(struct capi_ctr * ) ;
   void (*register_appl)(struct capi_ctr * , u16 appl , capi_register_params * ) ;
   void (*release_appl)(struct capi_ctr * , u16 appl ) ;
   u16 (*send_message)(struct capi_ctr * , struct sk_buff *skb ) ;
   char *(*procinfo)(struct capi_ctr * ) ;
   struct file_operations const *proc_fops ;
   u8 manu[64] ;
   capi_version version ;
   capi_profile profile ;
   u8 serial[8] ;
   unsigned long nrecvctlpkt ;
   unsigned long nrecvdatapkt ;
   unsigned long nsentctlpkt ;
   unsigned long nsentdatapkt ;
   int cnr ;
   unsigned short state ;
   int blocked ;
   int traceflag ;
   wait_queue_head_t state_wait_queue ;
   struct proc_dir_entry *procent ;
   char procfn[128] ;
};
struct capi_driver {
   char name[32] ;
   char revision[32] ;
   int (*add_card)(struct capi_driver *driver , capicardparams *data ) ;
   struct list_head list ;
};
enum avmcardtype {
    avm_b1isa = 0,
    avm_b1pci = 1,
    avm_b1pcmcia = 2,
    avm_m1 = 3,
    avm_m2 = 4,
    avm_t1isa = 5,
    avm_t1pci = 6,
    avm_c4 = 7,
    avm_c2 = 8
} ;
struct avmcard_dmabuf {
   long size ;
   u8 *dmabuf ;
   dma_addr_t dmaaddr ;
};
typedef struct avmcard_dmabuf avmcard_dmabuf;
struct avmcard_dmainfo {
   u32 recvlen ;
   avmcard_dmabuf recvbuf ;
   avmcard_dmabuf sendbuf ;
   struct sk_buff_head send_queue ;
   struct pci_dev *pcidev ;
};
typedef struct avmcard_dmainfo avmcard_dmainfo;
struct avmcard;
struct avmctrl_info {
   char cardname[32] ;
   int versionlen ;
   char versionbuf[1024] ;
   char *version[8] ;
   char infobuf[128] ;
   struct avmcard *card ;
   struct capi_ctr capi_ctrl ;
   struct list_head ncci_head ;
};
typedef struct avmctrl_info avmctrl_info;
struct avmcard {
   char name[32] ;
   spinlock_t lock ;
   unsigned int port ;
   unsigned int irq ;
   unsigned long membase ;
   enum avmcardtype cardtype ;
   unsigned char revision ;
   unsigned char class ;
   int cardnr ;
   char msgbuf[128] ;
   char databuf[2048] ;
   void *mbase ;
   u32 volatile csr ;
   avmcard_dmainfo *dma ;
   struct avmctrl_info *ctrlinfo ;
   u_int nr_controllers ;
   u_int nlogcontr ;
   struct list_head list ;
};
typedef struct avmcard avmcard;
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern int ( sprintf)(char *buf , char const *fmt , ...) ;
extern char *strcpy(char *dest , char const *src ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t start ,
                                         resource_size_t n , char const *name ,
                                         int flags ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void *ioremap_nocache(resource_size_t offset , unsigned long size ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size ) __attribute__((__no_instrument_function__)) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{ void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile *addr ) ;
__inline static void outb(unsigned char value , int port ) __attribute__((__no_instrument_function__)) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("out"
                       "b"
                       " %"
                       "b"
                       "0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char inb(int port )
{ unsigned char value ;
  {
  __asm__ volatile ("in"
                       "b"
                       " %w1, %"
                       "b"
                       "0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern void __const_udelay(unsigned long xloops ) ;
extern int __attribute__((__warn_unused_result__)) request_threaded_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         irqreturn_t (*thread_fn)(int ,
                                                                                                  void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev ) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev )
{ int tmp ;
  void *__cil_tmp7 ;
  irqreturn_t (*__cil_tmp8)(int , void * ) ;
  {
  {
  __cil_tmp7 = (void *)0;
  __cil_tmp8 = (irqreturn_t (*)(int , void * ))__cil_tmp7;
  tmp = (int )request_threaded_irq(irq, handler, __cil_tmp8, flags, name, dev);
  }
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern int __attribute__((__warn_unused_result__)) pci_enable_device(struct pci_dev *dev ) ;
extern void pci_set_master(struct pci_dev *dev ) ;
extern int __attribute__((__warn_unused_result__)) __pci_register_driver(struct pci_driver * ,
                                                                          struct module * ,
                                                                          char const *mod_name ) ;
extern void pci_unregister_driver(struct pci_driver *dev ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int attach_capi_ctr(struct capi_ctr * ) ;
extern int detach_capi_ctr(struct capi_ctr * ) ;
extern void register_capi_driver(struct capi_driver *driver ) ;
extern void unregister_capi_driver(struct capi_driver *driver ) ;
__inline static unsigned char b1outp(unsigned int base , unsigned short offset , unsigned char value ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char b1outp(unsigned int base , unsigned short offset , unsigned char value )
{ unsigned char tmp ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  {
  {
  __cil_tmp5 = (unsigned int )offset;
  __cil_tmp6 = base + __cil_tmp5;
  __cil_tmp7 = (int )__cil_tmp6;
  outb(value, __cil_tmp7);
  __cil_tmp8 = base + 4U;
  __cil_tmp9 = (int )__cil_tmp8;
  tmp = inb(__cil_tmp9);
  }
  return (tmp);
}
}
__inline static void b1_reset(unsigned int base ) __attribute__((__no_instrument_function__)) ;
__inline static void b1_reset(unsigned int base )
{ unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  {
  {
  b1outp(base, (unsigned short)16, (unsigned char)0);
  __ms = 110UL;
  }
  {
  while (1) {
    while_continue: ;
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp) {
    } else {
      goto while_break;
    }
    {
    __const_udelay(4295000UL);
    }
  }
  while_break: ;
  }
  {
  b1outp(base, (unsigned short)16, (unsigned char)1);
  __ms___0 = 110UL;
  }
  {
  while (1) {
    while_continue___0: ;
    tmp___0 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___0) {
    } else {
      goto while_break___0;
    }
    {
    __const_udelay(4295000UL);
    }
  }
  while_break___0: ;
  }
  {
  b1outp(base, (unsigned short)16, (unsigned char)0);
  __ms___1 = 110UL;
  }
  {
  while (1) {
    while_continue___1: ;
    tmp___1 = __ms___1;
    __ms___1 = __ms___1 - 1UL;
    if (tmp___1) {
    } else {
      goto while_break___1;
    }
    {
    __const_udelay(4295000UL);
    }
  }
  while_break___1: ;
  }
  return;
}
}
extern avmcard *b1_alloc_card(int nr_controllers ) ;
extern void b1_free_card(avmcard *card ) ;
extern int b1_detect(unsigned int base , enum avmcardtype cardtype ) ;
extern void b1_getrevision(avmcard *card ) ;
extern int b1_load_firmware(struct capi_ctr *ctrl , capiloaddata *data ) ;
extern void b1_reset_ctr(struct capi_ctr *ctrl ) ;
extern void b1_register_appl(struct capi_ctr *ctrl , u16 appl , capi_register_params *rp ) ;
extern void b1_release_appl(struct capi_ctr *ctrl , u16 appl ) ;
extern u16 b1_send_message(struct capi_ctr *ctrl , struct sk_buff *skb ) ;
extern irqreturn_t b1_interrupt(int interrupt , void *devptr ) ;
extern struct file_operations const b1ctl_proc_fops ;
extern avmcard_dmainfo *avmcard_dma_alloc(char *name , struct pci_dev * , long rsize ,
                                          long ssize ) ;
extern void avmcard_dma_free(avmcard_dmainfo * ) ;
extern int b1pciv4_detect(avmcard *card ) ;
extern void b1dma_reset(avmcard *card ) ;
extern irqreturn_t b1dma_interrupt(int interrupt , void *devptr ) ;
extern int b1dma_load_firmware(struct capi_ctr *ctrl , capiloaddata *data ) ;
extern void b1dma_reset_ctr(struct capi_ctr *ctrl ) ;
extern void b1dma_register_appl(struct capi_ctr *ctrl , u16 appl , capi_register_params *rp ) ;
extern void b1dma_release_appl(struct capi_ctr *ctrl , u16 appl ) ;
extern u16 b1dma_send_message(struct capi_ctr *ctrl , struct sk_buff *skb ) ;
extern struct file_operations const b1dmactl_proc_fops ;
static char *revision = (char *)"$Revision: 1.1.2.2 $";
static struct pci_device_id b1pci_pci_tbl[1] = { {(__u32 )4676, (__u32 )1792, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL}};
extern struct pci_device_id const __mod_pci_device_table __attribute__((__unused__,
__alias__("b1pci_pci_tbl"))) ;
static char const __mod_description41[51] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'C', (char const )'A', (char const )'P', (char const )'I',
        (char const )'4', (char const )'L', (char const )'i', (char const )'n',
        (char const )'u', (char const )'x', (char const )':', (char const )' ',
        (char const )'D', (char const )'r', (char const )'i', (char const )'v',
        (char const )'e', (char const )'r', (char const )' ', (char const )'f',
        (char const )'o', (char const )'r', (char const )' ', (char const )'A',
        (char const )'V', (char const )'M', (char const )' ', (char const )'B',
        (char const )'1', (char const )' ', (char const )'P', (char const )'C',
        (char const )'I', (char const )' ', (char const )'c', (char const )'a',
        (char const )'r', (char const )'d', (char const )'\000'};
static char const __mod_author42[21] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'C',
        (char const )'a', (char const )'r', (char const )'s', (char const )'t',
        (char const )'e', (char const )'n', (char const )' ', (char const )'P',
        (char const )'a', (char const )'e', (char const )'t', (char const )'h',
        (char const )'\000'};
static char const __mod_license43[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char *b1pci_procinfo(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct avmcard *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct avmcard *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct avmcard *__cil_tmp30 ;
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
  char *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  char *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  char *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  {
  __cil_tmp8 = (unsigned long )ctrl;
  __cil_tmp9 = __cil_tmp8 + 8;
  __cil_tmp10 = *((void **)__cil_tmp9);
  cinfo = (avmctrl_info *)__cil_tmp10;
  if (! cinfo) {
    return ((char *)"");
  } else {
  }
  {
  __cil_tmp11 = (unsigned long )cinfo;
  __cil_tmp12 = __cil_tmp11 + 1256;
  if (*((struct avmcard **)__cil_tmp12)) {
    __cil_tmp13 = (unsigned long )cinfo;
    __cil_tmp14 = __cil_tmp13 + 1256;
    __cil_tmp15 = *((struct avmcard **)__cil_tmp14);
    __cil_tmp16 = (unsigned long )__cil_tmp15;
    __cil_tmp17 = __cil_tmp16 + 76;
    __cil_tmp18 = *((unsigned char *)__cil_tmp17);
    tmp = (int )__cil_tmp18;
  } else {
    tmp = 0;
  }
  }
  {
  __cil_tmp19 = (unsigned long )cinfo;
  __cil_tmp20 = __cil_tmp19 + 1256;
  if (*((struct avmcard **)__cil_tmp20)) {
    __cil_tmp21 = (unsigned long )cinfo;
    __cil_tmp22 = __cil_tmp21 + 1256;
    __cil_tmp23 = *((struct avmcard **)__cil_tmp22);
    __cil_tmp24 = (unsigned long )__cil_tmp23;
    __cil_tmp25 = __cil_tmp24 + 60;
    tmp___0 = *((unsigned int *)__cil_tmp25);
  } else {
    tmp___0 = 0U;
  }
  }
  {
  __cil_tmp26 = (unsigned long )cinfo;
  __cil_tmp27 = __cil_tmp26 + 1256;
  if (*((struct avmcard **)__cil_tmp27)) {
    __cil_tmp28 = (unsigned long )cinfo;
    __cil_tmp29 = __cil_tmp28 + 1256;
    __cil_tmp30 = *((struct avmcard **)__cil_tmp29);
    __cil_tmp31 = (unsigned long )__cil_tmp30;
    __cil_tmp32 = __cil_tmp31 + 56;
    tmp___1 = *((unsigned int *)__cil_tmp32);
  } else {
    tmp___1 = 0U;
  }
  }
  {
  __cil_tmp33 = 0 * 8UL;
  __cil_tmp34 = 1064 + __cil_tmp33;
  __cil_tmp35 = (unsigned long )cinfo;
  __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
  if (*((char **)__cil_tmp36)) {
    __cil_tmp37 = 0 * 8UL;
    __cil_tmp38 = 1064 + __cil_tmp37;
    __cil_tmp39 = (unsigned long )cinfo;
    __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
    __cil_tmp41 = *((char **)__cil_tmp40);
    tmp___2 = (char const *)__cil_tmp41;
  } else {
    tmp___2 = "-";
  }
  }
  {
  __cil_tmp42 = 0 * 1UL;
  __cil_tmp43 = 0 + __cil_tmp42;
  __cil_tmp44 = (unsigned long )cinfo;
  __cil_tmp45 = __cil_tmp44 + __cil_tmp43;
  if (*((char *)__cil_tmp45)) {
    __cil_tmp46 = 0 * 1UL;
    __cil_tmp47 = 0 + __cil_tmp46;
    __cil_tmp48 = (unsigned long )cinfo;
    __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
    __cil_tmp50 = (char *)__cil_tmp49;
    tmp___3 = (char const *)__cil_tmp50;
  } else {
    tmp___3 = "-";
  }
  }
  {
  __cil_tmp51 = 0 * 1UL;
  __cil_tmp52 = 1128 + __cil_tmp51;
  __cil_tmp53 = (unsigned long )cinfo;
  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
  __cil_tmp55 = (char *)__cil_tmp54;
  sprintf(__cil_tmp55, "%s %s 0x%x %d r%d", tmp___3, tmp___2, tmp___1, tmp___0, tmp);
  }
  {
  __cil_tmp56 = 0 * 1UL;
  __cil_tmp57 = 1128 + __cil_tmp56;
  __cil_tmp58 = (unsigned long )cinfo;
  __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
  return ((char *)__cil_tmp59);
  }
}
}
static int b1pci_probe(struct capicardparams *p , struct pci_dev *pdev )
{ avmcard *card ;
  avmctrl_info *cinfo ;
  int retval ;
  struct resource *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  resource_size_t __cil_tmp26 ;
  resource_size_t __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char *__cil_tmp32 ;
  char const *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  enum avmcardtype __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  char *__cil_tmp63 ;
  char const *__cil_tmp64 ;
  void *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  char *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  char *__cil_tmp106 ;
  char const *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  struct capi_ctr *__cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned char __cil_tmp115 ;
  int __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned int __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned char __cil_tmp125 ;
  int __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned int __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned char __cil_tmp135 ;
  int __cil_tmp136 ;
  void *__cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned int __cil_tmp140 ;
  void *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned int __cil_tmp144 ;
  resource_size_t __cil_tmp145 ;
  resource_size_t __cil_tmp146 ;
  {
  {
  card = b1_alloc_card(1);
  }
  if (! card) {
    {
    printk("<4>b1pci: no memory.\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  {
  __cil_tmp7 = (unsigned long )card;
  __cil_tmp8 = __cil_tmp7 + 2288;
  cinfo = *((struct avmctrl_info **)__cil_tmp8);
  __cil_tmp9 = 0 * 1UL;
  __cil_tmp10 = 0 + __cil_tmp9;
  __cil_tmp11 = (unsigned long )card;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = (char *)__cil_tmp12;
  __cil_tmp14 = *((unsigned int *)p);
  sprintf(__cil_tmp13, "b1pci-%x", __cil_tmp14);
  __cil_tmp15 = (unsigned long )card;
  __cil_tmp16 = __cil_tmp15 + 56;
  *((unsigned int *)__cil_tmp16) = *((unsigned int *)p);
  __cil_tmp17 = (unsigned long )card;
  __cil_tmp18 = __cil_tmp17 + 60;
  __cil_tmp19 = (unsigned long )p;
  __cil_tmp20 = __cil_tmp19 + 4;
  *((unsigned int *)__cil_tmp18) = *((unsigned int *)__cil_tmp20);
  __cil_tmp21 = (unsigned long )card;
  __cil_tmp22 = __cil_tmp21 + 72;
  *((enum avmcardtype *)__cil_tmp22) = (enum avmcardtype )1;
  __cil_tmp23 = (unsigned long )card;
  __cil_tmp24 = __cil_tmp23 + 56;
  __cil_tmp25 = *((unsigned int *)__cil_tmp24);
  __cil_tmp26 = (resource_size_t )__cil_tmp25;
  __cil_tmp27 = (resource_size_t )31;
  __cil_tmp28 = 0 * 1UL;
  __cil_tmp29 = 0 + __cil_tmp28;
  __cil_tmp30 = (unsigned long )card;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  __cil_tmp32 = (char *)__cil_tmp31;
  __cil_tmp33 = (char const *)__cil_tmp32;
  tmp = __request_region(& ioport_resource, __cil_tmp26, __cil_tmp27, __cil_tmp33,
                         0);
  }
  if (tmp) {
  } else {
    {
    __cil_tmp34 = (unsigned long )card;
    __cil_tmp35 = __cil_tmp34 + 56;
    __cil_tmp36 = *((unsigned int *)__cil_tmp35);
    __cil_tmp37 = (unsigned long )card;
    __cil_tmp38 = __cil_tmp37 + 56;
    __cil_tmp39 = *((unsigned int *)__cil_tmp38);
    __cil_tmp40 = __cil_tmp39 + 31U;
    printk("<4>b1pci: ports 0x%03x-0x%03x in use.\n", __cil_tmp36, __cil_tmp40);
    retval = -16;
    }
    goto err_free;
  }
  {
  __cil_tmp41 = (unsigned long )card;
  __cil_tmp42 = __cil_tmp41 + 56;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  b1_reset(__cil_tmp43);
  __cil_tmp44 = (unsigned long )card;
  __cil_tmp45 = __cil_tmp44 + 56;
  __cil_tmp46 = *((unsigned int *)__cil_tmp45);
  __cil_tmp47 = (unsigned long )card;
  __cil_tmp48 = __cil_tmp47 + 72;
  __cil_tmp49 = *((enum avmcardtype *)__cil_tmp48);
  retval = b1_detect(__cil_tmp46, __cil_tmp49);
  }
  if (retval) {
    {
    __cil_tmp50 = (unsigned long )card;
    __cil_tmp51 = __cil_tmp50 + 56;
    __cil_tmp52 = *((unsigned int *)__cil_tmp51);
    printk("<5>b1pci: NO card at 0x%x (%d)\n", __cil_tmp52, retval);
    retval = -19;
    }
    goto err_release_region;
  } else {
  }
  {
  __cil_tmp53 = (unsigned long )card;
  __cil_tmp54 = __cil_tmp53 + 56;
  __cil_tmp55 = *((unsigned int *)__cil_tmp54);
  b1_reset(__cil_tmp55);
  b1_getrevision(card);
  __cil_tmp56 = (unsigned long )card;
  __cil_tmp57 = __cil_tmp56 + 60;
  __cil_tmp58 = *((unsigned int *)__cil_tmp57);
  __cil_tmp59 = 0 * 1UL;
  __cil_tmp60 = 0 + __cil_tmp59;
  __cil_tmp61 = (unsigned long )card;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  __cil_tmp63 = (char *)__cil_tmp62;
  __cil_tmp64 = (char const *)__cil_tmp63;
  __cil_tmp65 = (void *)card;
  retval = (int )request_irq(__cil_tmp58, & b1_interrupt, 128UL, __cil_tmp64, __cil_tmp65);
  }
  if (retval) {
    {
    __cil_tmp66 = (unsigned long )card;
    __cil_tmp67 = __cil_tmp66 + 60;
    __cil_tmp68 = *((unsigned int *)__cil_tmp67);
    printk("<3>b1pci: unable to get IRQ %d.\n", __cil_tmp68);
    retval = -16;
    }
    goto err_release_region;
  } else {
  }
  {
  __cil_tmp69 = 1264 + 48;
  __cil_tmp70 = (unsigned long )cinfo;
  __cil_tmp71 = __cil_tmp70 + __cil_tmp69;
  *((char **)__cil_tmp71) = (char *)"b1pci";
  __cil_tmp72 = 1264 + 8;
  __cil_tmp73 = (unsigned long )cinfo;
  __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
  *((void **)__cil_tmp74) = (void *)cinfo;
  __cil_tmp75 = 1264 + 72;
  __cil_tmp76 = (unsigned long )cinfo;
  __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
  *((void (**)(struct capi_ctr * , u16 appl , capi_register_params * ))__cil_tmp77) = & b1_register_appl;
  __cil_tmp78 = 1264 + 80;
  __cil_tmp79 = (unsigned long )cinfo;
  __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
  *((void (**)(struct capi_ctr * , u16 appl ))__cil_tmp80) = & b1_release_appl;
  __cil_tmp81 = 1264 + 88;
  __cil_tmp82 = (unsigned long )cinfo;
  __cil_tmp83 = __cil_tmp82 + __cil_tmp81;
  *((u16 (**)(struct capi_ctr * , struct sk_buff *skb ))__cil_tmp83) = & b1_send_message;
  __cil_tmp84 = 1264 + 56;
  __cil_tmp85 = (unsigned long )cinfo;
  __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
  *((int (**)(struct capi_ctr * , capiloaddata * ))__cil_tmp86) = & b1_load_firmware;
  __cil_tmp87 = 1264 + 64;
  __cil_tmp88 = (unsigned long )cinfo;
  __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
  *((void (**)(struct capi_ctr * ))__cil_tmp89) = & b1_reset_ctr;
  __cil_tmp90 = 1264 + 96;
  __cil_tmp91 = (unsigned long )cinfo;
  __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
  *((char *(**)(struct capi_ctr * ))__cil_tmp92) = & b1pci_procinfo;
  __cil_tmp93 = 1264 + 104;
  __cil_tmp94 = (unsigned long )cinfo;
  __cil_tmp95 = __cil_tmp94 + __cil_tmp93;
  *((struct file_operations const **)__cil_tmp95) = & b1ctl_proc_fops;
  __cil_tmp96 = 0 * 1UL;
  __cil_tmp97 = 16 + __cil_tmp96;
  __cil_tmp98 = 1264 + __cil_tmp97;
  __cil_tmp99 = (unsigned long )cinfo;
  __cil_tmp100 = __cil_tmp99 + __cil_tmp98;
  __cil_tmp101 = (char *)__cil_tmp100;
  __cil_tmp102 = 0 * 1UL;
  __cil_tmp103 = 0 + __cil_tmp102;
  __cil_tmp104 = (unsigned long )card;
  __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
  __cil_tmp106 = (char *)__cil_tmp105;
  __cil_tmp107 = (char const *)__cil_tmp106;
  strcpy(__cil_tmp101, __cil_tmp107);
  __cil_tmp108 = (unsigned long )cinfo;
  __cil_tmp109 = __cil_tmp108 + 1264;
  *((struct module **)__cil_tmp109) = & __this_module;
  __cil_tmp110 = (unsigned long )cinfo;
  __cil_tmp111 = __cil_tmp110 + 1264;
  __cil_tmp112 = (struct capi_ctr *)__cil_tmp111;
  retval = attach_capi_ctr(__cil_tmp112);
  }
  if (retval) {
    {
    printk("<3>b1pci: attach controller failed.\n");
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp113 = (unsigned long )card;
  __cil_tmp114 = __cil_tmp113 + 76;
  __cil_tmp115 = *((unsigned char *)__cil_tmp114);
  __cil_tmp116 = (int )__cil_tmp115;
  if (__cil_tmp116 >= 4) {
    {
    __cil_tmp117 = (unsigned long )card;
    __cil_tmp118 = __cil_tmp117 + 56;
    __cil_tmp119 = *((unsigned int *)__cil_tmp118);
    __cil_tmp120 = (unsigned long )card;
    __cil_tmp121 = __cil_tmp120 + 60;
    __cil_tmp122 = *((unsigned int *)__cil_tmp121);
    __cil_tmp123 = (unsigned long )card;
    __cil_tmp124 = __cil_tmp123 + 76;
    __cil_tmp125 = *((unsigned char *)__cil_tmp124);
    __cil_tmp126 = (int )__cil_tmp125;
    printk("<6>b1pci: AVM B1 PCI V4 at i/o %#x, irq %d, revision %d (no dma)\n", __cil_tmp119,
           __cil_tmp122, __cil_tmp126);
    }
  } else {
    {
    __cil_tmp127 = (unsigned long )card;
    __cil_tmp128 = __cil_tmp127 + 56;
    __cil_tmp129 = *((unsigned int *)__cil_tmp128);
    __cil_tmp130 = (unsigned long )card;
    __cil_tmp131 = __cil_tmp130 + 60;
    __cil_tmp132 = *((unsigned int *)__cil_tmp131);
    __cil_tmp133 = (unsigned long )card;
    __cil_tmp134 = __cil_tmp133 + 76;
    __cil_tmp135 = *((unsigned char *)__cil_tmp134);
    __cil_tmp136 = (int )__cil_tmp135;
    printk("<6>b1pci: AVM B1 PCI at i/o %#x, irq %d, revision %d\n", __cil_tmp129,
           __cil_tmp132, __cil_tmp136);
    }
  }
  }
  {
  __cil_tmp137 = (void *)card;
  pci_set_drvdata(pdev, __cil_tmp137);
  }
  return (0);
  err_free_irq:
  {
  __cil_tmp138 = (unsigned long )card;
  __cil_tmp139 = __cil_tmp138 + 60;
  __cil_tmp140 = *((unsigned int *)__cil_tmp139);
  __cil_tmp141 = (void *)card;
  free_irq(__cil_tmp140, __cil_tmp141);
  }
  err_release_region:
  {
  __cil_tmp142 = (unsigned long )card;
  __cil_tmp143 = __cil_tmp142 + 56;
  __cil_tmp144 = *((unsigned int *)__cil_tmp143);
  __cil_tmp145 = (resource_size_t )__cil_tmp144;
  __cil_tmp146 = (resource_size_t )31;
  __release_region(& ioport_resource, __cil_tmp145, __cil_tmp146);
  }
  err_free:
  {
  b1_free_card(card);
  }
  err:
  return (retval);
}
}
static void b1pci_remove(struct pci_dev *pdev )
{ avmcard *card ;
  void *tmp ;
  avmctrl_info *cinfo ;
  unsigned int port ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct capi_ctr *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  resource_size_t __cil_tmp20 ;
  resource_size_t __cil_tmp21 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  card = (avmcard *)tmp;
  __cil_tmp6 = (unsigned long )card;
  __cil_tmp7 = __cil_tmp6 + 2288;
  cinfo = *((struct avmctrl_info **)__cil_tmp7);
  __cil_tmp8 = (unsigned long )card;
  __cil_tmp9 = __cil_tmp8 + 56;
  port = *((unsigned int *)__cil_tmp9);
  b1_reset(port);
  b1_reset(port);
  __cil_tmp10 = (unsigned long )cinfo;
  __cil_tmp11 = __cil_tmp10 + 1264;
  __cil_tmp12 = (struct capi_ctr *)__cil_tmp11;
  detach_capi_ctr(__cil_tmp12);
  __cil_tmp13 = (unsigned long )card;
  __cil_tmp14 = __cil_tmp13 + 60;
  __cil_tmp15 = *((unsigned int *)__cil_tmp14);
  __cil_tmp16 = (void *)card;
  free_irq(__cil_tmp15, __cil_tmp16);
  __cil_tmp17 = (unsigned long )card;
  __cil_tmp18 = __cil_tmp17 + 56;
  __cil_tmp19 = *((unsigned int *)__cil_tmp18);
  __cil_tmp20 = (resource_size_t )__cil_tmp19;
  __cil_tmp21 = (resource_size_t )31;
  __release_region(& ioport_resource, __cil_tmp20, __cil_tmp21);
  b1_free_card(card);
  }
  return;
}
}
static char *b1pciv4_procinfo(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  int tmp ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct avmcard *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct avmcard *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct avmcard *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct avmcard *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  char *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  char *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  char *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  {
  __cil_tmp9 = (unsigned long )ctrl;
  __cil_tmp10 = __cil_tmp9 + 8;
  __cil_tmp11 = *((void **)__cil_tmp10);
  cinfo = (avmctrl_info *)__cil_tmp11;
  if (! cinfo) {
    return ((char *)"");
  } else {
  }
  {
  __cil_tmp12 = (unsigned long )cinfo;
  __cil_tmp13 = __cil_tmp12 + 1256;
  if (*((struct avmcard **)__cil_tmp13)) {
    __cil_tmp14 = (unsigned long )cinfo;
    __cil_tmp15 = __cil_tmp14 + 1256;
    __cil_tmp16 = *((struct avmcard **)__cil_tmp15);
    __cil_tmp17 = (unsigned long )__cil_tmp16;
    __cil_tmp18 = __cil_tmp17 + 76;
    __cil_tmp19 = *((unsigned char *)__cil_tmp18);
    tmp = (int )__cil_tmp19;
  } else {
    tmp = 0;
  }
  }
  {
  __cil_tmp20 = (unsigned long )cinfo;
  __cil_tmp21 = __cil_tmp20 + 1256;
  if (*((struct avmcard **)__cil_tmp21)) {
    __cil_tmp22 = (unsigned long )cinfo;
    __cil_tmp23 = __cil_tmp22 + 1256;
    __cil_tmp24 = *((struct avmcard **)__cil_tmp23);
    __cil_tmp25 = (unsigned long )__cil_tmp24;
    __cil_tmp26 = __cil_tmp25 + 64;
    tmp___0 = *((unsigned long *)__cil_tmp26);
  } else {
    tmp___0 = 0UL;
  }
  }
  {
  __cil_tmp27 = (unsigned long )cinfo;
  __cil_tmp28 = __cil_tmp27 + 1256;
  if (*((struct avmcard **)__cil_tmp28)) {
    __cil_tmp29 = (unsigned long )cinfo;
    __cil_tmp30 = __cil_tmp29 + 1256;
    __cil_tmp31 = *((struct avmcard **)__cil_tmp30);
    __cil_tmp32 = (unsigned long )__cil_tmp31;
    __cil_tmp33 = __cil_tmp32 + 60;
    tmp___1 = *((unsigned int *)__cil_tmp33);
  } else {
    tmp___1 = 0U;
  }
  }
  {
  __cil_tmp34 = (unsigned long )cinfo;
  __cil_tmp35 = __cil_tmp34 + 1256;
  if (*((struct avmcard **)__cil_tmp35)) {
    __cil_tmp36 = (unsigned long )cinfo;
    __cil_tmp37 = __cil_tmp36 + 1256;
    __cil_tmp38 = *((struct avmcard **)__cil_tmp37);
    __cil_tmp39 = (unsigned long )__cil_tmp38;
    __cil_tmp40 = __cil_tmp39 + 56;
    tmp___2 = *((unsigned int *)__cil_tmp40);
  } else {
    tmp___2 = 0U;
  }
  }
  {
  __cil_tmp41 = 0 * 8UL;
  __cil_tmp42 = 1064 + __cil_tmp41;
  __cil_tmp43 = (unsigned long )cinfo;
  __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
  if (*((char **)__cil_tmp44)) {
    __cil_tmp45 = 0 * 8UL;
    __cil_tmp46 = 1064 + __cil_tmp45;
    __cil_tmp47 = (unsigned long )cinfo;
    __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
    __cil_tmp49 = *((char **)__cil_tmp48);
    tmp___3 = (char const *)__cil_tmp49;
  } else {
    tmp___3 = "-";
  }
  }
  {
  __cil_tmp50 = 0 * 1UL;
  __cil_tmp51 = 0 + __cil_tmp50;
  __cil_tmp52 = (unsigned long )cinfo;
  __cil_tmp53 = __cil_tmp52 + __cil_tmp51;
  if (*((char *)__cil_tmp53)) {
    __cil_tmp54 = 0 * 1UL;
    __cil_tmp55 = 0 + __cil_tmp54;
    __cil_tmp56 = (unsigned long )cinfo;
    __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
    __cil_tmp58 = (char *)__cil_tmp57;
    tmp___4 = (char const *)__cil_tmp58;
  } else {
    tmp___4 = "-";
  }
  }
  {
  __cil_tmp59 = 0 * 1UL;
  __cil_tmp60 = 1128 + __cil_tmp59;
  __cil_tmp61 = (unsigned long )cinfo;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  __cil_tmp63 = (char *)__cil_tmp62;
  sprintf(__cil_tmp63, "%s %s 0x%x %d 0x%lx r%d", tmp___4, tmp___3, tmp___2, tmp___1,
          tmp___0, tmp);
  }
  {
  __cil_tmp64 = 0 * 1UL;
  __cil_tmp65 = 1128 + __cil_tmp64;
  __cil_tmp66 = (unsigned long )cinfo;
  __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
  return ((char *)__cil_tmp67);
  }
}
}
static int b1pciv4_probe(struct capicardparams *p , struct pci_dev *pdev )
{ avmcard *card ;
  avmctrl_info *cinfo ;
  int retval ;
  struct resource *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  avmcard_dmainfo *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  char *__cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  resource_size_t __cil_tmp37 ;
  resource_size_t __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  char *__cil_tmp43 ;
  char const *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  resource_size_t __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  void *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned int __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  char *__cil_tmp74 ;
  char const *__cil_tmp75 ;
  void *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  char *__cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  char *__cil_tmp119 ;
  char const *__cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  struct capi_ctr *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned int __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned int __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned char __cil_tmp140 ;
  int __cil_tmp141 ;
  void *__cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned int __cil_tmp145 ;
  void *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  void *__cil_tmp149 ;
  void volatile *__cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned int __cil_tmp153 ;
  resource_size_t __cil_tmp154 ;
  resource_size_t __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  avmcard_dmainfo *__cil_tmp158 ;
  {
  {
  card = b1_alloc_card(1);
  }
  if (! card) {
    {
    printk("<4>b1pci: no memory.\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  {
  __cil_tmp7 = (unsigned long )card;
  __cil_tmp8 = __cil_tmp7 + 2280;
  __cil_tmp9 = (char *)"b1pci";
  *((avmcard_dmainfo **)__cil_tmp8) = avmcard_dma_alloc(__cil_tmp9, pdev, 2176L, 2176L);
  }
  {
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 2280;
  __cil_tmp12 = *((avmcard_dmainfo **)__cil_tmp11);
  if (! __cil_tmp12) {
    {
    printk("<4>b1pci: dma alloc.\n");
    retval = -12;
    }
    goto err_free;
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )card;
  __cil_tmp14 = __cil_tmp13 + 2288;
  cinfo = *((struct avmctrl_info **)__cil_tmp14);
  __cil_tmp15 = 0 * 1UL;
  __cil_tmp16 = 0 + __cil_tmp15;
  __cil_tmp17 = (unsigned long )card;
  __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
  __cil_tmp19 = (char *)__cil_tmp18;
  __cil_tmp20 = *((unsigned int *)p);
  sprintf(__cil_tmp19, "b1pciv4-%x", __cil_tmp20);
  __cil_tmp21 = (unsigned long )card;
  __cil_tmp22 = __cil_tmp21 + 56;
  *((unsigned int *)__cil_tmp22) = *((unsigned int *)p);
  __cil_tmp23 = (unsigned long )card;
  __cil_tmp24 = __cil_tmp23 + 60;
  __cil_tmp25 = (unsigned long )p;
  __cil_tmp26 = __cil_tmp25 + 4;
  *((unsigned int *)__cil_tmp24) = *((unsigned int *)__cil_tmp26);
  __cil_tmp27 = (unsigned long )card;
  __cil_tmp28 = __cil_tmp27 + 64;
  __cil_tmp29 = (unsigned long )p;
  __cil_tmp30 = __cil_tmp29 + 16;
  __cil_tmp31 = *((unsigned int *)__cil_tmp30);
  *((unsigned long *)__cil_tmp28) = (unsigned long )__cil_tmp31;
  __cil_tmp32 = (unsigned long )card;
  __cil_tmp33 = __cil_tmp32 + 72;
  *((enum avmcardtype *)__cil_tmp33) = (enum avmcardtype )1;
  __cil_tmp34 = (unsigned long )card;
  __cil_tmp35 = __cil_tmp34 + 56;
  __cil_tmp36 = *((unsigned int *)__cil_tmp35);
  __cil_tmp37 = (resource_size_t )__cil_tmp36;
  __cil_tmp38 = (resource_size_t )31;
  __cil_tmp39 = 0 * 1UL;
  __cil_tmp40 = 0 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )card;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  __cil_tmp43 = (char *)__cil_tmp42;
  __cil_tmp44 = (char const *)__cil_tmp43;
  tmp = __request_region(& ioport_resource, __cil_tmp37, __cil_tmp38, __cil_tmp44,
                         0);
  }
  if (tmp) {
  } else {
    {
    __cil_tmp45 = (unsigned long )card;
    __cil_tmp46 = __cil_tmp45 + 56;
    __cil_tmp47 = *((unsigned int *)__cil_tmp46);
    __cil_tmp48 = (unsigned long )card;
    __cil_tmp49 = __cil_tmp48 + 56;
    __cil_tmp50 = *((unsigned int *)__cil_tmp49);
    __cil_tmp51 = __cil_tmp50 + 31U;
    printk("<4>b1pci: ports 0x%03x-0x%03x in use.\n", __cil_tmp47, __cil_tmp51);
    retval = -16;
    }
    goto err_free_dma;
  }
  {
  __cil_tmp52 = (unsigned long )card;
  __cil_tmp53 = __cil_tmp52 + 2264;
  __cil_tmp54 = (unsigned long )card;
  __cil_tmp55 = __cil_tmp54 + 64;
  __cil_tmp56 = *((unsigned long *)__cil_tmp55);
  __cil_tmp57 = (resource_size_t )__cil_tmp56;
  *((void **)__cil_tmp53) = ioremap(__cil_tmp57, 64UL);
  }
  {
  __cil_tmp58 = (unsigned long )card;
  __cil_tmp59 = __cil_tmp58 + 2264;
  __cil_tmp60 = *((void **)__cil_tmp59);
  if (! __cil_tmp60) {
    {
    __cil_tmp61 = (unsigned long )card;
    __cil_tmp62 = __cil_tmp61 + 64;
    __cil_tmp63 = *((unsigned long *)__cil_tmp62);
    printk("<5>b1pci: can\'t remap memory at 0x%lx\n", __cil_tmp63);
    retval = -12;
    }
    goto err_release_region;
  } else {
  }
  }
  {
  b1dma_reset(card);
  retval = b1pciv4_detect(card);
  }
  if (retval) {
    {
    __cil_tmp64 = (unsigned long )card;
    __cil_tmp65 = __cil_tmp64 + 56;
    __cil_tmp66 = *((unsigned int *)__cil_tmp65);
    printk("<5>b1pci: NO card at 0x%x (%d)\n", __cil_tmp66, retval);
    retval = -19;
    }
    goto err_unmap;
  } else {
  }
  {
  b1dma_reset(card);
  b1_getrevision(card);
  __cil_tmp67 = (unsigned long )card;
  __cil_tmp68 = __cil_tmp67 + 60;
  __cil_tmp69 = *((unsigned int *)__cil_tmp68);
  __cil_tmp70 = 0 * 1UL;
  __cil_tmp71 = 0 + __cil_tmp70;
  __cil_tmp72 = (unsigned long )card;
  __cil_tmp73 = __cil_tmp72 + __cil_tmp71;
  __cil_tmp74 = (char *)__cil_tmp73;
  __cil_tmp75 = (char const *)__cil_tmp74;
  __cil_tmp76 = (void *)card;
  retval = (int )request_irq(__cil_tmp69, & b1dma_interrupt, 128UL, __cil_tmp75, __cil_tmp76);
  }
  if (retval) {
    {
    __cil_tmp77 = (unsigned long )card;
    __cil_tmp78 = __cil_tmp77 + 60;
    __cil_tmp79 = *((unsigned int *)__cil_tmp78);
    printk("<3>b1pci: unable to get IRQ %d.\n", __cil_tmp79);
    retval = -16;
    }
    goto err_unmap;
  } else {
  }
  {
  __cil_tmp80 = (unsigned long )cinfo;
  __cil_tmp81 = __cil_tmp80 + 1264;
  *((struct module **)__cil_tmp81) = & __this_module;
  __cil_tmp82 = 1264 + 48;
  __cil_tmp83 = (unsigned long )cinfo;
  __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
  *((char **)__cil_tmp84) = (char *)"b1pciv4";
  __cil_tmp85 = 1264 + 8;
  __cil_tmp86 = (unsigned long )cinfo;
  __cil_tmp87 = __cil_tmp86 + __cil_tmp85;
  *((void **)__cil_tmp87) = (void *)cinfo;
  __cil_tmp88 = 1264 + 72;
  __cil_tmp89 = (unsigned long )cinfo;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((void (**)(struct capi_ctr * , u16 appl , capi_register_params * ))__cil_tmp90) = & b1dma_register_appl;
  __cil_tmp91 = 1264 + 80;
  __cil_tmp92 = (unsigned long )cinfo;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  *((void (**)(struct capi_ctr * , u16 appl ))__cil_tmp93) = & b1dma_release_appl;
  __cil_tmp94 = 1264 + 88;
  __cil_tmp95 = (unsigned long )cinfo;
  __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
  *((u16 (**)(struct capi_ctr * , struct sk_buff *skb ))__cil_tmp96) = & b1dma_send_message;
  __cil_tmp97 = 1264 + 56;
  __cil_tmp98 = (unsigned long )cinfo;
  __cil_tmp99 = __cil_tmp98 + __cil_tmp97;
  *((int (**)(struct capi_ctr * , capiloaddata * ))__cil_tmp99) = & b1dma_load_firmware;
  __cil_tmp100 = 1264 + 64;
  __cil_tmp101 = (unsigned long )cinfo;
  __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
  *((void (**)(struct capi_ctr * ))__cil_tmp102) = & b1dma_reset_ctr;
  __cil_tmp103 = 1264 + 96;
  __cil_tmp104 = (unsigned long )cinfo;
  __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
  *((char *(**)(struct capi_ctr * ))__cil_tmp105) = & b1pciv4_procinfo;
  __cil_tmp106 = 1264 + 104;
  __cil_tmp107 = (unsigned long )cinfo;
  __cil_tmp108 = __cil_tmp107 + __cil_tmp106;
  *((struct file_operations const **)__cil_tmp108) = & b1dmactl_proc_fops;
  __cil_tmp109 = 0 * 1UL;
  __cil_tmp110 = 16 + __cil_tmp109;
  __cil_tmp111 = 1264 + __cil_tmp110;
  __cil_tmp112 = (unsigned long )cinfo;
  __cil_tmp113 = __cil_tmp112 + __cil_tmp111;
  __cil_tmp114 = (char *)__cil_tmp113;
  __cil_tmp115 = 0 * 1UL;
  __cil_tmp116 = 0 + __cil_tmp115;
  __cil_tmp117 = (unsigned long )card;
  __cil_tmp118 = __cil_tmp117 + __cil_tmp116;
  __cil_tmp119 = (char *)__cil_tmp118;
  __cil_tmp120 = (char const *)__cil_tmp119;
  strcpy(__cil_tmp114, __cil_tmp120);
  __cil_tmp121 = (unsigned long )cinfo;
  __cil_tmp122 = __cil_tmp121 + 1264;
  __cil_tmp123 = (struct capi_ctr *)__cil_tmp122;
  retval = attach_capi_ctr(__cil_tmp123);
  }
  if (retval) {
    {
    printk("<3>b1pci: attach controller failed.\n");
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp124 = (unsigned long )card;
  __cil_tmp125 = __cil_tmp124 + 80;
  __cil_tmp126 = 1264 + 296;
  __cil_tmp127 = (unsigned long )cinfo;
  __cil_tmp128 = __cil_tmp127 + __cil_tmp126;
  *((int *)__cil_tmp125) = *((int *)__cil_tmp128);
  __cil_tmp129 = (unsigned long )card;
  __cil_tmp130 = __cil_tmp129 + 56;
  __cil_tmp131 = *((unsigned int *)__cil_tmp130);
  __cil_tmp132 = (unsigned long )card;
  __cil_tmp133 = __cil_tmp132 + 60;
  __cil_tmp134 = *((unsigned int *)__cil_tmp133);
  __cil_tmp135 = (unsigned long )card;
  __cil_tmp136 = __cil_tmp135 + 64;
  __cil_tmp137 = *((unsigned long *)__cil_tmp136);
  __cil_tmp138 = (unsigned long )card;
  __cil_tmp139 = __cil_tmp138 + 76;
  __cil_tmp140 = *((unsigned char *)__cil_tmp139);
  __cil_tmp141 = (int )__cil_tmp140;
  printk("<6>b1pci: AVM B1 PCI V4 at i/o %#x, irq %d, mem %#lx, revision %d (dma)\n",
         __cil_tmp131, __cil_tmp134, __cil_tmp137, __cil_tmp141);
  __cil_tmp142 = (void *)card;
  pci_set_drvdata(pdev, __cil_tmp142);
  }
  return (0);
  err_free_irq:
  {
  __cil_tmp143 = (unsigned long )card;
  __cil_tmp144 = __cil_tmp143 + 60;
  __cil_tmp145 = *((unsigned int *)__cil_tmp144);
  __cil_tmp146 = (void *)card;
  free_irq(__cil_tmp145, __cil_tmp146);
  }
  err_unmap:
  {
  __cil_tmp147 = (unsigned long )card;
  __cil_tmp148 = __cil_tmp147 + 2264;
  __cil_tmp149 = *((void **)__cil_tmp148);
  __cil_tmp150 = (void volatile *)__cil_tmp149;
  iounmap(__cil_tmp150);
  }
  err_release_region:
  {
  __cil_tmp151 = (unsigned long )card;
  __cil_tmp152 = __cil_tmp151 + 56;
  __cil_tmp153 = *((unsigned int *)__cil_tmp152);
  __cil_tmp154 = (resource_size_t )__cil_tmp153;
  __cil_tmp155 = (resource_size_t )31;
  __release_region(& ioport_resource, __cil_tmp154, __cil_tmp155);
  }
  err_free_dma:
  {
  __cil_tmp156 = (unsigned long )card;
  __cil_tmp157 = __cil_tmp156 + 2280;
  __cil_tmp158 = *((avmcard_dmainfo **)__cil_tmp157);
  avmcard_dma_free(__cil_tmp158);
  }
  err_free:
  {
  b1_free_card(card);
  }
  err:
  return (retval);
}
}
static void b1pciv4_remove(struct pci_dev *pdev )
{ avmcard *card ;
  void *tmp ;
  avmctrl_info *cinfo ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct capi_ctr *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  void volatile *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  resource_size_t __cil_tmp21 ;
  resource_size_t __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  avmcard_dmainfo *__cil_tmp25 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  card = (avmcard *)tmp;
  __cil_tmp5 = (unsigned long )card;
  __cil_tmp6 = __cil_tmp5 + 2288;
  cinfo = *((struct avmctrl_info **)__cil_tmp6);
  b1dma_reset(card);
  __cil_tmp7 = (unsigned long )cinfo;
  __cil_tmp8 = __cil_tmp7 + 1264;
  __cil_tmp9 = (struct capi_ctr *)__cil_tmp8;
  detach_capi_ctr(__cil_tmp9);
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 60;
  __cil_tmp12 = *((unsigned int *)__cil_tmp11);
  __cil_tmp13 = (void *)card;
  free_irq(__cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (unsigned long )card;
  __cil_tmp15 = __cil_tmp14 + 2264;
  __cil_tmp16 = *((void **)__cil_tmp15);
  __cil_tmp17 = (void volatile *)__cil_tmp16;
  iounmap(__cil_tmp17);
  __cil_tmp18 = (unsigned long )card;
  __cil_tmp19 = __cil_tmp18 + 56;
  __cil_tmp20 = *((unsigned int *)__cil_tmp19);
  __cil_tmp21 = (resource_size_t )__cil_tmp20;
  __cil_tmp22 = (resource_size_t )31;
  __release_region(& ioport_resource, __cil_tmp21, __cil_tmp22);
  __cil_tmp23 = (unsigned long )card;
  __cil_tmp24 = __cil_tmp23 + 2280;
  __cil_tmp25 = *((avmcard_dmainfo **)__cil_tmp24);
  avmcard_dma_free(__cil_tmp25);
  b1_free_card(card);
  }
  return;
}
}
static int b1pci_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int b1pci_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{ struct capicardparams param ;
  int retval ;
  int tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  resource_size_t __cil_tmp18 ;
  struct capicardparams *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  resource_size_t __cil_tmp24 ;
  struct capicardparams *__cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  struct capicardparams *__cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct capicardparams *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  resource_size_t __cil_tmp43 ;
  struct capicardparams *__cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  struct capicardparams *__cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  {
  {
  tmp = (int )pci_enable_device(pdev);
  }
  if (tmp < 0) {
    {
    printk("<3>b1pci: failed to enable AVM-B1\n");
    }
    return (-19);
  } else {
  }
  __cil_tmp6 = (unsigned long )(& param) + 4;
  __cil_tmp7 = (unsigned long )pdev;
  __cil_tmp8 = __cil_tmp7 + 916;
  *((unsigned int *)__cil_tmp6) = *((unsigned int *)__cil_tmp8);
  {
  __cil_tmp9 = 2 * 56UL;
  __cil_tmp10 = 920 + __cil_tmp9;
  __cil_tmp11 = (unsigned long )pdev;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  if (*((resource_size_t *)__cil_tmp12)) {
    {
    pci_set_master(pdev);
    __cil_tmp13 = (unsigned long )(& param) + 16;
    __cil_tmp14 = 0 * 56UL;
    __cil_tmp15 = 920 + __cil_tmp14;
    __cil_tmp16 = (unsigned long )pdev;
    __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
    __cil_tmp18 = *((resource_size_t *)__cil_tmp17);
    *((unsigned int *)__cil_tmp13) = (unsigned int )__cil_tmp18;
    __cil_tmp19 = & param;
    __cil_tmp20 = 2 * 56UL;
    __cil_tmp21 = 920 + __cil_tmp20;
    __cil_tmp22 = (unsigned long )pdev;
    __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
    __cil_tmp24 = *((resource_size_t *)__cil_tmp23);
    *((unsigned int *)__cil_tmp19) = (unsigned int )__cil_tmp24;
    __cil_tmp25 = & param;
    __cil_tmp26 = *((unsigned int *)__cil_tmp25);
    __cil_tmp27 = (unsigned long )(& param) + 4;
    __cil_tmp28 = *((unsigned int *)__cil_tmp27);
    __cil_tmp29 = (unsigned long )(& param) + 16;
    __cil_tmp30 = *((unsigned int *)__cil_tmp29);
    printk("<6>b1pci: PCI BIOS reports AVM-B1 V4 at i/o %#x, irq %d, mem %#x\n", __cil_tmp26,
           __cil_tmp28, __cil_tmp30);
    retval = b1pciv4_probe(& param, pdev);
    }
    if (retval != 0) {
      {
      __cil_tmp31 = & param;
      __cil_tmp32 = *((unsigned int *)__cil_tmp31);
      __cil_tmp33 = (unsigned long )(& param) + 4;
      __cil_tmp34 = *((unsigned int *)__cil_tmp33);
      __cil_tmp35 = (unsigned long )(& param) + 16;
      __cil_tmp36 = *((unsigned int *)__cil_tmp35);
      printk("<3>b1pci: no AVM-B1 V4 at i/o %#x, irq %d, mem %#x detected\n", __cil_tmp32,
             __cil_tmp34, __cil_tmp36);
      }
    } else {
    }
  } else {
    {
    __cil_tmp37 = (unsigned long )(& param) + 16;
    *((unsigned int *)__cil_tmp37) = 0U;
    __cil_tmp38 = & param;
    __cil_tmp39 = 1 * 56UL;
    __cil_tmp40 = 920 + __cil_tmp39;
    __cil_tmp41 = (unsigned long )pdev;
    __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
    __cil_tmp43 = *((resource_size_t *)__cil_tmp42);
    *((unsigned int *)__cil_tmp38) = (unsigned int )__cil_tmp43;
    __cil_tmp44 = & param;
    __cil_tmp45 = *((unsigned int *)__cil_tmp44);
    __cil_tmp46 = (unsigned long )(& param) + 4;
    __cil_tmp47 = *((unsigned int *)__cil_tmp46);
    printk("<6>b1pci: PCI BIOS reports AVM-B1 at i/o %#x, irq %d\n", __cil_tmp45,
           __cil_tmp47);
    retval = b1pci_probe(& param, pdev);
    }
    if (retval != 0) {
      {
      __cil_tmp48 = & param;
      __cil_tmp49 = *((unsigned int *)__cil_tmp48);
      __cil_tmp50 = (unsigned long )(& param) + 4;
      __cil_tmp51 = *((unsigned int *)__cil_tmp50);
      printk("<3>b1pci: no AVM-B1 at i/o %#x, irq %d detected\n", __cil_tmp49, __cil_tmp51);
      }
    } else {
    }
  }
  }
  return (retval);
}
}
static void b1pci_pci_remove(struct pci_dev *pdev ) __attribute__((__section__(".devexit.text"),
__no_instrument_function__)) ;
static void b1pci_pci_remove(struct pci_dev *pdev )
{ avmcard *card ;
  void *tmp ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  card = (avmcard *)tmp;
  }
  {
  __cil_tmp4 = (unsigned long )card;
  __cil_tmp5 = __cil_tmp4 + 2280;
  if (*((avmcard_dmainfo **)__cil_tmp5)) {
    {
    b1pciv4_remove(pdev);
    }
  } else {
    {
    b1pci_remove(pdev);
    }
  }
  }
  return;
}
}
static struct pci_driver b1pci_pci_driver =
     {{(struct list_head *)0, (struct list_head *)0}, "b1pci", (struct pci_device_id const *)(b1pci_pci_tbl),
    & b1pci_pci_probe, & b1pci_pci_remove, (int (*)(struct pci_dev *dev , pm_message_t state ))0,
    (int (*)(struct pci_dev *dev , pm_message_t state ))0, (int (*)(struct pci_dev *dev ))0,
    (int (*)(struct pci_dev *dev ))0, (void (*)(struct pci_dev *dev ))0, (struct pci_error_handlers *)0,
    {(char const *)0, (struct bus_type *)0, (struct module *)0, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device *dev ))0,
     (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                 pm_message_t state ))0,
     (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, {{{{{{0U}}, 0U, 0U, (void *)0}}}, {(struct list_head *)0,
                                                                     (struct list_head *)0}}};
static struct capi_driver capi_driver_b1pci = {{(char )'b', (char )'1', (char )'p', (char )'c', (char )'i', (char )'\000'}, {(char )'1',
                                                                                  (char )'.',
                                                                                  (char )'0',
                                                                                  (char )'\000'},
    (int (*)(struct capi_driver *driver , capicardparams *data ))0, {(struct list_head *)0,
                                                                     (struct list_head *)0}};
static struct capi_driver capi_driver_b1pciv4 = {{(char )'b', (char )'1', (char )'p', (char )'c', (char )'i', (char )'v', (char )'4',
     (char )'\000'}, {(char )'1', (char )'.', (char )'0', (char )'\000'}, (int (*)(struct capi_driver *driver ,
                                                                                   capicardparams *data ))0,
    {(struct list_head *)0, (struct list_head *)0}};
static int b1pci_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int b1pci_init(void)
{ char *p ;
  char rev[32] ;
  int err ;
  char const *__cil_tmp4 ;
  void *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  char *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  char *__cil_tmp11 ;
  char *__cil_tmp12 ;
  char const *__cil_tmp13 ;
  size_t __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  char *__cil_tmp17 ;
  char const *__cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  char *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  char *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  char *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  char *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  char *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  char *__cil_tmp40 ;
  char const *__cil_tmp41 ;
  size_t __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  char *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  char *__cil_tmp49 ;
  char const *__cil_tmp50 ;
  size_t __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  char *__cil_tmp54 ;
  {
  {
  __cil_tmp4 = (char const *)revision;
  p = strchr(__cil_tmp4, ':');
  }
  {
  __cil_tmp5 = (void *)0;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = (unsigned long )p;
  if (__cil_tmp7 != __cil_tmp6) {
    {
    __cil_tmp8 = p + 1;
    if (*__cil_tmp8) {
      {
      __cil_tmp9 = 0 * 1UL;
      __cil_tmp10 = (unsigned long )(rev) + __cil_tmp9;
      __cil_tmp11 = (char *)__cil_tmp10;
      __cil_tmp12 = p + 2;
      __cil_tmp13 = (char const *)__cil_tmp12;
      __cil_tmp14 = (size_t )32;
      strlcpy(__cil_tmp11, __cil_tmp13, __cil_tmp14);
      __cil_tmp15 = 0 * 1UL;
      __cil_tmp16 = (unsigned long )(rev) + __cil_tmp15;
      __cil_tmp17 = (char *)__cil_tmp16;
      __cil_tmp18 = (char const *)__cil_tmp17;
      p = strchr(__cil_tmp18, '$');
      }
      {
      __cil_tmp19 = (void *)0;
      __cil_tmp20 = (unsigned long )__cil_tmp19;
      __cil_tmp21 = (unsigned long )p;
      if (__cil_tmp21 != __cil_tmp20) {
        {
        __cil_tmp22 = 0 * 1UL;
        __cil_tmp23 = (unsigned long )(rev) + __cil_tmp22;
        __cil_tmp24 = (char *)__cil_tmp23;
        __cil_tmp25 = (unsigned long )__cil_tmp24;
        __cil_tmp26 = (unsigned long )p;
        if (__cil_tmp26 > __cil_tmp25) {
          __cil_tmp27 = p - 1;
          *__cil_tmp27 = (char)0;
        } else {
        }
        }
      } else {
      }
      }
    } else {
      {
      __cil_tmp28 = 0 * 1UL;
      __cil_tmp29 = (unsigned long )(rev) + __cil_tmp28;
      __cil_tmp30 = (char *)__cil_tmp29;
      strcpy(__cil_tmp30, "1.0");
      }
    }
    }
  } else {
    {
    __cil_tmp31 = 0 * 1UL;
    __cil_tmp32 = (unsigned long )(rev) + __cil_tmp31;
    __cil_tmp33 = (char *)__cil_tmp32;
    strcpy(__cil_tmp33, "1.0");
    }
  }
  }
  {
  err = (int )__pci_register_driver(& b1pci_pci_driver, & __this_module, "b1pci");
  }
  if (! err) {
    {
    __cil_tmp34 = 0 * 1UL;
    __cil_tmp35 = 32 + __cil_tmp34;
    __cil_tmp36 = (unsigned long )(& capi_driver_b1pci) + __cil_tmp35;
    __cil_tmp37 = (char *)__cil_tmp36;
    __cil_tmp38 = 0 * 1UL;
    __cil_tmp39 = (unsigned long )(rev) + __cil_tmp38;
    __cil_tmp40 = (char *)__cil_tmp39;
    __cil_tmp41 = (char const *)__cil_tmp40;
    __cil_tmp42 = (size_t )32;
    strlcpy(__cil_tmp37, __cil_tmp41, __cil_tmp42);
    register_capi_driver(& capi_driver_b1pci);
    __cil_tmp43 = 0 * 1UL;
    __cil_tmp44 = 32 + __cil_tmp43;
    __cil_tmp45 = (unsigned long )(& capi_driver_b1pciv4) + __cil_tmp44;
    __cil_tmp46 = (char *)__cil_tmp45;
    __cil_tmp47 = 0 * 1UL;
    __cil_tmp48 = (unsigned long )(rev) + __cil_tmp47;
    __cil_tmp49 = (char *)__cil_tmp48;
    __cil_tmp50 = (char const *)__cil_tmp49;
    __cil_tmp51 = (size_t )32;
    strlcpy(__cil_tmp46, __cil_tmp50, __cil_tmp51);
    register_capi_driver(& capi_driver_b1pciv4);
    __cil_tmp52 = 0 * 1UL;
    __cil_tmp53 = (unsigned long )(rev) + __cil_tmp52;
    __cil_tmp54 = (char *)__cil_tmp53;
    printk("<6>b1pci: revision %s\n", __cil_tmp54);
    }
  } else {
  }
  return (err);
}
}
static void b1pci_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void b1pci_exit(void)
{
  {
  {
  unregister_capi_driver(& capi_driver_b1pci);
  unregister_capi_driver(& capi_driver_b1pciv4);
  pci_unregister_driver(& b1pci_pci_driver);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = b1pci_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  b1pci_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_b1pci_pci_probe_6 ;
void main(void)
{ struct pci_dev *var_group1 ;
  struct pci_device_id const *var_b1pci_pci_probe_6_p1 ;
  int tmp ;
  int ldv_s_b1pci_pci_driver_pci_driver ;
  int tmp___0 ;
  int tmp___1 ;
  int __cil_tmp7 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = b1pci_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  ldv_s_b1pci_pci_driver_pci_driver = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      {
      __cil_tmp7 = ldv_s_b1pci_pci_driver_pci_driver == 0;
      if (! __cil_tmp7) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0 == 0) {
      goto case_0;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_b1pci_pci_driver_pci_driver == 0) {
          {
          res_b1pci_pci_probe_6 = b1pci_pci_probe(var_group1, var_b1pci_pci_probe_6_p1);
          ldv_check_return_value(res_b1pci_pci_probe_6);
          }
          if (res_b1pci_pci_probe_6) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_b1pci_pci_driver_pci_driver = 0;
        } else {
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  b1pci_exit();
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
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int attach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
avmcard_dmainfo *avmcard_dma_alloc(char *arg0, struct pci_dev *arg1, long arg2, long arg3) {
  return ldv_malloc(sizeof(avmcard_dmainfo));
}
void avmcard_dma_free(avmcard_dmainfo *arg0) {
  return;
}
avmcard *b1_alloc_card(int arg0) {
  return ldv_malloc(sizeof(avmcard));
}
int __VERIFIER_nondet_int(void);
int b1_detect(unsigned int arg0, enum avmcardtype arg1) {
  return __VERIFIER_nondet_int();
}
void b1_free_card(avmcard *arg0) {
  return;
}
void b1_getrevision(avmcard *arg0) {
  return;
}
void b1dma_reset(avmcard *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int b1pciv4_detect(avmcard *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int detach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void register_capi_driver(struct capi_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_capi_driver(struct capi_driver *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
