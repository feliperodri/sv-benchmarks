extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
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
typedef __u32 __le32;
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
typedef u64 dma_addr_t;
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
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct_ldv_1821_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1836_13 {
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
union __anonunion_ldv_1837_11 {
   struct __anonstruct_ldv_1821_12 ldv_1821 ;
   struct __anonstruct_ldv_1836_13 ldv_1836 ;
};
struct desc_struct {
   union __anonunion_ldv_1837_11 ldv_1837 ;
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
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2243_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2243_18 ldv_2243 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2250_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct_ldv_2250_20 ldv_2250 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
struct file_operations;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_3460_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_3460_25 ldv_3460 ;
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
struct __anonstruct_ldv_5545_30 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5551_31 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5552_29 {
   struct __anonstruct_ldv_5545_30 ldv_5545 ;
   struct __anonstruct_ldv_5551_31 ldv_5551 ;
};
union __anonunion_ldv_5561_32 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5552_29 ldv_5552 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5561_32 ldv_5561 ;
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
struct __anonstruct_ldv_7685_100 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_7686_99 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_7685_100 ldv_7685 ;
};
struct spinlock {
   union __anonunion_ldv_7686_99 ldv_7686 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_101 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_101 rwlock_t;
struct static_key {
   atomic_t enabled ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
   struct list_head clock_list ;
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
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_103 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_103 nodemask_t;
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
struct __anonstruct_mm_context_t_104 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_104 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
   struct hrtimer_clock_base clock_base[4U] ;
};
struct kref {
   atomic_t refcount ;
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
struct user_namespace;
struct __anonstruct_kuid_t_133 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_133 kuid_t;
struct __anonstruct_kgid_t_134 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_134 kgid_t;
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
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
   struct attribute_group const **dev_groups ;
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
   bool offline_disabled ;
   bool offline ;
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
struct __anonstruct_ldv_16392_136 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_16393_135 {
   struct __anonstruct_ldv_16392_136 ldv_16392 ;
};
struct lockref {
   union __anonunion_ldv_16393_135 ldv_16393 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_16414_138 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_16416_137 {
   struct __anonstruct_ldv_16414_138 ldv_16414 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_16416_137 ldv_16416 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_139 {
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_139 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
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
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
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
   struct callback_head rcu ;
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
   nodemask_t nodes_to_scan ;
   int nid ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_141 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_141 kprojid_t;
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
union __anonunion_ldv_17559_142 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_17559_142 ldv_17559 ;
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
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
struct writeback_control;
union __anonunion_arg_144 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_143 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_144 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_143 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
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
union __anonunion_ldv_18006_145 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18026_146 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_18042_147 {
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
   union __anonunion_ldv_18006_145 ldv_18006 ;
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
   union __anonunion_ldv_18026_146 ldv_18026 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_18042_147 ldv_18042 ;
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
union __anonunion_f_u_148 {
   struct list_head fu_list ;
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_148 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
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
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
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
struct __anonstruct_afs_150 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_149 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_150 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
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
   union __anonunion_fl_u_149 fl_u ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
struct return_instance;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct return_instance *return_instances ;
   unsigned int depth ;
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
union __anonunion_ldv_20187_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_20197_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_20199_155 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_20197_156 ldv_20197 ;
   int units ;
};
struct __anonstruct_ldv_20201_154 {
   union __anonunion_ldv_20199_155 ldv_20199 ;
   atomic_t _count ;
};
union __anonunion_ldv_20202_153 {
   unsigned long counters ;
   struct __anonstruct_ldv_20201_154 ldv_20201 ;
};
struct __anonstruct_ldv_20203_151 {
   union __anonunion_ldv_20187_152 ldv_20187 ;
   union __anonunion_ldv_20202_153 ldv_20202 ;
};
struct __anonstruct_ldv_20210_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_20214_157 {
   struct list_head lru ;
   struct __anonstruct_ldv_20210_158 ldv_20210 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_20219_159 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_20203_151 ldv_20203 ;
   union __anonunion_ldv_20214_157 ldv_20214 ;
   union __anonunion_ldv_20219_159 ldv_20219 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_160 {
   struct __anonstruct_linear_161 linear ;
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
   union __anonunion_shared_160 shared ;
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
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
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
   struct kioctx_table *ioctx_table ;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_162 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_162 sigset_t;
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
struct __anonstruct__kill_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_165 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_168 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_169 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_170 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_163 {
   int _pad[28U] ;
   struct __anonstruct__kill_164 _kill ;
   struct __anonstruct__timer_165 _timer ;
   struct __anonstruct__rt_166 _rt ;
   struct __anonstruct__sigchld_167 _sigchld ;
   struct __anonstruct__sigfault_168 _sigfault ;
   struct __anonstruct__sigpoll_169 _sigpoll ;
   struct __anonstruct__sigsys_170 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_163 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct key_type;
struct keyring_list;
union __anonunion_ldv_21884_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_21893_176 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_178 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_21884_175 ldv_21884 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_21893_176 ldv_21893 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_payload_178 payload ;
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
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
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
   unsigned long watchdog_stamp ;
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
struct memcg_oom_info {
   unsigned char may_oom : 1 ;
   unsigned char in_memcg_oom : 1 ;
   unsigned char oom_locked : 1 ;
   int wakeups ;
   struct mem_cgroup *wait_on_memcg ;
};
struct sched_class;
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
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
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
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned char poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion_ldv_24922_180 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_24922_180 ldv_24922 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t memory_used ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   void (*drop)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
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
struct __anonstruct_ldv_25664_182 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_25665_181 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_25664_182 ldv_25664 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_25665_181 ldv_25665 ;
};
struct serial_struct {
   int type ;
   int line ;
   unsigned int port ;
   int irq ;
   int flags ;
   int xmit_fifo_size ;
   int custom_divisor ;
   int baud_base ;
   unsigned short close_delay ;
   char io_type ;
   char reserved_char[1U] ;
   int hub6 ;
   unsigned short closing_wait ;
   unsigned short closing_wait2 ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned int port_high ;
   unsigned long iomap_base ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
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
union __anonunion_ldv_26295_187 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_26295_187 ldv_26295 ;
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
struct usb_cdc_union_desc {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDescriptorSubType ;
   __u8 bMasterInterface0 ;
   __u8 bSlaveInterface0 ;
};
struct usb_cdc_country_functional_desc {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDescriptorSubType ;
   __u8 iCountryCodeRelDate ;
   __le16 wCountyCode0 ;
};
struct usb_cdc_line_coding {
   __le32 dwDTERate ;
   __u8 bCharFormat ;
   __u8 bParityType ;
   __u8 bDataBits ;
};
struct usb_cdc_notification {
   __u8 bmRequestType ;
   __u8 bNotificationType ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
};
struct acm;
struct acm_wb {
   unsigned char *buf ;
   dma_addr_t dmah ;
   int len ;
   int use ;
   struct urb *urb ;
   struct acm *instance ;
};
struct acm_rb {
   int size ;
   unsigned char *base ;
   dma_addr_t dma ;
   int index ;
   struct acm *instance ;
};
struct acm {
   struct usb_device *dev ;
   struct usb_interface *control ;
   struct usb_interface *data ;
   struct tty_port port ;
   struct urb *ctrlurb ;
   u8 *ctrl_buffer ;
   dma_addr_t ctrl_dma ;
   u8 *country_codes ;
   unsigned int country_code_size ;
   unsigned int country_rel_date ;
   struct acm_wb wb[16U] ;
   unsigned long read_urbs_free ;
   struct urb *read_urbs[16U] ;
   struct acm_rb read_buffers[16U] ;
   int rx_buflimit ;
   int rx_endpoint ;
   spinlock_t read_lock ;
   int write_used ;
   int transmitting ;
   spinlock_t write_lock ;
   struct mutex mutex ;
   bool disconnected ;
   struct usb_cdc_line_coding line ;
   struct work_struct work ;
   unsigned int ctrlin ;
   unsigned int ctrlout ;
   unsigned int writesize ;
   unsigned int readsize ;
   unsigned int ctrlsize ;
   unsigned int minor ;
   unsigned char clocal ;
   unsigned int ctrl_caps ;
   unsigned int susp_count ;
   unsigned char combined_interfaces : 1 ;
   unsigned char is_int_ep : 1 ;
   unsigned char throttled : 1 ;
   unsigned char throttle_req : 1 ;
   u8 bInterval ;
   struct acm_wb *delayed_wb ;
};
typedef int ldv_func_ret_type;
long ldv__builtin_expect(long exp , long c ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_is_bulk_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
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
__inline static int usb_endpoint_is_bulk_out(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_out(epd);
    if (tmp___0 != 0) {
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
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_int(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
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
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void __xadd_wrong_size(void) ;
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5884;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5884;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5884;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5884;
  default:
  __xadd_wrong_size();
  }
  ldv_5884: ;
  return (__ret + i);
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
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
  return (& lock->ldv_7686.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_7686.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_7686.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_7686.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_7686.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_7686.rlock, flags);
  return;
}
}
extern unsigned long volatile jiffies ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(4096, wq, work);
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
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.12-rc1.tar.xz/linux-3.12-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
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
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern bool capable(int ) ;
__inline static void pm_runtime_mark_last_busy(struct device *dev )
{
  {
  *((unsigned long volatile *)(& dev->power.last_busy)) = jiffies;
  return;
}
}
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf ) ;
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data ) ;
extern struct usb_interface *usb_get_intf(struct usb_interface * ) ;
void ldv_usb_put_intf_12(struct usb_interface *intf ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf ) ;
int ldv_usb_autopm_get_interface_8(struct usb_interface *ldv_func_arg1 ) ;
int ldv_usb_autopm_get_interface_13(struct usb_interface *ldv_func_arg1 ) ;
void ldv_usb_autopm_put_interface_10(struct usb_interface *ldv_func_arg1 ) ;
void ldv_usb_autopm_put_interface_11(struct usb_interface *ldv_func_arg1 ) ;
void ldv_usb_autopm_put_interface_14(struct usb_interface *ldv_func_arg1 ) ;
extern int usb_autopm_get_interface_async(struct usb_interface * ) ;
extern void usb_autopm_put_interface_async(struct usb_interface * ) ;
__inline static void usb_mark_last_busy(struct usb_device *udev )
{
  {
  pm_runtime_mark_last_busy(& udev->dev);
  return;
}
}
extern int usb_driver_claim_interface(struct usb_driver * , struct usb_interface * ,
                                      void * ) ;
__inline static int usb_interface_claimed(struct usb_interface *iface )
{
  {
  return ((unsigned long )iface->dev.driver != (unsigned long )((struct device_driver *)0));
}
}
extern void usb_driver_release_interface(struct usb_driver * , struct usb_interface * ) ;
extern struct usb_interface *usb_ifnum_to_if(struct usb_device const * , unsigned int ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_39(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_40(struct usb_driver *arg ) ;
__inline static void ldv_usb_fill_bulk_urb_18(struct urb *urb , struct usb_device *dev ,
                                              unsigned int pipe , void *transfer_buffer ,
                                              int buffer_length , void (*complete_fn)(struct urb * ) ,
                                              void *context ) ;
__inline static void ldv_usb_fill_bulk_urb_18(struct urb *urb , struct usb_device *dev ,
                                              unsigned int pipe , void *transfer_buffer ,
                                              int buffer_length , void (*complete_fn)(struct urb * ) ,
                                              void *context ) ;
__inline static void ldv_usb_fill_int_urb_17(struct urb *urb , struct usb_device *dev ,
                                             unsigned int pipe , void *transfer_buffer ,
                                             int buffer_length , void (*complete_fn)(struct urb * ) ,
                                             void *context , int interval ) ;
__inline static void ldv_usb_fill_int_urb_17(struct urb *urb , struct usb_device *dev ,
                                             unsigned int pipe , void *transfer_buffer ,
                                             int buffer_length , void (*complete_fn)(struct urb * ) ,
                                             void *context , int interval ) ;
__inline static void ldv_usb_fill_int_urb_17(struct urb *urb , struct usb_device *dev ,
                                             unsigned int pipe , void *transfer_buffer ,
                                             int buffer_length , void (*complete_fn)(struct urb * ) ,
                                             void *context , int interval ) ;
struct urb *ldv_usb_alloc_urb_15(int iso_packets , gfp_t mem_flags ) ;
struct urb *ldv_usb_alloc_urb_16(int iso_packets , gfp_t mem_flags ) ;
struct urb *ldv_usb_alloc_urb_19(int iso_packets , gfp_t mem_flags ) ;
void ldv_usb_free_urb_26(struct urb *urb ) ;
void ldv_usb_free_urb_27(struct urb *urb ) ;
void ldv_usb_free_urb_28(struct urb *urb ) ;
void ldv_usb_free_urb_32(struct urb *urb ) ;
void ldv_usb_free_urb_33(struct urb *urb ) ;
void ldv_usb_free_urb_34(struct urb *urb ) ;
int ldv_usb_submit_urb_2(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_6(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_7(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_9(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  long tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if (tmp___0 != 0L) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
extern void tty_vhangup(struct tty_struct * ) ;
extern speed_t tty_termios_baud_rate(struct ktermios * ) ;
__inline static speed_t tty_get_baud_rate(struct tty_struct *tty )
{
  speed_t tmp ;
  {
  tmp = tty_termios_baud_rate(& tty->termios);
  return (tmp);
}
}
extern int tty_standard_install(struct tty_driver * , struct tty_struct * ) ;
extern void tty_port_init(struct tty_port * ) ;
extern struct device *tty_port_register_device(struct tty_port * , struct tty_driver * ,
                                               unsigned int , struct device * ) ;
extern void tty_port_put(struct tty_port * ) ;
__inline static struct tty_port *tty_port_get(struct tty_port *port )
{
  {
  if ((unsigned long )port != (unsigned long )((struct tty_port *)0)) {
    kref_get(& port->kref);
  } else {
  }
  return (port);
}
}
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
extern void tty_port_hangup(struct tty_port * ) ;
extern void tty_port_tty_hangup(struct tty_port * , bool ) ;
extern void tty_port_tty_wakeup(struct tty_port * ) ;
extern void tty_port_close(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_port_open(struct tty_port * , struct tty_struct * , struct file * ) ;
struct urb *ldv_alloc_urb(void) ;
void ldv_free_urb(struct urb *urb ) ;
void ldv_fill_int_urb(struct urb *urb , void (*complete_fn)(struct urb * ) ) ;
void ldv_fill_bulk_urb(struct urb *urb , void (*complete_fn)(struct urb * ) ) ;
int ldv_submit_urb(struct urb *urb ) ;
struct usb_device *ldv_interface_to_usbdev(void) ;
int ldv_get_interface(struct usb_interface *intf ) ;
void ldv_put_interface(void) ;
void *ldv_usb_get_intfdata(void) ;
void ldv_usb_set_intfdata(void *data ) ;
void ldv_usb_put_intf(void) ;
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
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
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
int LDV_IN_INTERRUPT = 1;
struct file *acm_ops_group0 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_3 ;
struct tty_port *acm_port_ops_group1 ;
int ldv_state_variable_2 ;
struct tty_struct *acm_ops_group1 ;
int ref_cnt ;
struct usb_interface *acm_driver_group1 ;
int ldv_state_variable_1 ;
int usb_counter ;
int ldv_state_variable_4 ;
void ldv_usb_driver_2(void) ;
void ldv_tty_port_operations_3(void) ;
void ldv_initialize_tty_operations_1(void) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
static struct usb_driver acm_driver ;
static struct tty_driver *acm_tty_driver ;
static struct acm *acm_table[32U] ;
static struct mutex acm_table_lock = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "acm_table_lock.wait_lock",
                                                           0, 0UL}}}}, {& acm_table_lock.wait_list,
                                                                        & acm_table_lock.wait_list},
    0, 0, (void *)(& acm_table_lock), {0, {0, 0}, "acm_table_lock", 0, 0UL}};
static struct acm *acm_get_by_index(unsigned int index )
{
  struct acm *acm ;
  {
  mutex_lock_nested(& acm_table_lock, 0U);
  acm = acm_table[index];
  if ((unsigned long )acm != (unsigned long )((struct acm *)0)) {
    mutex_lock_nested(& acm->mutex, 0U);
    if ((int )acm->disconnected) {
      mutex_unlock(& acm->mutex);
      acm = (struct acm *)0;
    } else {
      tty_port_get(& acm->port);
      mutex_unlock(& acm->mutex);
    }
  } else {
  }
  mutex_unlock(& acm_table_lock);
  return (acm);
}
}
static int acm_alloc_minor(struct acm *acm )
{
  int minor ;
  {
  mutex_lock_nested(& acm_table_lock, 0U);
  minor = 0;
  goto ldv_27007;
  ldv_27006: ;
  if ((unsigned long )acm_table[minor] == (unsigned long )((struct acm *)0)) {
    acm_table[minor] = acm;
    goto ldv_27005;
  } else {
  }
  minor = minor + 1;
  ldv_27007: ;
  if (minor <= 31) {
    goto ldv_27006;
  } else {
  }
  ldv_27005:
  mutex_unlock(& acm_table_lock);
  return (minor);
}
}
static void acm_release_minor(struct acm *acm )
{
  {
  mutex_lock_nested(& acm_table_lock, 0U);
  acm_table[acm->minor] = (struct acm *)0;
  mutex_unlock(& acm_table_lock);
  return;
}
}
static int acm_ctrl_msg(struct acm *acm , int request , int value , void *buf , int len )
{
  int retval ;
  unsigned int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = __create_pipe(acm->dev, 0U);
  tmp___0 = usb_control_msg(acm->dev, tmp | 2147483648U, (int )((__u8 )request), 33,
                            (int )((__u16 )value), (int )((acm->control)->altsetting)->desc.bInterfaceNumber,
                            buf, (int )((__u16 )len), 5000);
  retval = tmp___0;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_ctrl_msg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s - rq 0x%02x, val %#x, len %#x, result %d\n";
  descriptor.lineno = 179U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s - rq 0x%02x, val %#x, len %#x, result %d\n", "acm_ctrl_msg",
                      request, value, len, retval);
  } else {
  }
  return (0 < retval ? 0 : retval);
}
}
static int acm_wb_alloc(struct acm *acm )
{
  int i ;
  int wbn ;
  struct acm_wb *wb ;
  {
  wbn = 0;
  i = 0;
  ldv_27027:
  wb = (struct acm_wb *)(& acm->wb) + (unsigned long )wbn;
  if (wb->use == 0) {
    wb->use = 1;
    return (wbn);
  } else {
  }
  wbn = (wbn + 1) % 16;
  i = i + 1;
  if (i > 15) {
    return (-1);
  } else {
  }
  goto ldv_27027;
}
}
static int acm_wb_is_avail(struct acm *acm )
{
  int i ;
  int n ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  n = 16;
  tmp = spinlock_check(& acm->write_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_27038;
  ldv_27037:
  n = n - acm->wb[i].use;
  i = i + 1;
  ldv_27038: ;
  if (i <= 15) {
    goto ldv_27037;
  } else {
  }
  spin_unlock_irqrestore(& acm->write_lock, flags);
  return (n);
}
}
static void acm_write_done(struct acm *acm , struct acm_wb *wb )
{
  {
  wb->use = 0;
  acm->transmitting = acm->transmitting - 1;
  usb_autopm_put_interface_async(acm->control);
  return;
}
}
static int acm_start_wb(struct acm *acm , struct acm_wb *wb )
{
  int rc ;
  {
  acm->transmitting = acm->transmitting + 1;
  (wb->urb)->transfer_buffer = (void *)wb->buf;
  (wb->urb)->transfer_dma = wb->dmah;
  (wb->urb)->transfer_buffer_length = (u32 )wb->len;
  (wb->urb)->dev = acm->dev;
  rc = ldv_usb_submit_urb_2(wb->urb, 32U);
  if (rc < 0) {
    dev_err((struct device const *)(& (acm->data)->dev), "%s - usb_submit_urb(write bulk) failed: %d\n",
            "acm_start_wb", rc);
    acm_write_done(acm, wb);
  } else {
  }
  return (rc);
}
}
static ssize_t show_caps(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct acm *acm ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  tmp___0 = sprintf(buf, "%d", acm->ctrl_caps);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_bmCapabilities = {{"bmCapabilities", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_caps, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0};
static ssize_t show_country_codes(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct acm *acm ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  __mptr = (struct device const *)dev;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  __len = (size_t )acm->country_code_size;
  __ret = memcpy((void *)buf, (void const *)acm->country_codes, __len);
  return ((ssize_t )acm->country_code_size);
}
}
static struct device_attribute dev_attr_wCountryCodes = {{"wCountryCodes", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_country_codes, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static ssize_t show_country_rel_date(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct acm *acm ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  tmp___0 = sprintf(buf, "%d", acm->country_rel_date);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_iCountryCodeRelDate = {{"iCountryCodeRelDate", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_country_rel_date,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static void acm_ctrl_irq(struct urb *urb )
{
  struct acm *acm ;
  struct usb_cdc_notification *dr ;
  unsigned char *data ;
  int newctrl ;
  int retval ;
  int status ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  u16 tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  {
  acm = (struct acm *)urb->context;
  dr = (struct usb_cdc_notification *)urb->transfer_buffer;
  status = urb->status;
  switch (status) {
  case 0: ;
  goto ldv_27093;
  case -104: ;
  case -2: ;
  case -108:
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_ctrl_irq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s - urb shutting down with status: %d\n";
  descriptor.lineno = 326U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s - urb shutting down with status: %d\n", "acm_ctrl_irq",
                      status);
  } else {
  }
  return;
  default:
  descriptor___0.modname = "cdc_acm";
  descriptor___0.function = "acm_ctrl_irq";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___0.format = "%s - nonzero urb status received: %d\n";
  descriptor___0.lineno = 331U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (acm->control)->dev),
                      "%s - nonzero urb status received: %d\n", "acm_ctrl_irq", status);
  } else {
  }
  goto exit;
  }
  ldv_27093:
  usb_mark_last_busy(acm->dev);
  data = (unsigned char *)dr + 1U;
  switch ((int )dr->bNotificationType) {
  case 0:
  descriptor___1.modname = "cdc_acm";
  descriptor___1.function = "acm_ctrl_irq";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___1.format = "%s - network connection: %d\n";
  descriptor___1.lineno = 341U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (acm->control)->dev),
                      "%s - network connection: %d\n", "acm_ctrl_irq", (int )dr->wValue);
  } else {
  }
  goto ldv_27104;
  case 32:
  tmp___2 = get_unaligned_le16((void const *)data);
  newctrl = (int )tmp___2;
  if ((unsigned int )acm->clocal == 0U && (int )(acm->ctrlin & (unsigned int )(~ newctrl)) & 1) {
    descriptor___2.modname = "cdc_acm";
    descriptor___2.function = "acm_ctrl_irq";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor___2.format = "%s - calling hangup\n";
    descriptor___2.lineno = 349U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (acm->control)->dev),
                        "%s - calling hangup\n", "acm_ctrl_irq");
    } else {
    }
    tty_port_tty_hangup(& acm->port, 0);
  } else {
  }
  acm->ctrlin = (unsigned int )newctrl;
  descriptor___3.modname = "cdc_acm";
  descriptor___3.function = "acm_ctrl_irq";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___3.format = "%s - input control lines: dcd%c dsr%c break%c ring%c framing%c parity%c overrun%c\n";
  descriptor___3.lineno = 365U;
  descriptor___3.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& (acm->control)->dev),
                      "%s - input control lines: dcd%c dsr%c break%c ring%c framing%c parity%c overrun%c\n",
                      "acm_ctrl_irq", (int )acm->ctrlin & 1 ? 43 : 45, (acm->ctrlin & 2U) != 0U ? 43 : 45,
                      (acm->ctrlin & 4U) != 0U ? 43 : 45, (acm->ctrlin & 8U) != 0U ? 43 : 45,
                      (acm->ctrlin & 16U) != 0U ? 43 : 45, (acm->ctrlin & 32U) != 0U ? 43 : 45,
                      (acm->ctrlin & 64U) != 0U ? 43 : 45);
  } else {
  }
  goto ldv_27104;
  default:
  descriptor___4.modname = "cdc_acm";
  descriptor___4.function = "acm_ctrl_irq";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___4.format = "%s - unknown notification %d received: index %d len %d data0 %d data1 %d\n";
  descriptor___4.lineno = 374U;
  descriptor___4.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& (acm->control)->dev),
                      "%s - unknown notification %d received: index %d len %d data0 %d data1 %d\n",
                      "acm_ctrl_irq", (int )dr->bNotificationType, (int )dr->wIndex,
                      (int )dr->wLength, (int )*data, (int )*(data + 1UL));
  } else {
  }
  goto ldv_27104;
  }
  ldv_27104: ;
  exit:
  retval = ldv_usb_submit_urb_6(urb, 32U);
  if (retval != 0) {
    dev_err((struct device const *)(& (acm->control)->dev), "%s - usb_submit_urb failed: %d\n",
            "acm_ctrl_irq", retval);
  } else {
  }
  return;
}
}
static int acm_submit_read_urb(struct acm *acm , int index , gfp_t mem_flags )
{
  int res ;
  int tmp ;
  {
  tmp = test_and_clear_bit((long )index, (unsigned long volatile *)(& acm->read_urbs_free));
  if (tmp == 0) {
    return (0);
  } else {
  }
  res = ldv_usb_submit_urb_7(acm->read_urbs[index], mem_flags);
  if (res != 0) {
    if (res != -1) {
      dev_err((struct device const *)(& (acm->data)->dev), "%s - usb_submit_urb failed: %d\n",
              "acm_submit_read_urb", res);
    } else {
    }
    set_bit((long )index, (unsigned long volatile *)(& acm->read_urbs_free));
    return (res);
  } else {
  }
  return (0);
}
}
static int acm_submit_read_urbs(struct acm *acm , gfp_t mem_flags )
{
  int res ;
  int i ;
  {
  i = 0;
  goto ldv_27125;
  ldv_27124:
  res = acm_submit_read_urb(acm, i, mem_flags);
  if (res != 0) {
    return (res);
  } else {
  }
  i = i + 1;
  ldv_27125: ;
  if (acm->rx_buflimit > i) {
    goto ldv_27124;
  } else {
  }
  return (0);
}
}
static void acm_process_read_urb(struct acm *acm , struct urb *urb )
{
  {
  if (urb->actual_length == 0U) {
    return;
  } else {
  }
  tty_insert_flip_string(& acm->port, (unsigned char const *)urb->transfer_buffer,
                         (size_t )urb->actual_length);
  tty_flip_buffer_push(& acm->port);
  return;
}
}
static void acm_read_bulk_callback(struct urb *urb )
{
  struct acm_rb *rb ;
  struct acm *acm ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  rb = (struct acm_rb *)urb->context;
  acm = rb->instance;
  set_bit((long )rb->index, (unsigned long volatile *)(& acm->read_urbs_free));
  if ((unsigned long )acm->dev == (unsigned long )((struct usb_device *)0)) {
    descriptor.modname = "cdc_acm";
    descriptor.function = "acm_read_bulk_callback";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor.format = "%s - disconnected\n";
    descriptor.lineno = 442U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->data)->dev),
                        "%s - disconnected\n", "acm_read_bulk_callback");
    } else {
    }
    return;
  } else {
  }
  usb_mark_last_busy(acm->dev);
  if (urb->status != 0) {
    descriptor___0.modname = "cdc_acm";
    descriptor___0.function = "acm_read_bulk_callback";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor___0.format = "%s - non-zero urb status: %d\n";
    descriptor___0.lineno = 449U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (acm->data)->dev),
                        "%s - non-zero urb status: %d\n", "acm_read_bulk_callback",
                        urb->status);
    } else {
    }
    return;
  } else {
  }
  acm_process_read_urb(acm, urb);
  tmp___1 = spinlock_check(& acm->read_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  acm->throttled = acm->throttle_req;
  if ((unsigned int )*((unsigned char *)acm + 2988UL) == 0U && acm->susp_count == 0U) {
    spin_unlock_irqrestore(& acm->read_lock, flags);
    acm_submit_read_urb(acm, rb->index, 32U);
  } else {
    spin_unlock_irqrestore(& acm->read_lock, flags);
  }
  return;
}
}
static void acm_write_bulk(struct urb *urb )
{
  struct acm_wb *wb ;
  struct acm *acm ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  wb = (struct acm_wb *)urb->context;
  acm = wb->instance;
  tmp = spinlock_check(& acm->write_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  acm_write_done(acm, wb);
  spin_unlock_irqrestore(& acm->write_lock, flags);
  schedule_work(& acm->work);
  return;
}
}
static void acm_softint(struct work_struct *work )
{
  struct acm *acm ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  acm = (struct acm *)__mptr + 0xfffffffffffff4c8UL;
  tty_port_tty_wakeup(& acm->port);
  return;
}
}
static int acm_tty_install(struct tty_driver *driver , struct tty_struct *tty )
{
  struct acm *acm ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_tty_install";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 503U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "acm_tty_install");
  } else {
  }
  acm = acm_get_by_index((unsigned int )tty->index);
  if ((unsigned long )acm == (unsigned long )((struct acm *)0)) {
    return (-19);
  } else {
  }
  retval = tty_standard_install(driver, tty);
  if (retval != 0) {
    goto error_init_termios;
  } else {
  }
  tty->driver_data = (void *)acm;
  return (0);
  error_init_termios:
  tty_port_put(& acm->port);
  return (retval);
}
}
static int acm_tty_open(struct tty_struct *tty , struct file *filp )
{
  struct acm *acm ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  acm = (struct acm *)tty->driver_data;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_tty_open";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 526U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "acm_tty_open");
  } else {
  }
  tmp___0 = tty_port_open(& acm->port, tty, filp);
  return (tmp___0);
}
}
static int acm_port_activate(struct tty_port *port , struct tty_struct *tty )
{
  struct acm *acm ;
  struct tty_port const *__mptr ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct tty_port const *)port;
  acm = (struct acm *)__mptr + 0xffffffffffffffe8UL;
  retval = -19;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_port_activate";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 536U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_port_activate");
  } else {
  }
  mutex_lock_nested(& acm->mutex, 0U);
  if ((int )acm->disconnected) {
    goto disconnected;
  } else {
  }
  retval = ldv_usb_autopm_get_interface_8(acm->control);
  if (retval != 0) {
    goto error_get_interface;
  } else {
  }
  set_bit(17L, (unsigned long volatile *)(& tty->flags));
  (acm->control)->needs_remote_wakeup = 1U;
  (acm->ctrlurb)->dev = acm->dev;
  tmp___0 = ldv_usb_submit_urb_9(acm->ctrlurb, 208U);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (acm->control)->dev), "%s - usb_submit_urb(ctrl irq) failed\n",
            "acm_port_activate");
    goto error_submit_urb;
  } else {
  }
  acm->ctrlout = 3U;
  tmp___1 = acm_ctrl_msg(acm, 34, (int )acm->ctrlout, (void *)0, 0);
  if (tmp___1 < 0 && (acm->ctrl_caps & 2U) != 0U) {
    goto error_set_control;
  } else {
  }
  ldv_usb_autopm_put_interface_10(acm->control);
  spin_lock_irq(& acm->read_lock);
  acm->throttled = 0U;
  acm->throttle_req = 0U;
  spin_unlock_irq(& acm->read_lock);
  tmp___2 = acm_submit_read_urbs(acm, 208U);
  if (tmp___2 != 0) {
    goto error_submit_read_urbs;
  } else {
  }
  mutex_unlock(& acm->mutex);
  return (0);
  error_submit_read_urbs:
  acm->ctrlout = 0U;
  acm_ctrl_msg(acm, 34, (int )acm->ctrlout, (void *)0, 0);
  error_set_control:
  usb_kill_urb(acm->ctrlurb);
  error_submit_urb:
  ldv_usb_autopm_put_interface_11(acm->control);
  error_get_interface: ;
  disconnected:
  mutex_unlock(& acm->mutex);
  return (retval);
}
}
static void acm_port_destruct(struct tty_port *port )
{
  struct acm *acm ;
  struct tty_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  __mptr = (struct tty_port const *)port;
  acm = (struct acm *)__mptr + 0xffffffffffffffe8UL;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_port_destruct";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 599U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_port_destruct");
  } else {
  }
  acm_release_minor(acm);
  ldv_usb_put_intf_12(acm->control);
  kfree((void const *)acm->country_codes);
  kfree((void const *)acm);
  return;
}
}
static void acm_port_shutdown(struct tty_port *port )
{
  struct acm *acm ;
  struct tty_port const *__mptr ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  __mptr = (struct tty_port const *)port;
  acm = (struct acm *)__mptr + 0xffffffffffffffe8UL;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_port_shutdown";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 612U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_port_shutdown");
  } else {
  }
  mutex_lock_nested(& acm->mutex, 0U);
  if (! acm->disconnected) {
    ldv_usb_autopm_get_interface_13(acm->control);
    acm->ctrlout = 0U;
    acm_ctrl_msg(acm, 34, 0, (void *)0, 0);
    usb_kill_urb(acm->ctrlurb);
    i = 0;
    goto ldv_27212;
    ldv_27211:
    usb_kill_urb(acm->wb[i].urb);
    i = i + 1;
    ldv_27212: ;
    if (i <= 15) {
      goto ldv_27211;
    } else {
    }
    i = 0;
    goto ldv_27215;
    ldv_27214:
    usb_kill_urb(acm->read_urbs[i]);
    i = i + 1;
    ldv_27215: ;
    if (acm->rx_buflimit > i) {
      goto ldv_27214;
    } else {
    }
    (acm->control)->needs_remote_wakeup = 0U;
    ldv_usb_autopm_put_interface_14(acm->control);
  } else {
  }
  mutex_unlock(& acm->mutex);
  return;
}
}
static void acm_tty_cleanup(struct tty_struct *tty )
{
  struct acm *acm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_tty_cleanup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 632U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_tty_cleanup");
  } else {
  }
  tty_port_put(& acm->port);
  return;
}
}
static void acm_tty_hangup(struct tty_struct *tty )
{
  struct acm *acm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_tty_hangup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 639U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_tty_hangup");
  } else {
  }
  tty_port_hangup(& acm->port);
  return;
}
}
static void acm_tty_close(struct tty_struct *tty , struct file *filp )
{
  struct acm *acm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_tty_close";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 646U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "acm_tty_close");
  } else {
  }
  tty_port_close(& acm->port, tty, filp);
  return;
}
}
static int acm_tty_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct acm *acm ;
  int stat ;
  unsigned long flags ;
  int wbn ;
  struct acm_wb *wb ;
  raw_spinlock_t *tmp ;
  size_t __len ;
  void *__ret ;
  {
  acm = (struct acm *)tty->driver_data;
  if (count == 0) {
    return (0);
  } else {
  }
  tmp = spinlock_check(& acm->write_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  wbn = acm_wb_alloc(acm);
  if (wbn < 0) {
    spin_unlock_irqrestore(& acm->write_lock, flags);
    return (0);
  } else {
  }
  wb = (struct acm_wb *)(& acm->wb) + (unsigned long )wbn;
  if ((unsigned long )acm->dev == (unsigned long )((struct usb_device *)0)) {
    wb->use = 0;
    spin_unlock_irqrestore(& acm->write_lock, flags);
    return (-19);
  } else {
  }
  count = (int )(acm->writesize < (unsigned int )count ? acm->writesize : (unsigned int )count);
  __len = (size_t )count;
  __ret = memcpy((void *)wb->buf, (void const *)buf, __len);
  wb->len = count;
  usb_autopm_get_interface_async(acm->control);
  if (acm->susp_count != 0U) {
    if ((unsigned long )acm->delayed_wb == (unsigned long )((struct acm_wb *)0)) {
      acm->delayed_wb = wb;
    } else {
      usb_autopm_put_interface_async(acm->control);
    }
    spin_unlock_irqrestore(& acm->write_lock, flags);
    return (count);
  } else {
  }
  usb_mark_last_busy(acm->dev);
  stat = acm_start_wb(acm, wb);
  spin_unlock_irqrestore(& acm->write_lock, flags);
  if (stat < 0) {
    return (stat);
  } else {
  }
  return (count);
}
}
static int acm_tty_write_room(struct tty_struct *tty )
{
  struct acm *acm ;
  int tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  tmp = acm_wb_is_avail(acm);
  return (tmp != 0 ? (int )acm->writesize : 0);
}
}
static int acm_tty_chars_in_buffer(struct tty_struct *tty )
{
  struct acm *acm ;
  int tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  if ((int )acm->disconnected) {
    return (0);
  } else {
  }
  tmp = acm_wb_is_avail(acm);
  return ((int )((unsigned int )(16 - tmp) * acm->writesize));
}
}
static void acm_tty_throttle(struct tty_struct *tty )
{
  struct acm *acm ;
  {
  acm = (struct acm *)tty->driver_data;
  spin_lock_irq(& acm->read_lock);
  acm->throttle_req = 1U;
  spin_unlock_irq(& acm->read_lock);
  return;
}
}
static void acm_tty_unthrottle(struct tty_struct *tty )
{
  struct acm *acm ;
  unsigned int was_throttled ;
  {
  acm = (struct acm *)tty->driver_data;
  spin_lock_irq(& acm->read_lock);
  was_throttled = (unsigned int )acm->throttled;
  acm->throttled = 0U;
  acm->throttle_req = 0U;
  spin_unlock_irq(& acm->read_lock);
  if (was_throttled != 0U) {
    acm_submit_read_urbs(acm, 208U);
  } else {
  }
  return;
}
}
static int acm_tty_break_ctl(struct tty_struct *tty , int state )
{
  struct acm *acm ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  acm = (struct acm *)tty->driver_data;
  retval = acm_ctrl_msg(acm, 35, state != 0 ? 65535 : 0, (void *)0, 0);
  if (retval < 0) {
    descriptor.modname = "cdc_acm";
    descriptor.function = "acm_tty_break_ctl";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor.format = "%s - send break failed\n";
    descriptor.lineno = 759U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                        "%s - send break failed\n", "acm_tty_break_ctl");
    } else {
    }
  } else {
  }
  return (retval);
}
}
static int acm_tty_tiocmget(struct tty_struct *tty )
{
  struct acm *acm ;
  {
  acm = (struct acm *)tty->driver_data;
  return (((((((int )acm->ctrlout & 1 ? 2 : 0) | ((acm->ctrlout & 2U) != 0U ? 4 : 0)) | ((acm->ctrlin & 2U) != 0U ? 256 : 0)) | ((acm->ctrlin & 8U) != 0U ? 128 : 0)) | ((int )acm->ctrlin & 1 ? 64 : 0)) | 32);
}
}
static int acm_tty_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct acm *acm ;
  unsigned int newctrl ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  acm = (struct acm *)tty->driver_data;
  newctrl = acm->ctrlout;
  set = (unsigned int )(((set & 2U) != 0U) | ((set & 4U) != 0U ? 2 : 0));
  clear = (unsigned int )(((clear & 2U) != 0U) | ((clear & 4U) != 0U ? 2 : 0));
  newctrl = (~ clear & newctrl) | set;
  if (acm->ctrlout == newctrl) {
    return (0);
  } else {
  }
  tmp = newctrl;
  acm->ctrlout = tmp;
  tmp___0 = acm_ctrl_msg(acm, 34, (int )tmp, (void *)0, 0);
  return (tmp___0);
}
}
static int get_serial_info(struct acm *acm , struct serial_struct *info )
{
  struct serial_struct tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )info == (unsigned long )((struct serial_struct *)0)) {
    return (-22);
  } else {
  }
  memset((void *)(& tmp), 0, 72UL);
  tmp.flags = 8192;
  tmp.xmit_fifo_size = (int )acm->writesize;
  tmp.baud_base = (int )acm->line.dwDTERate;
  tmp.close_delay = (unsigned short )(acm->port.close_delay / 10U);
  tmp.closing_wait = acm->port.closing_wait != 65535U ? (unsigned short )(acm->port.closing_wait / 10U) : 65535U;
  tmp___0 = copy_to_user((void *)info, (void const *)(& tmp), 72U);
  if (tmp___0 != 0) {
    return (-14);
  } else {
    return (0);
  }
}
}
static int set_serial_info(struct acm *acm , struct serial_struct *newinfo )
{
  struct serial_struct new_serial ;
  unsigned int closing_wait ;
  unsigned int close_delay ;
  int retval ;
  unsigned long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  retval = 0;
  tmp = copy_from_user((void *)(& new_serial), (void const *)newinfo, 72UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  close_delay = (unsigned int )((int )new_serial.close_delay * 10);
  closing_wait = (unsigned int )new_serial.closing_wait != 65535U ? (unsigned int )((int )new_serial.closing_wait * 10) : 65535U;
  mutex_lock_nested(& acm->port.mutex, 0U);
  tmp___0 = capable(21);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if (acm->port.close_delay != close_delay || acm->port.closing_wait != closing_wait) {
      retval = -1;
    } else {
      retval = -95;
    }
  } else {
    acm->port.close_delay = close_delay;
    acm->port.closing_wait = closing_wait;
  }
  mutex_unlock(& acm->port.mutex);
  return (retval);
}
}
static int acm_tty_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct acm *acm ;
  int rv ;
  {
  acm = (struct acm *)tty->driver_data;
  rv = -515;
  switch (cmd) {
  case 21534U:
  rv = get_serial_info(acm, (struct serial_struct *)arg);
  goto ldv_27312;
  case 21535U:
  rv = set_serial_info(acm, (struct serial_struct *)arg);
  goto ldv_27312;
  }
  ldv_27312: ;
  return (rv);
}
}
static void acm_tty_set_termios(struct tty_struct *tty , struct ktermios *termios_old )
{
  struct acm *acm ;
  struct ktermios *termios ;
  struct usb_cdc_line_coding newline ;
  int newctrl ;
  unsigned int tmp ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  acm = (struct acm *)tty->driver_data;
  termios = & tty->termios;
  newctrl = (int )acm->ctrlout;
  newline.dwDTERate = tty_get_baud_rate(tty);
  newline.bCharFormat = (termios->c_cflag & 64U) != 0U ? 2U : 0U;
  newline.bParityType = (termios->c_cflag & 256U) != 0U ? ((termios->c_cflag & 512U) != 0U ? 1U : 2U) + ((termios->c_cflag & 1073741824U) != 0U ? 2U : 0U) : 0U;
  switch (termios->c_cflag & 48U) {
  case 0U:
  newline.bDataBits = 5U;
  goto ldv_27323;
  case 16U:
  newline.bDataBits = 6U;
  goto ldv_27323;
  case 32U:
  newline.bDataBits = 7U;
  goto ldv_27323;
  case 48U: ;
  default:
  newline.bDataBits = 8U;
  goto ldv_27323;
  }
  ldv_27323:
  acm->clocal = (termios->c_cflag & 2048U) != 0U;
  if (newline.dwDTERate == 0U) {
    newline.dwDTERate = acm->line.dwDTERate;
    newctrl = newctrl & -2;
  } else {
    newctrl = newctrl | 1;
  }
  if ((unsigned int )newctrl != acm->ctrlout) {
    tmp = (unsigned int )newctrl;
    acm->ctrlout = tmp;
    acm_ctrl_msg(acm, 34, (int )tmp, (void *)0, 0);
  } else {
  }
  tmp___1 = memcmp((void const *)(& acm->line), (void const *)(& newline), 7UL);
  if (tmp___1 != 0) {
    __len = 7UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& acm->line), (void const *)(& newline), __len);
    } else {
      __ret = memcpy((void *)(& acm->line), (void const *)(& newline),
                               __len);
    }
    descriptor.modname = "cdc_acm";
    descriptor.function = "acm_tty_set_termios";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor.format = "%s - set line: %d %d %d %d\n";
    descriptor.lineno = 911U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                        "%s - set line: %d %d %d %d\n", "acm_tty_set_termios", newline.dwDTERate,
                        (int )newline.bCharFormat, (int )newline.bParityType, (int )newline.bDataBits);
    } else {
    }
    acm_ctrl_msg(acm, 32, 0, (void *)(& acm->line), 7);
  } else {
  }
  return;
}
}
static struct tty_port_operations const acm_port_ops = {0, 0, & acm_port_shutdown, 0, & acm_port_activate, & acm_port_destruct};
static void acm_write_buffers_free(struct acm *acm )
{
  int i ;
  struct acm_wb *wb ;
  struct usb_device *usb_dev___0 ;
  struct usb_device *tmp ;
  {
  tmp = interface_to_usbdev(acm->control);
  usb_dev___0 = tmp;
  wb = (struct acm_wb *)(& acm->wb);
  i = 0;
  goto ldv_27341;
  ldv_27340:
  usb_free_coherent(usb_dev___0, (size_t )acm->writesize, (void *)wb->buf, wb->dmah);
  i = i + 1;
  wb = wb + 1;
  ldv_27341: ;
  if (i <= 15) {
    goto ldv_27340;
  } else {
  }
  return;
}
}
static void acm_read_buffers_free(struct acm *acm )
{
  struct usb_device *usb_dev___0 ;
  struct usb_device *tmp ;
  int i ;
  {
  tmp = interface_to_usbdev(acm->control);
  usb_dev___0 = tmp;
  i = 0;
  goto ldv_27349;
  ldv_27348:
  usb_free_coherent(usb_dev___0, (size_t )acm->readsize, (void *)acm->read_buffers[i].base,
                    acm->read_buffers[i].dma);
  i = i + 1;
  ldv_27349: ;
  if (acm->rx_buflimit > i) {
    goto ldv_27348;
  } else {
  }
  return;
}
}
static int acm_write_buffers_alloc(struct acm *acm )
{
  int i ;
  struct acm_wb *wb ;
  void *tmp ;
  {
  wb = (struct acm_wb *)(& acm->wb);
  i = 0;
  goto ldv_27360;
  ldv_27359:
  tmp = usb_alloc_coherent(acm->dev, (size_t )acm->writesize, 208U, & wb->dmah);
  wb->buf = (unsigned char *)tmp;
  if ((unsigned long )wb->buf == (unsigned long )((unsigned char *)0U)) {
    goto ldv_27357;
    ldv_27356:
    i = i - 1;
    wb = wb - 1;
    usb_free_coherent(acm->dev, (size_t )acm->writesize, (void *)wb->buf, wb->dmah);
    ldv_27357: ;
    if (i != 0) {
      goto ldv_27356;
    } else {
    }
    return (-12);
  } else {
  }
  i = i + 1;
  wb = wb + 1;
  ldv_27360: ;
  if (i <= 15) {
    goto ldv_27359;
  } else {
  }
  return (0);
}
}
static int acm_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct usb_cdc_union_desc *union_header ;
  struct usb_cdc_country_functional_desc *cfd ;
  unsigned char *buffer ;
  int buflen ;
  struct usb_interface *control_interface ;
  struct usb_interface *data_interface ;
  struct usb_endpoint_descriptor *epctrl ;
  struct usb_endpoint_descriptor *epread ;
  struct usb_endpoint_descriptor *epwrite ;
  struct usb_device *usb_dev___0 ;
  struct usb_device *tmp ;
  struct acm *acm ;
  int minor ;
  int ctrlsize ;
  int readsize ;
  u8 *buf ;
  u8 ac_management_function ;
  u8 call_management_function ;
  int call_interface_num ;
  int data_interface_num ;
  unsigned long quirks ;
  int num_rx_buf ;
  int i ;
  int combined_interfaces ;
  struct device *tty_dev ;
  int rv ;
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
  struct usb_endpoint_descriptor *ep ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct usb_interface *t ;
  struct _ddebug descriptor___5 ;
  long tmp___9 ;
  struct _ddebug descriptor___6 ;
  long tmp___10 ;
  int tmp___11 ;
  struct usb_endpoint_descriptor *t___0 ;
  struct _ddebug descriptor___7 ;
  long tmp___12 ;
  int tmp___13 ;
  struct _ddebug descriptor___8 ;
  long tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  unsigned int tmp___18 ;
  int tmp___19 ;
  void *tmp___20 ;
  int tmp___21 ;
  struct acm_rb *rb ;
  struct urb *urb ;
  void *tmp___22 ;
  struct acm_wb *snd ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  int tmp___25 ;
  void *tmp___26 ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___27 ;
  long tmp___28 ;
  long tmp___29 ;
  {
  union_header = (struct usb_cdc_union_desc *)0;
  cfd = (struct usb_cdc_country_functional_desc *)0;
  buffer = (intf->altsetting)->extra;
  buflen = (intf->altsetting)->extralen;
  epctrl = (struct usb_endpoint_descriptor *)0;
  epread = (struct usb_endpoint_descriptor *)0;
  epwrite = (struct usb_endpoint_descriptor *)0;
  tmp = interface_to_usbdev(intf);
  usb_dev___0 = tmp;
  ac_management_function = 0U;
  call_management_function = 0U;
  call_interface_num = -1;
  data_interface_num = -1;
  combined_interfaces = 0;
  rv = -12;
  quirks = id->driver_info;
  if (quirks == 32UL) {
    return (-19);
  } else {
  }
  num_rx_buf = quirks == 2UL ? 1 : 16;
  if (quirks == 1UL) {
    data_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0, 1U);
    control_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0,
                                        0U);
    goto skip_normal_probe;
  } else {
  }
  if ((unsigned long )buffer == (unsigned long )((unsigned char *)0U)) {
    dev_err((struct device const *)(& intf->dev), "Weird descriptor references\n");
    return (-22);
  } else {
  }
  if (buflen == 0) {
    if (((unsigned long )(intf->cur_altsetting)->endpoint != (unsigned long )((struct usb_host_endpoint *)0) && ((intf->cur_altsetting)->endpoint)->extralen != 0) && (unsigned long )((intf->cur_altsetting)->endpoint)->extra != (unsigned long )((unsigned char *)0U)) {
      descriptor.modname = "cdc_acm";
      descriptor.function = "acm_probe";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor.format = "Seeking extra descriptors on endpoint\n";
      descriptor.lineno = 1023U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& intf->dev), "Seeking extra descriptors on endpoint\n");
      } else {
      }
      buflen = ((intf->cur_altsetting)->endpoint)->extralen;
      buffer = ((intf->cur_altsetting)->endpoint)->extra;
    } else {
      dev_err((struct device const *)(& intf->dev), "Zero length descriptor references\n");
      return (-22);
    }
  } else {
  }
  goto ldv_27404;
  ldv_27403: ;
  if ((unsigned int )*(buffer + 1UL) != 36U) {
    dev_err((struct device const *)(& intf->dev), "skipping garbage\n");
    goto next_desc;
  } else {
  }
  switch ((int )*(buffer + 2UL)) {
  case 6: ;
  if ((unsigned long )union_header != (unsigned long )((struct usb_cdc_union_desc *)0)) {
    dev_err((struct device const *)(& intf->dev), "More than one union descriptor, skipping ...\n");
    goto next_desc;
  } else {
  }
  union_header = (struct usb_cdc_union_desc *)buffer;
  goto ldv_27396;
  case 7:
  cfd = (struct usb_cdc_country_functional_desc *)buffer;
  goto ldv_27396;
  case 0: ;
  goto ldv_27396;
  case 2:
  ac_management_function = *(buffer + 3UL);
  goto ldv_27396;
  case 1:
  call_management_function = *(buffer + 3UL);
  call_interface_num = (int )*(buffer + 4UL);
  if ((quirks & 8UL) == 0UL && ((int )call_management_function & 3) != 3) {
    dev_err((struct device const *)(& intf->dev), "This device cannot do calls on its own. It is not a modem.\n");
  } else {
  }
  goto ldv_27396;
  default:
  descriptor___0.modname = "cdc_acm";
  descriptor___0.function = "acm_probe";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___0.format = "Ignoring descriptor: type %02x, length %d\n";
  descriptor___0.lineno = 1068U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& intf->dev), "Ignoring descriptor: type %02x, length %d\n",
                      (int )*(buffer + 2UL), (int )*buffer);
  } else {
  }
  goto ldv_27396;
  }
  ldv_27396: ;
  next_desc:
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  ldv_27404: ;
  if (buflen > 0) {
    goto ldv_27403;
  } else {
  }
  if ((unsigned long )union_header == (unsigned long )((struct usb_cdc_union_desc *)0)) {
    if (call_interface_num > 0) {
      descriptor___1.modname = "cdc_acm";
      descriptor___1.function = "acm_probe";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor___1.format = "No union descriptor, using call management descriptor\n";
      descriptor___1.lineno = 1078U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& intf->dev),
                          "No union descriptor, using call management descriptor\n");
      } else {
      }
      if ((quirks & 16UL) != 0UL) {
        data_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0,
                                         0U);
      } else {
        data_interface_num = call_interface_num;
        data_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0,
                                         (unsigned int )data_interface_num);
      }
      control_interface = intf;
    } else
    if ((unsigned int )(intf->cur_altsetting)->desc.bNumEndpoints != 3U) {
      descriptor___2.modname = "cdc_acm";
      descriptor___2.function = "acm_probe";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor___2.format = "No union descriptor, giving up\n";
      descriptor___2.lineno = 1087U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& intf->dev),
                          "No union descriptor, giving up\n");
      } else {
      }
      return (-19);
    } else {
      dev_warn((struct device const *)(& intf->dev), "No union descriptor, testing for castrated device\n");
      combined_interfaces = 1;
      data_interface = intf;
      control_interface = data_interface;
      goto look_for_collapsed_interface;
    }
  } else {
    control_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0,
                                        (unsigned int )union_header->bMasterInterface0);
    data_interface_num = (int )union_header->bSlaveInterface0;
    data_interface = usb_ifnum_to_if((struct usb_device const *)usb_dev___0, (unsigned int )data_interface_num);
    if ((unsigned long )control_interface == (unsigned long )((struct usb_interface *)0) || (unsigned long )data_interface == (unsigned long )((struct usb_interface *)0)) {
      descriptor___3.modname = "cdc_acm";
      descriptor___3.function = "acm_probe";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor___3.format = "no interfaces\n";
      descriptor___3.lineno = 1100U;
      descriptor___3.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& intf->dev),
                          "no interfaces\n");
      } else {
      }
      return (-19);
    } else {
    }
  }
  if (data_interface_num != call_interface_num) {
    descriptor___4.modname = "cdc_acm";
    descriptor___4.function = "acm_probe";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor___4.format = "Separate call control interface. That is not fully supported.\n";
    descriptor___4.lineno = 1106U;
    descriptor___4.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& intf->dev),
                        "Separate call control interface. That is not fully supported.\n");
    } else {
    }
  } else {
  }
  if ((unsigned long )control_interface == (unsigned long )data_interface) {
    dev_warn((struct device const *)(& intf->dev), "Control and data interfaces are not separated!\n");
    combined_interfaces = 1;
    quirks = quirks | 4UL;
    if ((unsigned int )(data_interface->cur_altsetting)->desc.bNumEndpoints != 3U) {
      dev_err((struct device const *)(& intf->dev), "This needs exactly 3 endpoints\n");
      return (-22);
    } else {
    }
    look_for_collapsed_interface:
    i = 0;
    goto ldv_27413;
    ldv_27412:
    ep = & ((data_interface->cur_altsetting)->endpoint + (unsigned long )i)->desc;
    tmp___8 = usb_endpoint_is_int_in((struct usb_endpoint_descriptor const *)ep);
    if (tmp___8 != 0) {
      epctrl = ep;
    } else {
      tmp___7 = usb_endpoint_is_bulk_out((struct usb_endpoint_descriptor const *)ep);
      if (tmp___7 != 0) {
        epwrite = ep;
      } else {
        tmp___6 = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)ep);
        if (tmp___6 != 0) {
          epread = ep;
        } else {
          return (-22);
        }
      }
    }
    i = i + 1;
    ldv_27413: ;
    if (i <= 2) {
      goto ldv_27412;
    } else {
    }
    if (((unsigned long )epctrl == (unsigned long )((struct usb_endpoint_descriptor *)0) || (unsigned long )epread == (unsigned long )((struct usb_endpoint_descriptor *)0)) || (unsigned long )epwrite == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
      return (-19);
    } else {
      goto made_compressed_probe;
    }
  } else {
  }
  skip_normal_probe: ;
  if ((unsigned int )(data_interface->cur_altsetting)->desc.bInterfaceClass != 10U) {
    if ((unsigned int )(control_interface->cur_altsetting)->desc.bInterfaceClass == 10U) {
      descriptor___5.modname = "cdc_acm";
      descriptor___5.function = "acm_probe";
      descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor___5.format = "Your device has switched interfaces.\n";
      descriptor___5.lineno = 1147U;
      descriptor___5.flags = 0U;
      tmp___9 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___9 != 0L) {
        __dynamic_dev_dbg(& descriptor___5, (struct device const *)(& intf->dev),
                          "Your device has switched interfaces.\n");
      } else {
      }
      t = control_interface;
      control_interface = data_interface;
      data_interface = t;
    } else {
      return (-22);
    }
  } else {
  }
  if (combined_interfaces == 0 && (unsigned long )intf != (unsigned long )control_interface) {
    return (-19);
  } else {
  }
  if (combined_interfaces == 0) {
    tmp___11 = usb_interface_claimed(data_interface);
    if (tmp___11 != 0) {
      descriptor___6.modname = "cdc_acm";
      descriptor___6.function = "acm_probe";
      descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
      descriptor___6.format = "The data interface isn\'t available\n";
      descriptor___6.lineno = 1162U;
      descriptor___6.flags = 0U;
      tmp___10 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___10 != 0L) {
        __dynamic_dev_dbg(& descriptor___6, (struct device const *)(& intf->dev),
                          "The data interface isn\'t available\n");
      } else {
      }
      return (-16);
    } else {
    }
  } else {
  }
  if ((unsigned int )(data_interface->cur_altsetting)->desc.bNumEndpoints <= 1U || (unsigned int )(control_interface->cur_altsetting)->desc.bNumEndpoints == 0U) {
    return (-22);
  } else {
  }
  epctrl = & ((control_interface->cur_altsetting)->endpoint)->desc;
  epread = & ((data_interface->cur_altsetting)->endpoint)->desc;
  epwrite = & ((data_interface->cur_altsetting)->endpoint + 1UL)->desc;
  tmp___13 = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)epread);
  if (tmp___13 == 0) {
    descriptor___7.modname = "cdc_acm";
    descriptor___7.function = "acm_probe";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
    descriptor___7.format = "The data interface has switched endpoints\n";
    descriptor___7.lineno = 1181U;
    descriptor___7.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)(& intf->dev),
                        "The data interface has switched endpoints\n");
    } else {
    }
    t___0 = epread;
    epread = epwrite;
    epwrite = t___0;
  } else {
  }
  made_compressed_probe:
  descriptor___8.modname = "cdc_acm";
  descriptor___8.function = "acm_probe";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor___8.format = "interfaces are valid\n";
  descriptor___8.lineno = 1187U;
  descriptor___8.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)(& intf->dev), "interfaces are valid\n");
  } else {
  }
  tmp___15 = kzalloc(3000UL, 208U);
  acm = (struct acm *)tmp___15;
  if ((unsigned long )acm == (unsigned long )((struct acm *)0)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (acm kzalloc)\n");
    goto alloc_fail;
  } else {
  }
  minor = acm_alloc_minor(acm);
  if (minor == 32) {
    dev_err((struct device const *)(& intf->dev), "no more free acm devices\n");
    kfree((void const *)acm);
    return (-19);
  } else {
  }
  ctrlsize = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)epctrl);
  tmp___16 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)epread);
  readsize = tmp___16 * (quirks == 2UL ? 1 : 2);
  acm->combined_interfaces = (unsigned char )combined_interfaces;
  tmp___17 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)epwrite);
  acm->writesize = (unsigned int )(tmp___17 * 20);
  acm->control = control_interface;
  acm->data = data_interface;
  acm->minor = (unsigned int )minor;
  acm->dev = usb_dev___0;
  acm->ctrl_caps = (unsigned int )ac_management_function;
  if ((quirks & 4UL) != 0UL) {
    acm->ctrl_caps = acm->ctrl_caps & 4294967293U;
  } else {
  }
  acm->ctrlsize = (unsigned int )ctrlsize;
  acm->readsize = (unsigned int )readsize;
  acm->rx_buflimit = num_rx_buf;
  __init_work(& acm->work, 0);
  __constr_expr_0.counter = 137438953408L;
  acm->work.data = __constr_expr_0;
  lockdep_init_map(& acm->work.lockdep_map, "(&acm->work)", & __key, 0);
  INIT_LIST_HEAD(& acm->work.entry);
  acm->work.func = & acm_softint;
  spinlock_check(& acm->write_lock);
  __raw_spin_lock_init(& acm->write_lock.ldv_7686.rlock, "&(&acm->write_lock)->rlock",
                       & __key___0);
  spinlock_check(& acm->read_lock);
  __raw_spin_lock_init(& acm->read_lock.ldv_7686.rlock, "&(&acm->read_lock)->rlock",
                       & __key___1);
  __mutex_init(& acm->mutex, "&acm->mutex", & __key___2);
  tmp___18 = __create_pipe(usb_dev___0, (unsigned int )epread->bEndpointAddress);
  acm->rx_endpoint = (int )(tmp___18 | 3221225600U);
  tmp___19 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)epread);
  acm->is_int_ep = (unsigned char )tmp___19;
  if ((unsigned int )*((unsigned char *)acm + 2988UL) != 0U) {
    acm->bInterval = epread->bInterval;
  } else {
  }
  tty_port_init(& acm->port);
  acm->port.ops = & acm_port_ops;
  tmp___20 = usb_alloc_coherent(usb_dev___0, (size_t )ctrlsize, 208U, & acm->ctrl_dma);
  buf = (u8 *)tmp___20;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (ctrl buffer alloc)\n");
    goto alloc_fail2;
  } else {
  }
  acm->ctrl_buffer = buf;
  tmp___21 = acm_write_buffers_alloc(acm);
  if (tmp___21 < 0) {
    dev_err((struct device const *)(& intf->dev), "out of memory (write buffer alloc)\n");
    goto alloc_fail4;
  } else {
  }
  acm->ctrlurb = ldv_usb_alloc_urb_15(0, 208U);
  if ((unsigned long )acm->ctrlurb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (ctrlurb kmalloc)\n");
    goto alloc_fail5;
  } else {
  }
  i = 0;
  goto ldv_27435;
  ldv_27434:
  rb = (struct acm_rb *)(& acm->read_buffers) + (unsigned long )i;
  tmp___22 = usb_alloc_coherent(acm->dev, (size_t )readsize, 208U, & rb->dma);
  rb->base = (unsigned char *)tmp___22;
  if ((unsigned long )rb->base == (unsigned long )((unsigned char *)0U)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (read bufs usb_alloc_coherent)\n");
    goto alloc_fail6;
  } else {
  }
  rb->index = i;
  rb->instance = acm;
  urb = ldv_usb_alloc_urb_16(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (read urbs usb_alloc_urb)\n");
    goto alloc_fail6;
  } else {
  }
  urb->transfer_flags = urb->transfer_flags | 4U;
  urb->transfer_dma = rb->dma;
  if ((unsigned int )*((unsigned char *)acm + 2988UL) != 0U) {
    ldv_usb_fill_int_urb_17(urb, acm->dev, (unsigned int )acm->rx_endpoint, (void *)rb->base,
                            (int )acm->readsize, & acm_read_bulk_callback, (void *)rb,
                            (int )acm->bInterval);
  } else {
    ldv_usb_fill_bulk_urb_18(urb, acm->dev, (unsigned int )acm->rx_endpoint, (void *)rb->base,
                             (int )acm->readsize, & acm_read_bulk_callback, (void *)rb);
  }
  acm->read_urbs[i] = urb;
  __set_bit((long )i, (unsigned long volatile *)(& acm->read_urbs_free));
  i = i + 1;
  ldv_27435: ;
  if (i < num_rx_buf) {
    goto ldv_27434;
  } else {
  }
  i = 0;
  goto ldv_27440;
  ldv_27439:
  snd = (struct acm_wb *)(& acm->wb) + (unsigned long )i;
  snd->urb = ldv_usb_alloc_urb_19(0, 208U);
  if ((unsigned long )snd->urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& intf->dev), "out of memory (write urbs usb_alloc_urb)\n");
    goto alloc_fail7;
  } else {
  }
  tmp___25 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)epwrite);
  if (tmp___25 != 0) {
    tmp___23 = __create_pipe(usb_dev___0, (unsigned int )epwrite->bEndpointAddress);
    ldv_usb_fill_int_urb_17(snd->urb, usb_dev___0, tmp___23 | 1073741824U, (void *)0,
                            (int )acm->writesize, & acm_write_bulk, (void *)snd, (int )epwrite->bInterval);
  } else {
    tmp___24 = __create_pipe(usb_dev___0, (unsigned int )epwrite->bEndpointAddress);
    ldv_usb_fill_bulk_urb_18(snd->urb, usb_dev___0, tmp___24 | 3221225472U, (void *)0,
                             (int )acm->writesize, & acm_write_bulk, (void *)snd);
  }
  (snd->urb)->transfer_flags = (snd->urb)->transfer_flags | 4U;
  snd->instance = acm;
  i = i + 1;
  ldv_27440: ;
  if (i <= 15) {
    goto ldv_27439;
  } else {
  }
  ldv_usb_set_intfdata_22(intf, (void *)acm);
  i = device_create_file(& intf->dev, (struct device_attribute const *)(& dev_attr_bmCapabilities));
  if (i < 0) {
    goto alloc_fail7;
  } else {
  }
  if ((unsigned long )cfd != (unsigned long )((struct usb_cdc_country_functional_desc *)0)) {
    tmp___26 = kmalloc((size_t )((int )cfd->bLength + -4), 208U);
    acm->country_codes = (u8 *)tmp___26;
    if ((unsigned long )acm->country_codes == (unsigned long )((u8 *)0U)) {
      goto skip_countries;
    } else {
    }
    acm->country_code_size = (unsigned int )((int )cfd->bLength + -4);
    __len = (size_t )((int )cfd->bLength + -4);
    __ret = memcpy((void *)acm->country_codes, (void const *)(& cfd->wCountyCode0),
                             __len);
    acm->country_rel_date = (unsigned int )cfd->iCountryCodeRelDate;
    i = device_create_file(& intf->dev, (struct device_attribute const *)(& dev_attr_wCountryCodes));
    if (i < 0) {
      kfree((void const *)acm->country_codes);
      acm->country_codes = (u8 *)0U;
      acm->country_code_size = 0U;
      goto skip_countries;
    } else {
    }
    i = device_create_file(& intf->dev, (struct device_attribute const *)(& dev_attr_iCountryCodeRelDate));
    if (i < 0) {
      device_remove_file(& intf->dev, (struct device_attribute const *)(& dev_attr_wCountryCodes));
      kfree((void const *)acm->country_codes);
      acm->country_codes = (u8 *)0U;
      acm->country_code_size = 0U;
      goto skip_countries;
    } else {
    }
  } else {
  }
  skip_countries:
  tmp___27 = __create_pipe(usb_dev___0, (unsigned int )epctrl->bEndpointAddress);
  ldv_usb_fill_int_urb_17(acm->ctrlurb, usb_dev___0, tmp___27 | 1073741952U, (void *)acm->ctrl_buffer,
                          ctrlsize, & acm_ctrl_irq, (void *)acm, (unsigned int )epctrl->bInterval != 0U ? (int )epctrl->bInterval : 16);
  (acm->ctrlurb)->transfer_flags = (acm->ctrlurb)->transfer_flags | 4U;
  (acm->ctrlurb)->transfer_dma = acm->ctrl_dma;
  _dev_info((struct device const *)(& intf->dev), "ttyACM%d: USB ACM device\n",
            minor);
  acm_ctrl_msg(acm, 34, (int )acm->ctrlout, (void *)0, 0);
  acm->line.dwDTERate = 9600U;
  acm->line.bDataBits = 8U;
  acm_ctrl_msg(acm, 32, 0, (void *)(& acm->line), 7);
  usb_driver_claim_interface(& acm_driver, data_interface, (void *)acm);
  ldv_usb_set_intfdata_22(data_interface, (void *)acm);
  usb_get_intf(control_interface);
  tty_dev = tty_port_register_device(& acm->port, acm_tty_driver, (unsigned int )minor,
                                     & control_interface->dev);
  tmp___29 = IS_ERR((void const *)tty_dev);
  if (tmp___29 != 0L) {
    tmp___28 = PTR_ERR((void const *)tty_dev);
    rv = (int )tmp___28;
    goto alloc_fail8;
  } else {
  }
  return (0);
  alloc_fail8: ;
  if ((unsigned long )acm->country_codes != (unsigned long )((u8 *)0U)) {
    device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_wCountryCodes));
    device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_iCountryCodeRelDate));
  } else {
  }
  device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_bmCapabilities));
  alloc_fail7:
  ldv_usb_set_intfdata_22(intf, (void *)0);
  i = 0;
  goto ldv_27448;
  ldv_27447:
  ldv_usb_free_urb_26(acm->wb[i].urb);
  i = i + 1;
  ldv_27448: ;
  if (i <= 15) {
    goto ldv_27447;
  } else {
  }
  alloc_fail6:
  i = 0;
  goto ldv_27451;
  ldv_27450:
  ldv_usb_free_urb_27(acm->read_urbs[i]);
  i = i + 1;
  ldv_27451: ;
  if (i < num_rx_buf) {
    goto ldv_27450;
  } else {
  }
  acm_read_buffers_free(acm);
  ldv_usb_free_urb_28(acm->ctrlurb);
  alloc_fail5:
  acm_write_buffers_free(acm);
  alloc_fail4:
  usb_free_coherent(usb_dev___0, (size_t )ctrlsize, (void *)acm->ctrl_buffer, acm->ctrl_dma);
  alloc_fail2:
  acm_release_minor(acm);
  kfree((void const *)acm);
  alloc_fail: ;
  return (rv);
}
}
static void stop_data_traffic(struct acm *acm )
{
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "cdc_acm";
  descriptor.function = "stop_data_traffic";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 1402U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (acm->control)->dev),
                      "%s\n", "stop_data_traffic");
  } else {
  }
  usb_kill_urb(acm->ctrlurb);
  i = 0;
  goto ldv_27460;
  ldv_27459:
  usb_kill_urb(acm->wb[i].urb);
  i = i + 1;
  ldv_27460: ;
  if (i <= 15) {
    goto ldv_27459;
  } else {
  }
  i = 0;
  goto ldv_27463;
  ldv_27462:
  usb_kill_urb(acm->read_urbs[i]);
  i = i + 1;
  ldv_27463: ;
  if (acm->rx_buflimit > i) {
    goto ldv_27462;
  } else {
  }
  cancel_work_sync(& acm->work);
  return;
}
}
static void acm_disconnect(struct usb_interface *intf )
{
  struct acm *acm ;
  void *tmp ;
  struct usb_device *usb_dev___0 ;
  struct usb_device *tmp___0 ;
  struct tty_struct *tty ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  tmp___0 = interface_to_usbdev(intf);
  usb_dev___0 = tmp___0;
  descriptor.modname = "cdc_acm";
  descriptor.function = "acm_disconnect";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.12-rc1.tar.xz--X--144_2a--X--cpachecker/linux-3.12-rc1.tar.xz/csd_deg_dscv/8326/dscv_tempdir/dscv/ri/144_2a/drivers/usb/class/cdc-acm.o.c.prepared";
  descriptor.format = "%s\n";
  descriptor.lineno = 1420U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& intf->dev), "%s\n",
                      "acm_disconnect");
  } else {
  }
  if ((unsigned long )acm == (unsigned long )((struct acm *)0)) {
    return;
  } else {
  }
  mutex_lock_nested(& acm->mutex, 0U);
  acm->disconnected = 1;
  if ((unsigned long )acm->country_codes != (unsigned long )((u8 *)0U)) {
    device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_wCountryCodes));
    device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_iCountryCodeRelDate));
  } else {
  }
  device_remove_file(& (acm->control)->dev, (struct device_attribute const *)(& dev_attr_bmCapabilities));
  ldv_usb_set_intfdata_22(acm->control, (void *)0);
  ldv_usb_set_intfdata_22(acm->data, (void *)0);
  mutex_unlock(& acm->mutex);
  tty = tty_port_tty_get(& acm->port);
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0)) {
    tty_vhangup(tty);
    tty_kref_put(tty);
  } else {
  }
  stop_data_traffic(acm);
  tty_unregister_device(acm_tty_driver, acm->minor);
  ldv_usb_free_urb_32(acm->ctrlurb);
  i = 0;
  goto ldv_27475;
  ldv_27474:
  ldv_usb_free_urb_33(acm->wb[i].urb);
  i = i + 1;
  ldv_27475: ;
  if (i <= 15) {
    goto ldv_27474;
  } else {
  }
  i = 0;
  goto ldv_27478;
  ldv_27477:
  ldv_usb_free_urb_34(acm->read_urbs[i]);
  i = i + 1;
  ldv_27478: ;
  if (acm->rx_buflimit > i) {
    goto ldv_27477;
  } else {
  }
  acm_write_buffers_free(acm);
  usb_free_coherent(usb_dev___0, (size_t )acm->ctrlsize, (void *)acm->ctrl_buffer,
                    acm->ctrl_dma);
  acm_read_buffers_free(acm);
  if ((unsigned int )*((unsigned char *)acm + 2988UL) == 0U) {
    usb_driver_release_interface(& acm_driver, (unsigned long )acm->control == (unsigned long )intf ? acm->data : acm->control);
  } else {
  }
  tty_port_put(& acm->port);
  return;
}
}
static int acm_suspend(struct usb_interface *intf , pm_message_t message )
{
  struct acm *acm ;
  void *tmp ;
  int cnt ;
  int b ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  if ((message.event & 1024) != 0) {
    spin_lock_irq(& acm->write_lock);
    b = acm->transmitting;
    spin_unlock_irq(& acm->write_lock);
    if (b != 0) {
      return (-16);
    } else {
    }
  } else {
  }
  spin_lock_irq(& acm->read_lock);
  spin_lock(& acm->write_lock);
  tmp___0 = acm->susp_count;
  acm->susp_count = acm->susp_count + 1U;
  cnt = (int )tmp___0;
  spin_unlock(& acm->write_lock);
  spin_unlock_irq(& acm->read_lock);
  if (cnt != 0) {
    return (0);
  } else {
  }
  tmp___1 = constant_test_bit(31L, (unsigned long const volatile *)(& acm->port.flags));
  if (tmp___1 != 0) {
    stop_data_traffic(acm);
  } else {
  }
  return (0);
}
}
static int acm_resume(struct usb_interface *intf )
{
  struct acm *acm ;
  void *tmp ;
  struct acm_wb *wb ;
  int rv ;
  int cnt ;
  int tmp___0 ;
  {
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  rv = 0;
  spin_lock_irq(& acm->read_lock);
  acm->susp_count = acm->susp_count - 1U;
  cnt = (int )acm->susp_count;
  spin_unlock_irq(& acm->read_lock);
  if (cnt != 0) {
    return (0);
  } else {
  }
  tmp___0 = constant_test_bit(31L, (unsigned long const volatile *)(& acm->port.flags));
  if (tmp___0 != 0) {
    rv = ldv_usb_submit_urb_37(acm->ctrlurb, 16U);
    spin_lock_irq(& acm->write_lock);
    if ((unsigned long )acm->delayed_wb != (unsigned long )((struct acm_wb *)0)) {
      wb = acm->delayed_wb;
      acm->delayed_wb = (struct acm_wb *)0;
      spin_unlock_irq(& acm->write_lock);
      acm_start_wb(acm, wb);
    } else {
      spin_unlock_irq(& acm->write_lock);
    }
    if (rv < 0) {
      goto err_out;
    } else {
    }
    rv = acm_submit_read_urbs(acm, 16U);
  } else {
  }
  err_out: ;
  return (rv);
}
}
static int acm_reset_resume(struct usb_interface *intf )
{
  struct acm *acm ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_usb_get_intfdata_3(intf);
  acm = (struct acm *)tmp;
  tmp___0 = constant_test_bit(31L, (unsigned long const volatile *)(& acm->port.flags));
  if (tmp___0 != 0) {
    tty_port_tty_hangup(& acm->port, 0);
  } else {
  }
  tmp___1 = acm_resume(intf);
  return (tmp___1);
}
}
static struct usb_device_id const acm_ids[98U] =
  { {3U, 2160U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3725U, 3U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3725U, 13097U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1154U, 515U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1947U, 15U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2766U, 5634U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 2766U, 5640U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 2766U, 5649U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 8888U, 28672U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2051U, 12437U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1394U, 4897U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1394U, 4900U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1394U, 4904U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 8888U, 25637U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11665U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11666U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11667U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11669U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11670U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11671U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11673U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8888U, 11674U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1394U, 4905U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1394U, 4928U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1529U, 16386U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 7099U, 3U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 5494U, 945U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {899U, 1057U, 1069U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1240U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1225U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1049U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1101U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1141U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1288U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1048U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1061U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1158U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1247U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 14U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1093U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1071U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1166U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1056U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1254U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1202U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 308U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1134U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 47U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 136U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 252U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 66U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 176U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 171U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1153U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 7U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 113U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1264U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 112U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 233U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 153U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 296U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 143U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 160U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 123U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 148U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 58U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 233U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 264U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 501U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 739U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 376U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 270U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 729U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 464U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 547U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 629U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 620U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 340U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 1230U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 468U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 770U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 821U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1057U, 973U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {899U, 1255U, 26193U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, 0UL},
        {3U, 1003U, 48U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1684U, 65280U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL},
        {3U, 1240U, 11U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 1240U, 130U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      32UL},
        {3U, 1240U, 131U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      32UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 0U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 1U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 2U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 3U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 4U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 5U, (unsigned char)0,
      0UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 6U, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct usb_driver acm_driver =
     {"cdc_acm", & acm_probe, & acm_disconnect, 0, & acm_suspend, & acm_resume, & acm_reset_resume,
    0, 0, (struct usb_device_id const *)(& acm_ids), {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                        {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                   0, 0, 0, 0, 0,
                                                                   0, 0, 0, 0, 0},
                                                                  0}, (unsigned char)0,
    1U, 1U, (unsigned char)0};
static struct tty_operations const acm_ops =
     {0, & acm_tty_install, 0, & acm_tty_open, & acm_tty_close, 0, & acm_tty_cleanup,
    & acm_tty_write, 0, 0, & acm_tty_write_room, & acm_tty_chars_in_buffer, & acm_tty_ioctl,
    0, & acm_tty_set_termios, & acm_tty_throttle, & acm_tty_unthrottle, 0, 0, & acm_tty_hangup,
    & acm_tty_break_ctl, 0, 0, 0, 0, & acm_tty_tiocmget, & acm_tty_tiocmset, 0, 0,
    0, 0, 0, 0, 0};
static int acm_init(void)
{
  int retval ;
  {
  acm_tty_driver = alloc_tty_driver(32U);
  if ((unsigned long )acm_tty_driver == (unsigned long )((struct tty_driver *)0)) {
    return (-12);
  } else {
  }
  acm_tty_driver->driver_name = "acm";
  acm_tty_driver->name = "ttyACM";
  acm_tty_driver->major = 166;
  acm_tty_driver->minor_start = 0;
  acm_tty_driver->type = 3;
  acm_tty_driver->subtype = 1;
  acm_tty_driver->flags = 12UL;
  acm_tty_driver->init_termios = tty_std_termios;
  acm_tty_driver->init_termios.c_cflag = 3261U;
  tty_set_operations(acm_tty_driver, & acm_ops);
  retval = tty_register_driver(acm_tty_driver);
  if (retval != 0) {
    put_tty_driver(acm_tty_driver);
    return (retval);
  } else {
  }
  retval = ldv_usb_register_driver_39(& acm_driver, & __this_module, "cdc_acm");
  if (retval != 0) {
    tty_unregister_driver(acm_tty_driver);
    put_tty_driver(acm_tty_driver);
    return (retval);
  } else {
  }
  printk("\016cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters\n");
  return (0);
}
}
static void acm_exit(void)
{
  {
  ldv_usb_deregister_40(& acm_driver);
  tty_unregister_driver(acm_tty_driver);
  put_tty_driver(acm_tty_driver);
  return;
}
}
int ldv_retval_2 ;
int ldv_retval_0 ;
int ldv_retval_5 ;
int ldv_retval_4 ;
int ldv_retval_6 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void ldv_usb_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1520UL);
  acm_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_tty_port_operations_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1056UL);
  acm_port_ops_group1 = (struct tty_port *)tmp;
  return;
}
}
void ldv_initialize_tty_operations_1(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(360UL);
  acm_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(1736UL);
  acm_ops_group1 = (struct tty_struct *)tmp___0;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  char *ldvarg4 ;
  void *tmp___2 ;
  struct device *ldvarg3 ;
  void *tmp___3 ;
  struct device_attribute *ldvarg5 ;
  void *tmp___4 ;
  struct ktermios *ldvarg11 ;
  void *tmp___5 ;
  unsigned int ldvarg7 ;
  unsigned int tmp___6 ;
  int ldvarg12 ;
  int tmp___7 ;
  unsigned int ldvarg6 ;
  unsigned int tmp___8 ;
  struct tty_driver *ldvarg8 ;
  void *tmp___9 ;
  unsigned char *ldvarg14 ;
  void *tmp___10 ;
  int ldvarg13 ;
  int tmp___11 ;
  unsigned int ldvarg10 ;
  unsigned int tmp___12 ;
  unsigned long ldvarg9 ;
  unsigned long tmp___13 ;
  struct tty_struct *ldvarg15 ;
  void *tmp___14 ;
  struct usb_device_id *ldvarg17 ;
  void *tmp___15 ;
  pm_message_t ldvarg16 ;
  struct device *ldvarg18 ;
  void *tmp___16 ;
  struct device_attribute *ldvarg20 ;
  void *tmp___17 ;
  char *ldvarg19 ;
  void *tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_zalloc(1376UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg4 = (char *)tmp___2;
  tmp___3 = ldv_zalloc(1376UL);
  ldvarg3 = (struct device *)tmp___3;
  tmp___4 = ldv_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp___4;
  tmp___5 = ldv_zalloc(44UL);
  ldvarg11 = (struct ktermios *)tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg7 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg12 = tmp___7;
  tmp___8 = __VERIFIER_nondet_uint();
  ldvarg6 = tmp___8;
  tmp___9 = ldv_zalloc(184UL);
  ldvarg8 = (struct tty_driver *)tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg14 = (unsigned char *)tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg13 = tmp___11;
  tmp___12 = __VERIFIER_nondet_uint();
  ldvarg10 = tmp___12;
  tmp___13 = __VERIFIER_nondet_ulong();
  ldvarg9 = tmp___13;
  tmp___14 = ldv_zalloc(1736UL);
  ldvarg15 = (struct tty_struct *)tmp___14;
  tmp___15 = ldv_zalloc(32UL);
  ldvarg17 = (struct usb_device_id *)tmp___15;
  tmp___16 = ldv_zalloc(1376UL);
  ldvarg18 = (struct device *)tmp___16;
  tmp___17 = ldv_zalloc(48UL);
  ldvarg20 = (struct device_attribute *)tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg19 = (char *)tmp___18;
  ldv_initialize();
  memset((void *)(& ldvarg16), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_27636:
  tmp___19 = __VERIFIER_nondet_int();
  switch (tmp___19) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      show_caps(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_27586;
    default:
    ldv_stop();
    }
    ldv_27586: ;
  } else {
  }
  goto ldv_27588;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      show_country_rel_date(ldvarg3, ldvarg5, ldvarg4);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_27591;
    default:
    ldv_stop();
    }
    ldv_27591: ;
  } else {
  }
  goto ldv_27588;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_1 == 2) {
      acm_tty_write(acm_ops_group1, (unsigned char const *)ldvarg14, ldvarg13);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_cleanup(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_cleanup(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 2: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_throttle(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_throttle(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 3: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_hangup(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_hangup(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 4: ;
    if (ldv_state_variable_1 == 2) {
      acm_tty_close(acm_ops_group1, acm_ops_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_27595;
    case 5: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = acm_tty_open(acm_ops_group1, acm_ops_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_27595;
    case 6: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_unthrottle(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_unthrottle(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 7: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_write_room(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_write_room(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 8: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_break_ctl(acm_ops_group1, ldvarg12);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_break_ctl(acm_ops_group1, ldvarg12);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 9: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_set_termios(acm_ops_group1, ldvarg11);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_set_termios(acm_ops_group1, ldvarg11);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 10: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_ioctl(acm_ops_group1, ldvarg10, ldvarg9);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_ioctl(acm_ops_group1, ldvarg10, ldvarg9);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 11: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_chars_in_buffer(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_chars_in_buffer(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 12: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_tiocmget(acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_tiocmget(acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 13: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_install(ldvarg8, acm_ops_group1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_install(ldvarg8, acm_ops_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    case 14: ;
    if (ldv_state_variable_1 == 1) {
      acm_tty_tiocmset(acm_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      acm_tty_tiocmset(acm_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_27595;
    default:
    ldv_stop();
    }
    ldv_27595: ;
  } else {
  }
  goto ldv_27588;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___23 = __VERIFIER_nondet_int();
    switch (tmp___23) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      acm_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_27614;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = acm_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_3 = 1;
        ldv_tty_port_operations_3();
        ldv_state_variable_1 = 1;
        ldv_initialize_tty_operations_1();
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_27614;
    default:
    ldv_stop();
    }
    ldv_27614: ;
  } else {
  }
  goto ldv_27588;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = acm_port_activate(acm_port_ops_group1, ldvarg15);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_27619;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      acm_port_shutdown(acm_port_ops_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_27619;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      acm_port_destruct(acm_port_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_27619;
    default:
    ldv_stop();
    }
    ldv_27619: ;
  } else {
  }
  goto ldv_27588;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    tmp___25 = __VERIFIER_nondet_int();
    switch (tmp___25) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_6 = acm_probe(acm_driver_group1, (struct usb_device_id const *)ldvarg17);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_27625;
    case 1: ;
    if (ldv_state_variable_2 == 3) {
      ldv_retval_5 = acm_reset_resume(acm_driver_group1);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_2 = 2;
      } else {
      }
    } else {
    }
    goto ldv_27625;
    case 2: ;
    if (ldv_state_variable_2 == 3 && usb_counter == 0) {
      acm_disconnect(acm_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2 && usb_counter == 0) {
      acm_disconnect(acm_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_27625;
    case 3: ;
    if (ldv_state_variable_2 == 2) {
      ldv_retval_4 = acm_suspend(acm_driver_group1, ldvarg16);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_2 = 3;
      } else {
      }
    } else {
    }
    goto ldv_27625;
    case 4: ;
    if (ldv_state_variable_2 == 3) {
      ldv_retval_3 = acm_resume(acm_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_2 = 2;
      } else {
      }
    } else {
    }
    goto ldv_27625;
    default:
    ldv_stop();
    }
    ldv_27625: ;
  } else {
  }
  goto ldv_27588;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      show_country_codes(ldvarg18, ldvarg20, ldvarg19);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_27633;
    default:
    ldv_stop();
    }
    ldv_27633: ;
  } else {
  }
  goto ldv_27588;
  default:
  ldv_stop();
  }
  ldv_27588: ;
  goto ldv_27636;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct usb_device *tmp ;
  {
  tmp = ldv_interface_to_usbdev();
  return (tmp);
}
}
int ldv_usb_submit_urb_2(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
__inline static void *ldv_usb_get_intfdata_3(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = ldv_usb_get_intfdata();
  return (tmp);
}
}
int ldv_usb_submit_urb_6(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_7(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_autopm_get_interface_8(struct usb_interface *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_get_interface(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_9(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
void ldv_usb_autopm_put_interface_10(struct usb_interface *ldv_func_arg1 )
{
  {
  ldv_put_interface();
  return;
}
}
void ldv_usb_autopm_put_interface_11(struct usb_interface *ldv_func_arg1 )
{
  {
  ldv_put_interface();
  return;
}
}
void ldv_usb_put_intf_12(struct usb_interface *intf )
{
  {
  ldv_usb_put_intf();
  return;
}
}
int ldv_usb_autopm_get_interface_13(struct usb_interface *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_get_interface(ldv_func_arg1);
  return (tmp);
}
}
void ldv_usb_autopm_put_interface_14(struct usb_interface *ldv_func_arg1 )
{
  {
  ldv_put_interface();
  return;
}
}
struct urb *ldv_usb_alloc_urb_15(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_16(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
__inline static void ldv_usb_fill_int_urb_17(struct urb *urb , struct usb_device *dev ,
                                             unsigned int pipe , void *transfer_buffer ,
                                             int buffer_length , void (*complete_fn)(struct urb * ) ,
                                             void *context , int interval )
{
  {
  ldv_fill_int_urb(urb, complete_fn);
  return;
}
}
__inline static void ldv_usb_fill_bulk_urb_18(struct urb *urb , struct usb_device *dev ,
                                              unsigned int pipe , void *transfer_buffer ,
                                              int buffer_length , void (*complete_fn)(struct urb * ) ,
                                              void *context )
{
  {
  ldv_fill_bulk_urb(urb, complete_fn);
  return;
}
}
struct urb *ldv_usb_alloc_urb_19(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
__inline static void ldv_usb_set_intfdata_22(struct usb_interface *intf , void *data )
{
  {
  ldv_usb_set_intfdata(data);
  return;
}
}
void ldv_usb_free_urb_26(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_27(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_28(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_32(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_33(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_34(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_register_driver_39(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  usb_counter = 0;
  ldv_usb_driver_2();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_40(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_2 = 0;
  return;
}
}
__inline static void ldv_error(void);
__inline static void ldv_stop___0(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_stop___0(void)
{
  {
  LDV_STOP:
  goto LDV_STOP;
}
}
int INTERF_STATE = 0;
int SERIAL_STATE = 0;
void *usb_intfdata = 0;
struct urb *usb_urb = 0;
struct usb_device *usb_dev = 0;
int dev_counter = 0;
int completeFnIntCounter = 0;
int completeFnBulkCounter = 0;
void (*completeFnInt)(struct urb * ) ;
void (*completeFnBulk)(struct urb * ) ;
void *ldv_usb_get_intfdata(void)
{
  {
  return (usb_intfdata);
}
}
void ldv_usb_set_intfdata(void *data )
{
  {
  usb_intfdata = data;
  return;
}
}
void ldv_usb_put_intf(void)
{
  {
  usb_intfdata = 0;
  return;
}
}
struct urb *ldv_alloc_urb(void)
{
  struct urb *value ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_malloc(sizeof(struct urb));
  value = tmp;
  tmp___0 = ldv_undef_int();
  if (tmp___0) {
    if ((unsigned long )value != (unsigned long )((struct urb *)0)) {
      usb_urb = value;
    } else {
    }
  } else {
  }
  return (usb_urb);
}
}
void ldv_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb && (unsigned long )usb_urb != (unsigned long )((struct urb *)0)) {
    usb_urb = 0;
  } else {
  }
  return;
}
}
void ldv_fill_int_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnInt = complete_fn;
    completeFnIntCounter = completeFnIntCounter + 1;
  } else {
  }
  return;
}
}
void ldv_fill_bulk_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnBulk = complete_fn;
    completeFnBulkCounter = completeFnBulkCounter + 1;
  } else {
  }
  return;
}
}
int ldv_submit_urb(struct urb *urb )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___0();
  }
  if (res == 0) {
    if ((unsigned long )usb_urb == (unsigned long )urb) {
      if (completeFnIntCounter != 0) {
        (*completeFnInt)(usb_urb);
        completeFnIntCounter = 0;
      } else {
      }
      if (completeFnBulkCounter != 0) {
        (*completeFnBulk)(usb_urb);
        completeFnBulkCounter = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  return (res);
}
}
struct usb_device *ldv_interface_to_usbdev(void)
{
  void *result ;
  void *tmp ;
  {
  tmp = ldv_malloc(sizeof(struct usb_device));
  result = tmp;
  if ((unsigned long )result != (unsigned long )((void *)0)) {
  } else {
    ldv_stop___0();
  }
  return (result);
}
}
struct usb_device *ldv_get_dev(struct usb_device *data )
{
  int tmp ;
  {
  if ((unsigned long )usb_dev == (unsigned long )((struct usb_device *)0)) {
    tmp = ldv_undef_int();
    if (tmp) {
      dev_counter = dev_counter + 1;
      usb_dev = data;
    } else {
    }
  } else
  if ((unsigned long )usb_dev == (unsigned long )data) {
    dev_counter = dev_counter + 1;
  } else {
  }
  return (usb_dev);
}
}
void ldv_put_dev(struct usb_device *data )
{
  {
  if ((unsigned long )usb_dev == (unsigned long )data && (unsigned long )data != (unsigned long )((struct usb_device *)0)) {
    dev_counter = dev_counter - 1;
    if (dev_counter == 0) {
      usb_dev = 0;
    } else {
    }
  } else {
  }
  return;
}
}
int ldv_get_interface(struct usb_interface *intf )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___0();
  }
  if (res == 0) {
    INTERF_STATE = INTERF_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_put_interface(void)
{
  {
  if (INTERF_STATE > 0) {
  } else {
    ldv_error();
  }
  INTERF_STATE = INTERF_STATE - 1;
  return;
}
}
int ldv_serial_register(void)
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___0();
  }
  if (res == 0) {
    SERIAL_STATE = SERIAL_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_serial_deregister(void)
{
  {
  if (SERIAL_STATE > 0) {
  } else {
    ldv_error();
  }
  SERIAL_STATE = SERIAL_STATE - 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if ((unsigned long )usb_urb == (unsigned long )((struct urb *)0)) {
  } else {
    ldv_error();
  }
  if ((unsigned long )usb_dev == (unsigned long )((struct usb_device *)0)) {
  } else {
    ldv_error();
  }
  if (dev_counter == 0) {
  } else {
    ldv_error();
  }
  if (INTERF_STATE == 0) {
  } else {
    ldv_error();
  }
  if (SERIAL_STATE == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return ldv_malloc(sizeof(struct tty_driver));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
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
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void ldv_initialize() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
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
void put_tty_driver(struct tty_driver *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_kref_put(struct tty_struct *arg0) {
  return;
}
void tty_port_close(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return;
}
void tty_port_hangup(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_port_open(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return __VERIFIER_nondet_int();
}
void tty_port_put(struct tty_port *arg0) {
  return;
}
struct device *tty_port_register_device(struct tty_port *arg0, struct tty_driver *arg1, unsigned int arg2, struct device *arg3) {
  return ldv_malloc(sizeof(struct device));
}
struct tty_struct *tty_port_tty_get(struct tty_port *arg0) {
  return ldv_malloc(sizeof(struct tty_struct));
}
void tty_port_tty_hangup(struct tty_port *arg0, bool arg1) {
  return;
}
void tty_port_tty_wakeup(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_standard_install(struct tty_driver *arg0, struct tty_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
speed_t tty_termios_baud_rate(struct ktermios *arg0) {
  return __VERIFIER_nondet_uint();
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_vhangup(struct tty_struct *arg0) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface_async(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_autopm_put_interface_async(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_driver_claim_interface(struct usb_driver *arg0, struct usb_interface *arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
void usb_driver_release_interface(struct usb_driver *arg0, struct usb_interface *arg1) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
struct usb_interface *usb_get_intf(struct usb_interface *arg0) {
  return ldv_malloc(sizeof(struct usb_interface));
}
struct usb_interface *usb_ifnum_to_if(const struct usb_device *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct usb_interface));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
