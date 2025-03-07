struct device;
typedef signed char __s8;
typedef unsigned char __u8;
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
typedef __kernel_long_t __kernel_suseconds_t;
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
struct mutex;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
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
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_18 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct____missing_field_name_20 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct file_operations;
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
union __anonunion____missing_field_name_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_25 __annonCompField10 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct____missing_field_name_30 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_31 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct____missing_field_name_30 __annonCompField14 ;
   struct __anonstruct____missing_field_name_31 __annonCompField15 ;
};
union __anonunion____missing_field_name_32 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_29 __annonCompField16 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_32 __annonCompField17 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
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
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned char fpu_counter ;
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
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_101 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_100 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_101 __annonCompField20 ;
};
struct spinlock {
   union __anonunion____missing_field_name_100 __annonCompField21 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_102 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_102 rwlock_t;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
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
   unsigned int memalloc_noio : 1 ;
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
struct __anonstruct_nodemask_t_104 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_104 nodemask_t;
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
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
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
struct notifier_block;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
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
};
union __anonunion_u_134 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_135 {
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
   union __anonunion_u_134 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_135 __annonCompField33 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
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
struct user_namespace;
struct __anonstruct_kuid_t_136 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_136 kuid_t;
struct __anonstruct_kgid_t_137 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_137 kgid_t;
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
   bool ignore_lockdep : 1 ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
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
struct path;
struct inode;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct dev_pin_info *pins ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_139 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField34 ;
};
struct lockref {
   union __anonunion____missing_field_name_138 __annonCompField35 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_141 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_140 {
   struct __anonstruct____missing_field_name_141 __annonCompField36 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_142 {
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
   union __anonunion_d_u_142 d_u ;
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
struct __anonstruct_kprojid_t_144 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_144 kprojid_t;
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
union __anonunion____missing_field_name_145 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_145 __annonCompField38 ;
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
union __anonunion_arg_147 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_146 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_147 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_146 read_descriptor_t;
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
union __anonunion____missing_field_name_148 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_149 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_150 {
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
   union __anonunion____missing_field_name_148 __annonCompField39 ;
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
   union __anonunion____missing_field_name_149 __annonCompField40 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_150 __annonCompField41 ;
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
union __anonunion_f_u_151 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_151 f_u ;
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
struct __anonstruct_afs_153 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_152 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_153 afs ;
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
   union __anonunion_fl_u_152 fl_u ;
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
   struct callback_head rcu ;
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
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct____missing_field_name_156 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_157 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_155 {
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_158 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_160 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_164 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_163 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_164 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_162 {
   union __anonunion____missing_field_name_163 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_161 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_162 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_159 {
   union __anonunion____missing_field_name_160 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_166 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_165 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_166 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_167 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct __anonstruct____missing_field_name_159 __annonCompField52 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   union __anonunion____missing_field_name_167 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_169 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_168 {
   struct __anonstruct_linear_169 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
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
   union __anonunion_shared_168 shared ;
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
   atomic_long_t nr_ptes ;
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
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_170 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_170 sigset_t;
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
struct __anonstruct__kill_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_173 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_174 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_176 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_177 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_178 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_171 {
   int _pad[28U] ;
   struct __anonstruct__kill_172 _kill ;
   struct __anonstruct__timer_173 _timer ;
   struct __anonstruct__rt_174 _rt ;
   struct __anonstruct__sigchld_175 _sigchld ;
   struct __anonstruct__sigfault_176 _sigfault ;
   struct __anonstruct__sigpoll_177 _sigpoll ;
   struct __anonstruct__sigsys_178 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_171 _sifields ;
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
union __anonunion____missing_field_name_183 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_184 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_186 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_185 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_186 __annonCompField60 ;
};
union __anonunion_type_data_187 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_189 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_188 {
   union __anonunion_payload_189 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_183 __annonCompField58 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   union __anonunion_type_data_187 type_data ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
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
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
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
   u32 inv_weight ;
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
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
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
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
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
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
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
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
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
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
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
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
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
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
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
union __anonunion____missing_field_name_195 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_195 __annonCompField64 ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
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
struct __anonstruct____missing_field_name_197 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_198 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_196 {
   struct __anonstruct____missing_field_name_197 __annonCompField65 ;
   struct __anonstruct____missing_field_name_198 __annonCompField66 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_196 __annonCompField67 ;
};
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned int openmin : 1 ;
   unsigned int openmax : 1 ;
   unsigned int integer : 1 ;
   unsigned int empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
   struct timespec audio_tstamp ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_202 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_203 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_204 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_201 {
   struct __anonstruct_integer_202 integer ;
   struct __anonstruct_integer64_203 integer64 ;
   struct __anonstruct_enumerated_204 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_205 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_201 value ;
   union __anonunion_dimen_205 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_207 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_208 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_209 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_210 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_206 {
   union __anonunion_integer_207 integer ;
   union __anonunion_integer64_208 integer64 ;
   union __anonunion_enumerated_209 enumerated ;
   union __anonunion_bytes_210 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned int indirect : 1 ;
   union __anonunion_value_206 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
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
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_214 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_214 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned int disable : 1 ;
   unsigned int direct : 1 ;
   unsigned int block : 1 ;
   unsigned int nonblock : 1 ;
   unsigned int partialfrag : 1 ;
   unsigned int nosilence : 1 ;
   unsigned int buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned int params : 1 ;
   unsigned int prepare : 1 ;
   unsigned int trigger : 1 ;
   unsigned int sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_substream;
struct snd_pcm_oss_substream {
   unsigned int oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_info_entry;
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*wall_clock)(struct snd_pcm_substream * , struct timespec * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   u64 hw_ptr_wrap ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned int no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm;
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   size_t dma_max ;
   struct snd_pcm_ops const *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned int timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   unsigned int hw_opened : 1 ;
};
struct snd_kcontrol;
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
   struct snd_kcontrol *chmap_kctl ;
};
struct snd_card;
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   struct device *dev ;
   bool internal ;
   struct snd_pcm_oss oss ;
};
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_216 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_216 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int prefer_pcm_subdevice ;
   int prefer_rawmidi_subdevice ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct snd_info_buffer {
   char *buffer ;
   unsigned int curr ;
   unsigned int size ;
   unsigned int len ;
   int stop ;
   int error ;
};
struct snd_info_entry_text {
   void (*read)(struct snd_info_entry * , struct snd_info_buffer * ) ;
   void (*write)(struct snd_info_entry * , struct snd_info_buffer * ) ;
};
struct snd_info_entry_ops {
   int (*open)(struct snd_info_entry * , unsigned short , void ** ) ;
   int (*release)(struct snd_info_entry * , unsigned short , void * ) ;
   ssize_t (*read)(struct snd_info_entry * , void * , struct file * , char * , size_t ,
                   loff_t ) ;
   ssize_t (*write)(struct snd_info_entry * , void * , struct file * , char const * ,
                    size_t , loff_t ) ;
   loff_t (*llseek)(struct snd_info_entry * , void * , struct file * , loff_t , int ) ;
   unsigned int (*poll)(struct snd_info_entry * , void * , struct file * , poll_table * ) ;
   int (*ioctl)(struct snd_info_entry * , void * , struct file * , unsigned int ,
                unsigned long ) ;
   int (*mmap)(struct snd_info_entry * , void * , struct inode * , struct file * ,
               struct vm_area_struct * ) ;
};
union __anonunion_c_217 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_217 c ;
   struct snd_info_entry *parent ;
   struct snd_card *card ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_info_entry * ) ;
   struct proc_dir_entry *p ;
   struct mutex access ;
   struct list_head children ;
   struct list_head list ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_221 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_221 __annonCompField68 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_222 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_222 __annonCompField69 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
union __anonunion_m_223 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_223 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_224 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_224 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_225 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_225 __annonCompField70 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_226 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_226 __annonCompField71 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_227 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_227 __annonCompField72 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_228 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_228 __annonCompField73 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_236 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_236 fmt ;
};
union __anonunion_parm_237 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_237 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_240 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_240 __annonCompField78 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_246 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_247 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_248 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_245 {
   struct __anonstruct_v4l_246 v4l ;
   struct __anonstruct_fb_247 fb ;
   struct __anonstruct_alsa_248 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_245 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct i2c_adapter;
struct i2c_client;
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
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
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
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
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct list_head list_node ;
   void *priv ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , int ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , int ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
} ;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   int (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   int (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct v4l2_fh;
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned int io_flags ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_type ;
   gfp_t gfp_flags ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   atomic_t queued_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned int streaming : 1 ;
   unsigned int retry_start_streaming : 1 ;
   struct vb2_fileio_data *fileio ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_251 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_252 {
   char const *name ;
};
struct __anonstruct_i2c_253 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_254 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_250 {
   struct __anonstruct_of_251 of ;
   struct __anonstruct_device_name_252 device_name ;
   struct __anonstruct_i2c_253 i2c ;
   struct __anonstruct_custom_254 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_250 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_255 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_255 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_256 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_257 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_258 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_259 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_258 cur ;
   union __anonunion____missing_field_name_259 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
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
union __anonunion_u_263 {
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
   union __anonunion_u_263 u ;
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
enum em28xx_chip_id {
    CHIP_ID_EM2800 = 7,
    CHIP_ID_EM2710 = 17,
    CHIP_ID_EM2820 = 18,
    CHIP_ID_EM2840 = 20,
    CHIP_ID_EM2750 = 33,
    CHIP_ID_EM2860 = 34,
    CHIP_ID_EM2870 = 35,
    CHIP_ID_EM2883 = 36,
    CHIP_ID_EM2765 = 54,
    CHIP_ID_EM2874 = 65,
    CHIP_ID_EM2884 = 68,
    CHIP_ID_EM28174 = 113,
    CHIP_ID_EM28178 = 114
} ;
enum em28xx_mode {
    EM28XX_SUSPEND = 0,
    EM28XX_ANALOG_MODE = 1,
    EM28XX_DIGITAL_MODE = 2
} ;
struct em28xx;
struct em28xx_usb_bufs {
   int max_pkt_size ;
   int num_packets ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
};
struct em28xx_buffer;
struct em28xx_usb_ctl {
   struct em28xx_usb_bufs analog_bufs ;
   struct em28xx_usb_bufs digital_bufs ;
   struct em28xx_buffer *vid_buf ;
   struct em28xx_buffer *vbi_buf ;
   int (*urb_data_copy)(struct em28xx * , struct urb * ) ;
};
struct em28xx_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
   int reg ;
};
struct em28xx_buffer {
   struct vb2_buffer vb ;
   struct list_head list ;
   void *mem ;
   unsigned int length ;
   int top_field ;
   unsigned int pos ;
   char *vb_buf ;
};
struct em28xx_dmaqueue {
   struct list_head active ;
   wait_queue_head_t wq ;
};
enum enum28xx_itype {
    EM28XX_VMUX_COMPOSITE1 = 1,
    EM28XX_VMUX_COMPOSITE2 = 2,
    EM28XX_VMUX_COMPOSITE3 = 3,
    EM28XX_VMUX_COMPOSITE4 = 4,
    EM28XX_VMUX_SVIDEO = 5,
    EM28XX_VMUX_TELEVISION = 6,
    EM28XX_VMUX_CABLE = 7,
    EM28XX_VMUX_DVB = 8,
    EM28XX_VMUX_DEBUG = 9,
    EM28XX_RADIO = 10
} ;
enum em28xx_ac97_mode {
    EM28XX_NO_AC97 = 0,
    EM28XX_AC97_EM202 = 1,
    EM28XX_AC97_SIGMATEL = 2,
    EM28XX_AC97_OTHER = 3
} ;
struct em28xx_audio_mode {
   enum em28xx_ac97_mode ac97 ;
   u16 ac97_feat ;
   u32 ac97_vendor_id ;
   unsigned int has_audio : 1 ;
   u8 i2s_samplerates ;
};
enum em28xx_amux {
    EM28XX_AMUX_VIDEO = 0,
    EM28XX_AMUX_LINE_IN = 1,
    EM28XX_AMUX_VIDEO2 = 2,
    EM28XX_AMUX_PHONE = 3,
    EM28XX_AMUX_MIC = 4,
    EM28XX_AMUX_CD = 5,
    EM28XX_AMUX_AUX = 6,
    EM28XX_AMUX_PCM_OUT = 7
} ;
enum em28xx_aout {
    EM28XX_AOUT_MASTER = 1,
    EM28XX_AOUT_LINE = 2,
    EM28XX_AOUT_MONO = 4,
    EM28XX_AOUT_LFE = 8,
    EM28XX_AOUT_SURR = 16,
    EM28XX_AOUT_PCM_IN = 128,
    EM28XX_AOUT_PCM_MIC_PCM = 0,
    EM28XX_AOUT_PCM_CD = 256,
    EM28XX_AOUT_PCM_VIDEO = 512,
    EM28XX_AOUT_PCM_AUX = 768,
    EM28XX_AOUT_PCM_LINE = 1024,
    EM28XX_AOUT_PCM_STEREO = 1280,
    EM28XX_AOUT_PCM_MONO = 1536,
    EM28XX_AOUT_PCM_PHONE = 1792
} ;
struct em28xx_reg_seq {
   int reg ;
   unsigned char val ;
   unsigned char mask ;
   int sleep ;
};
struct em28xx_input {
   enum enum28xx_itype type ;
   unsigned int vmux ;
   enum em28xx_amux amux ;
   enum em28xx_aout aout ;
   struct em28xx_reg_seq *gpio ;
};
enum em28xx_decoder {
    EM28XX_NODECODER = 0,
    EM28XX_TVP5150 = 1,
    EM28XX_SAA711X = 2
} ;
enum em28xx_sensor {
    EM28XX_NOSENSOR = 0,
    EM28XX_MT9V011 = 1,
    EM28XX_MT9M001 = 2,
    EM28XX_MT9M111 = 3,
    EM28XX_OV2640 = 4
} ;
enum em28xx_adecoder {
    EM28XX_NOADECODER = 0,
    EM28XX_TVAUDIO = 1
} ;
enum em28xx_led_role {
    EM28XX_LED_ANALOG_CAPTURING = 0,
    EM28XX_LED_ILLUMINATION = 1,
    EM28XX_NUM_LED_ROLES = 2
} ;
struct em28xx_led {
   enum em28xx_led_role role ;
   u8 gpio_reg ;
   u8 gpio_mask ;
   bool inverted ;
};
enum em28xx_button_role {
    EM28XX_BUTTON_SNAPSHOT = 0,
    EM28XX_BUTTON_ILLUMINATION = 1,
    EM28XX_NUM_BUTTON_ROLES = 2
} ;
struct em28xx_button {
   enum em28xx_button_role role ;
   u8 reg_r ;
   u8 reg_clearing ;
   u8 mask ;
   bool inverted ;
};
struct em28xx_board {
   char *name ;
   int vchannels ;
   int tuner_type ;
   int tuner_addr ;
   unsigned int def_i2c_bus ;
   unsigned int tda9887_conf ;
   struct em28xx_reg_seq *dvb_gpio ;
   struct em28xx_reg_seq *suspend_gpio ;
   struct em28xx_reg_seq *tuner_gpio ;
   struct em28xx_reg_seq *mute_gpio ;
   unsigned int is_em2800 : 1 ;
   unsigned int has_msp34xx : 1 ;
   unsigned int mts_firmware : 1 ;
   unsigned int max_range_640_480 : 1 ;
   unsigned int has_dvb : 1 ;
   unsigned int is_webcam : 1 ;
   unsigned int valid : 1 ;
   unsigned int has_ir_i2c : 1 ;
   unsigned char xclk ;
   unsigned char i2c_speed ;
   unsigned char radio_addr ;
   unsigned short tvaudio_addr ;
   enum em28xx_decoder decoder ;
   enum em28xx_adecoder adecoder ;
   struct em28xx_input input[4U] ;
   struct em28xx_input radio ;
   char *ir_codes ;
   struct em28xx_led *leds ;
   struct em28xx_button *buttons ;
};
struct em28xx_audio {
   char name[50U] ;
   unsigned int num_urb ;
   char **transfer_buffer ;
   struct urb **urb ;
   struct usb_device *udev ;
   unsigned int capture_transfer_done ;
   struct snd_pcm_substream *capture_pcm_substream ;
   unsigned int hwptr_done_capture ;
   struct snd_card *sndcard ;
   size_t period ;
   int users ;
   spinlock_t slock ;
};
enum em28xx_i2c_algo_type {
    EM28XX_I2C_ALGO_EM28XX = 0,
    EM28XX_I2C_ALGO_EM2800 = 1,
    EM28XX_I2C_ALGO_EM25XX_BUS_B = 2
} ;
struct em28xx_i2c_bus {
   struct em28xx *dev ;
   unsigned int bus ;
   enum em28xx_i2c_algo_type algo_type ;
};
struct v4l2_clk;
struct em28xx_IR;
struct em28xx_dvb;
struct em28xx {
   char name[30U] ;
   int model ;
   int devno ;
   enum em28xx_chip_id chip_id ;
   unsigned int is_em25xx : 1 ;
   unsigned char disconnected : 1 ;
   unsigned int has_video : 1 ;
   unsigned int has_audio_class : 1 ;
   unsigned int has_alsa_audio : 1 ;
   unsigned int is_audio_only : 1 ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct v4l2_clk *clk ;
   struct em28xx_board board ;
   enum em28xx_sensor em28xx_sensor ;
   int sensor_xres ;
   int sensor_yres ;
   int sensor_xtal ;
   int progressive ;
   int vinmode ;
   int vinctl ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
   struct em28xx_fmt *format ;
   struct em28xx_IR *ir ;
   unsigned int wait_after_write ;
   struct list_head devlist ;
   u32 i2s_speed ;
   struct em28xx_audio_mode audio_mode ;
   int tuner_type ;
   int tuner_addr ;
   int tda9887_conf ;
   struct i2c_adapter i2c_adap[2U] ;
   struct i2c_client i2c_client[2U] ;
   struct em28xx_i2c_bus i2c_bus[2U] ;
   unsigned char eeprom_addrwidth_16bit : 1 ;
   unsigned int def_i2c_bus ;
   unsigned int cur_i2c_bus ;
   struct rt_mutex i2c_bus_lock ;
   int users ;
   int streaming_users ;
   struct video_device *vdev ;
   v4l2_std_id norm ;
   int ctl_freq ;
   unsigned int ctl_input ;
   unsigned int ctl_ainput ;
   unsigned int ctl_aoutput ;
   int mute ;
   int volume ;
   int width ;
   int height ;
   unsigned int hscale ;
   unsigned int vscale ;
   int interlaced ;
   unsigned int video_bytesread ;
   unsigned long hash ;
   unsigned long i2c_hash ;
   struct em28xx_audio adev ;
   int capture_type ;
   unsigned char top_field : 1 ;
   int vbi_read ;
   unsigned int vbi_width ;
   unsigned int vbi_height ;
   struct work_struct request_module_wk ;
   struct mutex lock ;
   struct mutex ctrl_urb_lock ;
   struct list_head inqueue ;
   struct list_head outqueue ;
   struct video_device *vbi_dev ;
   struct video_device *radio_dev ;
   struct vb2_queue vb_vidq ;
   struct vb2_queue vb_vbiq ;
   struct mutex vb_queue_lock ;
   struct mutex vb_vbi_queue_lock ;
   unsigned int resources ;
   u8 *eedata ;
   u16 eedata_len ;
   struct em28xx_dmaqueue vidq ;
   struct em28xx_dmaqueue vbiq ;
   struct em28xx_usb_ctl usb_ctl ;
   spinlock_t slock ;
   unsigned int field_count ;
   unsigned int vbi_field_count ;
   struct usb_device *udev ;
   u8 ifnum ;
   u8 analog_ep_isoc ;
   u8 analog_ep_bulk ;
   u8 dvb_ep_isoc ;
   u8 dvb_ep_bulk ;
   int alt ;
   int max_pkt_size ;
   int packet_multiplier ;
   int num_alt ;
   unsigned int *alt_max_pkt_size_isoc ;
   unsigned int analog_xfer_bulk : 1 ;
   int dvb_alt_isoc ;
   unsigned int dvb_max_pkt_size_isoc ;
   unsigned int dvb_xfer_bulk : 1 ;
   char urb_buf[80U] ;
   int (*em28xx_write_regs)(struct em28xx * , u16 , char * , int ) ;
   int (*em28xx_read_reg)(struct em28xx * , u16 ) ;
   int (*em28xx_read_reg_req_len)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_write_regs_req)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_read_reg_req)(struct em28xx * , u8 , u16 ) ;
   enum em28xx_mode mode ;
   struct delayed_work buttons_query_work ;
   u8 button_polling_addresses[5U] ;
   u8 button_polling_last_values[5U] ;
   u8 num_button_polling_addresses ;
   u16 button_polling_interval ;
   char snapshot_button_path[30U] ;
   struct input_dev *sbutton_input_dev ;
   struct em28xx_dvb *dvb ;
};
struct em28xx_ops {
   struct list_head next ;
   char *name ;
   int id ;
   int (*init)(struct em28xx * ) ;
   int (*fini)(struct em28xx * ) ;
};
struct em28xx_vol_itable {
   enum em28xx_amux mux ;
   u8 reg ;
};
struct em28xx_vol_otable {
   enum em28xx_aout mux ;
   u8 reg ;
};
struct ldv_thread;
enum hrtimer_restart;
struct em28xx_eeprom {
   u8 id[4U] ;
   __le16 vendor_ID ;
   __le16 product_ID ;
   __le16 chip_conf ;
   __le16 board_conf ;
   __le16 string1 ;
   __le16 string2 ;
   __le16 string3 ;
   u8 string_idx_table ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
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
enum hrtimer_restart;
struct usb_driver;
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
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
enum firmware_type {
    XC2028_AUTO = 0,
    XC2028_D2633 = 1,
    XC2028_D2620 = 2
} ;
struct xc2028_ctrl {
   char *fname ;
   int max_len ;
   int msleep ;
   unsigned int scode_table ;
   unsigned int mts : 1 ;
   unsigned int input1 : 1 ;
   unsigned int vhfbw7 : 1 ;
   unsigned int uhfbw8 : 1 ;
   unsigned int disable_power_mgmt : 1 ;
   unsigned int read_not_reliable : 1 ;
   unsigned int demod ;
   enum firmware_type type : 2 ;
};
struct em28xx_hash_table {
   unsigned long hash ;
   unsigned int model ;
   unsigned int tuner ;
};
struct ldv_struct_EMGentry_5 {
   int signal_pending ;
};
struct ldv_struct_usb_instance_1 {
   struct usb_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef __u16 __be16;
enum hrtimer_restart;
struct i2c_board_info;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_colorspace {
    V4L2_COLORSPACE_SMPTE170M = 1,
    V4L2_COLORSPACE_SMPTE240M = 2,
    V4L2_COLORSPACE_REC709 = 3,
    V4L2_COLORSPACE_BT878 = 4,
    V4L2_COLORSPACE_470_SYSTEM_M = 5,
    V4L2_COLORSPACE_470_SYSTEM_BG = 6,
    V4L2_COLORSPACE_JPEG = 7,
    V4L2_COLORSPACE_SRGB = 8
} ;
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned int streaming : 1 ;
   unsigned int reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct soc_camera_desc;
struct soc_camera_async_client;
struct soc_camera_sense;
struct soc_camera_format_xlate;
union __anonunion____missing_field_name_234 {
   struct videobuf_queue vb_vidq ;
   struct vb2_queue vb2_vidq ;
};
struct soc_camera_device {
   struct list_head list ;
   struct soc_camera_desc *sdesc ;
   struct device *pdev ;
   struct device *parent ;
   struct device *control ;
   s32 user_width ;
   s32 user_height ;
   u32 bytesperline ;
   u32 sizeimage ;
   enum v4l2_colorspace colorspace ;
   unsigned char iface ;
   unsigned char devnum ;
   struct soc_camera_sense *sense ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct soc_camera_format_xlate const *current_fmt ;
   struct soc_camera_format_xlate *user_formats ;
   int num_user_formats ;
   enum v4l2_field field ;
   void *host_priv ;
   int use_count ;
   struct file *streamer ;
   struct v4l2_clk *clk ;
   struct soc_camera_async_client *sasc ;
   union __anonunion____missing_field_name_234 __annonCompField82 ;
};
struct soc_camera_subdev_desc {
   unsigned long flags ;
   void *drv_priv ;
   bool unbalanced_power ;
   unsigned long clock_state ;
   int (*power)(struct device * , int ) ;
   int (*reset)(struct device * ) ;
   int (*set_bus_param)(struct soc_camera_subdev_desc * , unsigned long ) ;
   unsigned long (*query_bus_param)(struct soc_camera_subdev_desc * ) ;
   void (*free_bus)(struct soc_camera_subdev_desc * ) ;
   struct v4l2_subdev_platform_data sd_pdata ;
};
struct soc_camera_host_desc {
   int bus_id ;
   int i2c_adapter_id ;
   struct i2c_board_info *board_info ;
   char const *module_name ;
   int (*add_device)(struct soc_camera_device * ) ;
   void (*del_device)(struct soc_camera_device * ) ;
};
struct soc_camera_desc {
   struct soc_camera_subdev_desc subdev_desc ;
   struct soc_camera_host_desc host_desc ;
};
struct soc_camera_link {
   unsigned long flags ;
   void *priv ;
   bool unbalanced_power ;
   unsigned long clock_state ;
   int (*power)(struct device * , int ) ;
   int (*reset)(struct device * ) ;
   int (*set_bus_param)(struct soc_camera_link * , unsigned long ) ;
   unsigned long (*query_bus_param)(struct soc_camera_link * ) ;
   void (*free_bus)(struct soc_camera_link * ) ;
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
   int bus_id ;
   int i2c_adapter_id ;
   struct i2c_board_info *board_info ;
   char const *module_name ;
   int (*add_device)(struct soc_camera_device * ) ;
   void (*del_device)(struct soc_camera_device * ) ;
};
struct soc_mbus_pixelfmt;
struct soc_camera_format_xlate {
   enum v4l2_mbus_pixelcode code ;
   struct soc_mbus_pixelfmt const *host_fmt ;
};
struct soc_camera_sense {
   unsigned long flags ;
   unsigned long master_clock ;
   unsigned long pixel_clock_max ;
   unsigned long pixel_clock ;
};
struct mt9v011_platform_data {
   unsigned int xtal ;
};
struct v4l2_clk_ops;
struct v4l2_clk {
   struct list_head list ;
   struct v4l2_clk_ops const *ops ;
   char const *dev_id ;
   char const *id ;
   int enable ;
   struct mutex lock ;
   atomic_t use_count ;
   void *priv ;
};
struct v4l2_clk_ops {
   struct module *owner ;
   int (*enable)(struct v4l2_clk * ) ;
   void (*disable)(struct v4l2_clk * ) ;
   unsigned long (*get_rate)(struct v4l2_clk * ) ;
   int (*set_rate)(struct v4l2_clk * , unsigned long ) ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern int printk(char const * , ...) ;
extern void msleep(unsigned int ) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/46e2119/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6623;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6623;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6623;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6623;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6623: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField21.rlock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField21.rlock);
  }
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int __val ;
  int __min ;
  int __max ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    __val = interval;
    __min = 1;
    __max = 16;
    __val = __min > __val ? __min : __val;
    interval = __max < __val ? __max : __val;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static int usb_translate_errors(int error_code )
{
  {
  {
  if (error_code == 0) {
    goto case_0;
  } else {
  }
  if (error_code == -12) {
    goto case_neg_12;
  } else {
  }
  if (error_code == -19) {
    goto case_neg_19;
  } else {
  }
  if (error_code == -95) {
    goto case_neg_95;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_neg_12: ;
  case_neg_19: ;
  case_neg_95: ;
  return (error_code);
  switch_default: ;
  return (-5);
  switch_break: ;
  }
}
}
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int ac97_return_record_select(int a_out )
{
  {
  return ((a_out & 1792) >> 8);
}
}
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg ) ;
int em28xx_read_reg(struct em28xx *dev , u16 reg ) ;
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len ) ;
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val ) ;
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask ) ;
int em28xx_toggle_reg_bits(struct em28xx *dev , u16 reg , u8 bitmask ) ;
int em28xx_read_ac97(struct em28xx *dev , u8 reg ) ;
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val ) ;
int em28xx_audio_analog_set(struct em28xx *dev ) ;
int em28xx_audio_setup(struct em28xx *dev ) ;
struct em28xx_led const *em28xx_find_led(struct em28xx *dev , enum em28xx_led_role role ) ;
int em28xx_capture_start(struct em28xx *dev , int start ) ;
int em28xx_alloc_urbs(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                      int num_bufs , int max_pkt_size , int packet_multiplier ) ;
int em28xx_init_usb_xfer(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                         int num_bufs , int max_pkt_size , int packet_multiplier ,
                         int (*urb_data_copy)(struct em28xx * , struct urb * ) ) ;
void em28xx_uninit_usb_xfer(struct em28xx *dev , enum em28xx_mode mode ) ;
void em28xx_stop_urbs(struct em28xx *dev ) ;
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode ) ;
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio ) ;
int em28xx_register_extension(struct em28xx_ops *ops ) ;
void em28xx_unregister_extension(struct em28xx_ops *ops ) ;
void em28xx_init_extension(struct em28xx *dev ) ;
void em28xx_close_extension(struct em28xx *dev ) ;
struct em28xx_board em28xx_boards[93U] ;
static unsigned int core_debug ;
static unsigned int reg_debug ;
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{
  int ret ;
  int pipe ;
  unsigned int tmp ;
  int tmp___0 ;
  int byte ;
  {
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483776U);
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    return (-19);
  } else {
  }
  if (len > 80) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    {
    printk("\017(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x ", pipe,
           192, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255, len >> 8);
    }
  } else {
  }
  {
  ldv_mutex_lock_29(& dev->ctrl_urb_lock);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 192, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  }
  if (ret < 0) {
    if (reg_debug != 0U) {
      {
      printk(" failed!\n");
      }
    } else {
    }
    {
    ldv_mutex_unlock_30(& dev->ctrl_urb_lock);
    tmp___0 = usb_translate_errors(ret);
    }
    return (tmp___0);
  } else {
  }
  if (len != 0) {
    {
    memcpy((void *)buf, (void const *)(& dev->urb_buf), (size_t )len);
    }
  } else {
  }
  {
  ldv_mutex_unlock_31(& dev->ctrl_urb_lock);
  }
  if (reg_debug != 0U) {
    {
    printk("<<<");
    byte = 0;
    }
    goto ldv_38127;
    ldv_38126:
    {
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    }
    ldv_38127: ;
    if (byte < len) {
      goto ldv_38126;
    } else {
    }
    {
    printk("\n");
    }
  } else {
  }
  return (ret);
}
}
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg )
{
  int ret ;
  u8 val ;
  {
  {
  ret = em28xx_read_reg_req_len(dev, (int )req, (int )reg, (char *)(& val), 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
int em28xx_read_reg(struct em28xx *dev , u16 reg )
{
  int tmp ;
  {
  {
  tmp = em28xx_read_reg_req(dev, 0, (int )reg);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_read_reg[16U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'r',
        'e', 'a', 'd', '_',
        'r', 'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_em28xx_read_reg ;
struct kernel_symbol const __ksymtab_em28xx_read_reg = {(unsigned long )(& em28xx_read_reg), (char const *)(& __kstrtab_em28xx_read_reg)};
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{
  int ret ;
  int pipe ;
  unsigned int tmp ;
  int byte ;
  int tmp___0 ;
  {
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483648U);
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    return (-19);
  } else {
  }
  if ((unsigned int )len - 1U > 79U) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    {
    printk("\017(pipe 0x%08x): OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>",
           pipe, 64, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255,
           len >> 8);
    byte = 0;
    }
    goto ldv_38159;
    ldv_38158:
    {
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    }
    ldv_38159: ;
    if (byte < len) {
      goto ldv_38158;
    } else {
    }
    {
    printk("\n");
    }
  } else {
  }
  {
  ldv_mutex_lock_32(& dev->ctrl_urb_lock);
  memcpy((void *)(& dev->urb_buf), (void const *)buf, (size_t )len);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 64, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  ldv_mutex_unlock_33(& dev->ctrl_urb_lock);
  }
  if (ret < 0) {
    {
    tmp___0 = usb_translate_errors(ret);
    }
    return (tmp___0);
  } else {
  }
  if (dev->wait_after_write != 0U) {
    {
    msleep(dev->wait_after_write);
    }
  } else {
  }
  return (ret);
}
}
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len )
{
  int tmp ;
  {
  {
  tmp = em28xx_write_regs_req(dev, 0, (int )reg, buf, len);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_write_regs[18U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'r', 'e', 'g',
        's', '\000'};
struct kernel_symbol const __ksymtab_em28xx_write_regs ;
struct kernel_symbol const __ksymtab_em28xx_write_regs = {(unsigned long )(& em28xx_write_regs), (char const *)(& __kstrtab_em28xx_write_regs)};
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val )
{
  int tmp ;
  {
  {
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& val), 1);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_write_reg[17U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'r', 'e', 'g',
        '\000'};
struct kernel_symbol const __ksymtab_em28xx_write_reg ;
struct kernel_symbol const __ksymtab_em28xx_write_reg = {(unsigned long )(& em28xx_write_reg), (char const *)(& __kstrtab_em28xx_write_reg)};
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask )
{
  int oldval ;
  u8 newval ;
  int tmp ;
  {
  {
  oldval = em28xx_read_reg(dev, (int )reg);
  }
  if (oldval < 0) {
    return (oldval);
  } else {
  }
  {
  newval = (u8 )(((int )((signed char )oldval) & ~ ((int )((signed char )bitmask))) | (int )((signed char )((int )val & (int )bitmask)));
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& newval), 1);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_write_reg_bits[22U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'r', 'e', 'g',
        '_', 'b', 'i', 't',
        's', '\000'};
struct kernel_symbol const __ksymtab_em28xx_write_reg_bits ;
struct kernel_symbol const __ksymtab_em28xx_write_reg_bits = {(unsigned long )(& em28xx_write_reg_bits), (char const *)(& __kstrtab_em28xx_write_reg_bits)};
int em28xx_toggle_reg_bits(struct em28xx *dev , u16 reg , u8 bitmask )
{
  int oldval ;
  u8 newval ;
  int tmp ;
  {
  {
  oldval = em28xx_read_reg(dev, (int )reg);
  }
  if (oldval < 0) {
    return (oldval);
  } else {
  }
  {
  newval = (u8 )((~ ((int )((signed char )oldval)) & (int )((signed char )bitmask)) | ((int )((signed char )oldval) & ~ ((int )((signed char )bitmask))));
  tmp = em28xx_write_reg(dev, (int )reg, (int )newval);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_toggle_reg_bits[23U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 't',
        'o', 'g', 'g', 'l',
        'e', '_', 'r', 'e',
        'g', '_', 'b', 'i',
        't', 's', '\000'};
struct kernel_symbol const __ksymtab_em28xx_toggle_reg_bits ;
struct kernel_symbol const __ksymtab_em28xx_toggle_reg_bits = {(unsigned long )(& em28xx_toggle_reg_bits), (char const *)(& __kstrtab_em28xx_toggle_reg_bits)};
static int em28xx_is_ac97_ready(struct em28xx *dev )
{
  unsigned long timeout ;
  unsigned long tmp ;
  int ret ;
  {
  {
  tmp = msecs_to_jiffies(100U);
  timeout = (unsigned long )jiffies + tmp;
  }
  goto ldv_38237;
  ldv_38236:
  {
  ret = em28xx_read_reg(dev, 67);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 1) == 0) {
    return (0);
  } else {
  }
  {
  msleep(5U);
  }
  ldv_38237: ;
  if ((long )((unsigned long )jiffies - timeout) < 0L) {
    goto ldv_38236;
  } else {
  }
  {
  printk("\f%s: AC97 command still being executed: not handled properly!\n", (char *)(& dev->name));
  }
  return (-16);
}
}
int em28xx_read_ac97(struct em28xx *dev , u8 reg )
{
  int ret ;
  u8 addr ;
  u16 val ;
  {
  {
  addr = (unsigned int )reg | 128U;
  ret = em28xx_is_ac97_ready(dev);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, 64, (char *)(& val), 2);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
static char const __kstrtab_em28xx_read_ac97[17U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'r',
        'e', 'a', 'd', '_',
        'a', 'c', '9', '7',
        '\000'};
struct kernel_symbol const __ksymtab_em28xx_read_ac97 ;
struct kernel_symbol const __ksymtab_em28xx_read_ac97 = {(unsigned long )(& em28xx_read_ac97), (char const *)(& __kstrtab_em28xx_read_ac97)};
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val )
{
  int ret ;
  u8 addr ;
  __le16 value ;
  {
  {
  addr = (unsigned int )reg & 127U;
  value = val;
  ret = em28xx_is_ac97_ready(dev);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = em28xx_write_regs(dev, 64, (char *)(& value), 2);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_em28xx_write_ac97[18U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'a', 'c', '9',
        '7', '\000'};
struct kernel_symbol const __ksymtab_em28xx_write_ac97 ;
struct kernel_symbol const __ksymtab_em28xx_write_ac97 = {(unsigned long )(& em28xx_write_ac97), (char const *)(& __kstrtab_em28xx_write_ac97)};
static struct em28xx_vol_itable inputs[7U] = { {0, 20U},
        {1, 16U},
        {3, 12U},
        {4, 14U},
        {5, 18U},
        {6, 22U},
        {7, 24U}};
static int set_ac97_input(struct em28xx *dev )
{
  int ret ;
  int i ;
  enum em28xx_amux amux ;
  {
  amux = dev->ctl_ainput;
  if ((unsigned int )amux == 2U) {
    amux = 0;
  } else {
  }
  i = 0;
  goto ldv_38284;
  ldv_38283: ;
  if ((unsigned int )amux == (unsigned int )inputs[i].mux) {
    {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 2056);
    }
  } else {
    {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 32768);
    }
  }
  if (ret < 0) {
    {
    printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )inputs[i].reg);
    }
  } else {
  }
  i = i + 1;
  ldv_38284: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_38283;
  } else {
  }
  return (0);
}
}
static int em28xx_set_audio_source(struct em28xx *dev )
{
  int ret ;
  u8 input ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if (dev->ctl_ainput == 0U) {
      input = 13U;
    } else {
      input = 12U;
    }
    {
    ret = em28xx_write_regs(dev, 8, (char *)(& input), 1);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    input = 192U;
  } else {
    {
    if (dev->ctl_ainput == 0U) {
      goto case_0;
    } else {
    }
    goto switch_default;
    case_0:
    input = 192U;
    goto ldv_38292;
    switch_default:
    input = 128U;
    goto ldv_38292;
    switch_break: ;
    }
    ldv_38292: ;
  }
  if ((unsigned long )dev->board.mute_gpio != (unsigned long )((struct em28xx_reg_seq *)0) && dev->mute != 0) {
    {
    em28xx_gpio_set(dev, dev->board.mute_gpio);
    }
  } else {
    {
    em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
    }
  }
  {
  ret = em28xx_write_reg_bits(dev, 14, (int )input, 192);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  msleep(5U);
  }
  {
  if ((unsigned int )dev->audio_mode.ac97 == 0U) {
    goto case_0___0;
  } else {
  }
  goto switch_default___0;
  case_0___0: ;
  goto ldv_38295;
  switch_default___0:
  {
  ret = set_ac97_input(dev);
  }
  switch_break___0: ;
  }
  ldv_38295: ;
  return (ret);
}
}
static struct em28xx_vol_otable const outputs[5U] = { {1, 2U},
        {2, 4U},
        {4, 6U},
        {8, 54U},
        {16, 56U}};
int em28xx_audio_analog_set(struct em28xx *dev )
{
  int ret ;
  int i ;
  u8 xclk ;
  int vol ;
  int sel ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 1064UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    i = 0;
    goto ldv_38310;
    ldv_38309:
    {
    ret = em28xx_write_ac97(dev, (int )outputs[i].reg, 32768);
    }
    if (ret < 0) {
      {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
      }
    } else {
    }
    i = i + 1;
    ldv_38310: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_38309;
    } else {
    }
  } else {
  }
  xclk = (unsigned int )dev->board.xclk & 127U;
  if (dev->mute == 0) {
    xclk = (u8 )((unsigned int )xclk | 128U);
  } else {
  }
  {
  ret = em28xx_write_reg(dev, 15, (int )xclk);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  msleep(10U);
  ret = em28xx_set_audio_source(dev);
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    {
    em28xx_write_ac97(dev, 38, 16896);
    em28xx_write_ac97(dev, 42, 49);
    em28xx_write_ac97(dev, 50, 48000);
    vol = (31 - dev->volume) | ((31 - dev->volume) << 8);
    }
    if (dev->mute != 0) {
      vol = vol | 32768;
    } else {
    }
    i = 0;
    goto ldv_38316;
    ldv_38315: ;
    if ((dev->ctl_aoutput & (unsigned int )outputs[i].mux) != 0U) {
      {
      ret = em28xx_write_ac97(dev, (int )outputs[i].reg, (int )((u16 )vol));
      }
    } else {
    }
    if (ret < 0) {
      {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
      }
    } else {
    }
    i = i + 1;
    ldv_38316: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_38315;
    } else {
    }
    if ((dev->ctl_aoutput & 128U) != 0U) {
      {
      tmp = ac97_return_record_select((int )dev->ctl_aoutput);
      sel = tmp;
      sel = sel | (sel << 8);
      em28xx_write_ac97(dev, 26, (int )((u16 )sel));
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_em28xx_audio_analog_set[24U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'a',
        'u', 'd', 'i', 'o',
        '_', 'a', 'n', 'a',
        'l', 'o', 'g', '_',
        's', 'e', 't', '\000'};
struct kernel_symbol const __ksymtab_em28xx_audio_analog_set ;
struct kernel_symbol const __ksymtab_em28xx_audio_analog_set = {(unsigned long )(& em28xx_audio_analog_set), (char const *)(& __kstrtab_em28xx_audio_analog_set)};
int em28xx_audio_setup(struct em28xx *dev )
{
  int vid1 ;
  int vid2 ;
  int feat ;
  int cfg ;
  u32 vid ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 1064UL) == 0U) {
    return (0);
  } else {
  }
  {
  cfg = em28xx_read_reg(dev, 0);
  printk("\016%s: Config register raw data: 0x%02x\n", (char *)(& dev->name), cfg);
  }
  if (cfg < 0) {
    cfg = 16;
  } else
  if ((cfg & 48) == 0) {
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    return (0);
  } else
  if ((cfg & 48) != 16) {
    if ((unsigned int )dev->chip_id <= 33U && (cfg & 48) == 32) {
      dev->audio_mode.i2s_samplerates = 1U;
    } else
    if ((unsigned int )dev->chip_id > 33U && (cfg & 48) == 48) {
      dev->audio_mode.i2s_samplerates = 5U;
    } else {
      dev->audio_mode.i2s_samplerates = 3U;
    }
    {
    printk("\016%s: I2S Audio (%d sample rate(s))\n", (char *)(& dev->name), (int )dev->audio_mode.i2s_samplerates);
    dev->audio_mode.ac97 = 0;
    }
    goto init_audio;
  } else {
  }
  {
  dev->audio_mode.ac97 = 3;
  vid1 = em28xx_read_ac97(dev, 124);
  }
  if (vid1 < 0) {
    {
    printk("\f%s: AC97 chip type couldn\'t be determined\n", (char *)(& dev->name));
    dev->audio_mode.ac97 = 0;
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    }
    goto init_audio;
  } else {
  }
  {
  vid2 = em28xx_read_ac97(dev, 126);
  }
  if (vid2 < 0) {
    goto init_audio;
  } else {
  }
  {
  vid = (u32 )((vid1 << 16) | vid2);
  dev->audio_mode.ac97_vendor_id = vid;
  printk("\f%s: AC97 vendor ID = 0x%08x\n", (char *)(& dev->name), vid);
  feat = em28xx_read_ac97(dev, 0);
  }
  if (feat < 0) {
    goto init_audio;
  } else {
  }
  {
  dev->audio_mode.ac97_feat = (u16 )feat;
  printk("\f%s: AC97 features = 0x%04x\n", (char *)(& dev->name), feat);
  }
  if ((vid == 4294967295U || vid == 2206496336U) && feat == 27280) {
    dev->audio_mode.ac97 = 1;
  } else
  if (vid >> 8 == 8619126U) {
    dev->audio_mode.ac97 = 2;
  } else {
  }
  init_audio: ;
  {
  if ((unsigned int )dev->audio_mode.ac97 == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  {
  printk("\016%s: No AC97 audio processor\n", (char *)(& dev->name));
  }
  goto ldv_38336;
  case_1:
  {
  printk("\016%s: Empia 202 AC97 audio processor detected\n", (char *)(& dev->name));
  }
  goto ldv_38336;
  case_2:
  {
  printk("\016%s: Sigmatel audio processor detected(stac 97%02x)\n", (char *)(& dev->name),
         dev->audio_mode.ac97_vendor_id & 255U);
  }
  goto ldv_38336;
  case_3:
  {
  printk("\f%s: Unknown AC97 audio processor detected!\n", (char *)(& dev->name));
  }
  goto ldv_38336;
  switch_default: ;
  goto ldv_38336;
  switch_break: ;
  }
  ldv_38336:
  {
  tmp = em28xx_audio_analog_set(dev);
  }
  return (tmp);
}
}
static char const __kstrtab_em28xx_audio_setup[19U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'a',
        'u', 'd', 'i', 'o',
        '_', 's', 'e', 't',
        'u', 'p', '\000'};
struct kernel_symbol const __ksymtab_em28xx_audio_setup ;
struct kernel_symbol const __ksymtab_em28xx_audio_setup = {(unsigned long )(& em28xx_audio_setup), (char const *)(& __kstrtab_em28xx_audio_setup)};
struct em28xx_led const *em28xx_find_led(struct em28xx *dev , enum em28xx_led_role role )
{
  u8 k ;
  {
  if ((unsigned long )dev->board.leds != (unsigned long )((struct em28xx_led *)0)) {
    k = 0U;
    goto ldv_38354;
    ldv_38353: ;
    if ((unsigned int )(dev->board.leds + (unsigned long )k)->role == (unsigned int )role) {
      return ((struct em28xx_led const *)dev->board.leds + (unsigned long )k);
    } else {
    }
    k = (u8 )((int )k + 1);
    ldv_38354: ;
    if ((unsigned int )(dev->board.leds + (unsigned long )k)->role <= 1U) {
      goto ldv_38353;
    } else {
    }
  } else {
  }
  return ((struct em28xx_led const *)0);
}
}
static char const __kstrtab_em28xx_find_led[16U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'f',
        'i', 'n', 'd', '_',
        'l', 'e', 'd', '\000'};
struct kernel_symbol const __ksymtab_em28xx_find_led ;
struct kernel_symbol const __ksymtab_em28xx_find_led = {(unsigned long )(& em28xx_find_led), (char const *)(& __kstrtab_em28xx_find_led)};
int em28xx_capture_start(struct em28xx *dev , int start )
{
  int rc ;
  struct em28xx_led const *led ;
  {
  if ((((unsigned int )dev->chip_id == 65U || (unsigned int )dev->chip_id == 68U) || (unsigned int )dev->chip_id == 113U) || (unsigned int )dev->chip_id == 114U) {
    {
    rc = em28xx_write_reg_bits(dev, 95, start != 0, 1);
    }
  } else {
    {
    rc = em28xx_write_reg_bits(dev, 12, start != 0 ? 16 : 0, 16);
    }
    if (rc < 0) {
      return (rc);
    } else {
    }
    if (start != 0) {
      if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
        {
        rc = em28xx_write_reg(dev, 19, 12);
        }
      } else {
      }
      {
      rc = em28xx_write_reg(dev, 72, 0);
      }
      if ((unsigned int )dev->mode == 1U) {
        {
        rc = em28xx_write_reg(dev, 18, 103);
        }
      } else {
        {
        rc = em28xx_write_reg(dev, 18, 55);
        }
      }
      {
      msleep(6U);
      }
    } else {
      {
      rc = em28xx_write_reg(dev, 18, 39);
      }
    }
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->mode == 1U) {
    {
    led = em28xx_find_led(dev, 0);
    }
    if ((unsigned long )led != (unsigned long )((struct em28xx_led const *)0)) {
      {
      em28xx_write_reg_bits(dev, (int )led->gpio_reg, (start == 0) != (int )led->inverted ? ~ ((int )((u8 )led->gpio_mask)) : (int )led->gpio_mask,
                            (int )led->gpio_mask);
      }
    } else {
    }
  } else {
  }
  return (rc);
}
}
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio )
{
  int rc ;
  {
  rc = 0;
  if ((unsigned long )gpio == (unsigned long )((struct em28xx_reg_seq *)0)) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->mode != 0U) {
    {
    em28xx_write_reg(dev, 72, 0);
    }
    if ((unsigned int )dev->mode == 1U) {
      {
      em28xx_write_reg(dev, 18, 103);
      }
    } else {
      {
      em28xx_write_reg(dev, 18, 55);
      }
    }
    {
    msleep(6U);
    }
  } else {
  }
  goto ldv_38376;
  ldv_38375: ;
  if (gpio->reg >= 0) {
    {
    rc = em28xx_write_reg_bits(dev, (int )((u16 )gpio->reg), (int )gpio->val, (int )gpio->mask);
    }
    if (rc < 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if (gpio->sleep > 0) {
    {
    msleep((unsigned int )gpio->sleep);
    }
  } else {
  }
  gpio = gpio + 1;
  ldv_38376: ;
  if (gpio->sleep >= 0) {
    goto ldv_38375;
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_em28xx_gpio_set[16U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'g',
        'p', 'i', 'o', '_',
        's', 'e', 't', '\000'};
struct kernel_symbol const __ksymtab_em28xx_gpio_set ;
struct kernel_symbol const __ksymtab_em28xx_gpio_set = {(unsigned long )(& em28xx_gpio_set), (char const *)(& __kstrtab_em28xx_gpio_set)};
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )dev->mode == (unsigned int )set_mode) {
    return (0);
  } else {
  }
  if ((unsigned int )set_mode == 0U) {
    {
    dev->mode = set_mode;
    tmp = em28xx_gpio_set(dev, dev->board.suspend_gpio);
    }
    return (tmp);
  } else {
  }
  dev->mode = set_mode;
  if ((unsigned int )dev->mode == 2U) {
    {
    tmp___0 = em28xx_gpio_set(dev, dev->board.dvb_gpio);
    }
    return (tmp___0);
  } else {
    {
    tmp___1 = em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
    }
    return (tmp___1);
  }
}
}
static char const __kstrtab_em28xx_set_mode[16U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 's',
        'e', 't', '_', 'm',
        'o', 'd', 'e', '\000'};
struct kernel_symbol const __ksymtab_em28xx_set_mode ;
struct kernel_symbol const __ksymtab_em28xx_set_mode = {(unsigned long )(& em28xx_set_mode), (char const *)(& __kstrtab_em28xx_set_mode)};
static void em28xx_irq_callback(struct urb *urb )
{
  struct em28xx *dev ;
  int i ;
  {
  dev = (struct em28xx *)urb->context;
  {
  if (urb->status == 0) {
    goto case_0;
  } else {
  }
  if (urb->status == -110) {
    goto case_neg_110;
  } else {
  }
  if (urb->status == -104) {
    goto case_neg_104;
  } else {
  }
  if (urb->status == -2) {
    goto case_neg_2;
  } else {
  }
  if (urb->status == -108) {
    goto case_neg_108;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_neg_110: ;
  goto ldv_38405;
  case_neg_104: ;
  case_neg_2: ;
  case_neg_108: ;
  return;
  switch_default: ;
  if (core_debug != 0U) {
    {
    printk("\016%s %s :urb completition error %d.\n", (char *)(& dev->name), "em28xx_irq_callback",
           urb->status);
    }
  } else {
  }
  goto ldv_38405;
  switch_break: ;
  }
  ldv_38405:
  {
  spin_lock(& dev->slock);
  (*(dev->usb_ctl.urb_data_copy))(dev, urb);
  spin_unlock(& dev->slock);
  i = 0;
  }
  goto ldv_38412;
  ldv_38411:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_38412: ;
  if (i < urb->number_of_packets) {
    goto ldv_38411;
  } else {
  }
  {
  urb->status = 0;
  urb->status = usb_submit_urb(urb, 32U);
  }
  if (urb->status != 0) {
    if (core_debug != 0U) {
      {
      printk("\016%s %s :urb resubmit failed (error=%i)\n", (char *)(& dev->name),
             "em28xx_irq_callback", urb->status);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void em28xx_uninit_usb_xfer(struct em28xx *dev , enum em28xx_mode mode )
{
  struct urb *urb ;
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  unsigned long _flags ;
  int tmp ;
  {
  if (core_debug != 0U) {
    {
    printk("\016%s %s :em28xx: called em28xx_uninit_usb_xfer in mode %d\n", (char *)(& dev->name),
           "em28xx_uninit_usb_xfer", (unsigned int )mode);
    }
  } else {
  }
  if ((unsigned int )mode == 2U) {
    usb_bufs = & dev->usb_ctl.digital_bufs;
  } else {
    usb_bufs = & dev->usb_ctl.analog_bufs;
  }
  i = 0;
  goto ldv_38432;
  ldv_38431:
  urb = *(usb_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    }
    if (tmp == 0) {
      {
      usb_kill_urb(urb);
      }
    } else {
      {
      usb_unlink_urb(urb);
      }
    }
    if ((unsigned long )*(usb_bufs->transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      {
      usb_free_coherent(dev->udev, (size_t )urb->transfer_buffer_length, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                        urb->transfer_dma);
      }
    } else {
    }
    {
    usb_free_urb(urb);
    *(usb_bufs->urb + (unsigned long )i) = (struct urb *)0;
    }
  } else {
  }
  *(usb_bufs->transfer_buffer + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_38432: ;
  if (i < usb_bufs->num_bufs) {
    goto ldv_38431;
  } else {
  }
  {
  kfree((void const *)usb_bufs->urb);
  kfree((void const *)usb_bufs->transfer_buffer);
  usb_bufs->urb = (struct urb **)0;
  usb_bufs->transfer_buffer = (char **)0;
  usb_bufs->num_bufs = 0;
  em28xx_capture_start(dev, 0);
  }
  return;
}
}
static char const __kstrtab_em28xx_uninit_usb_xfer[23U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'u',
        'n', 'i', 'n', 'i',
        't', '_', 'u', 's',
        'b', '_', 'x', 'f',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_em28xx_uninit_usb_xfer ;
struct kernel_symbol const __ksymtab_em28xx_uninit_usb_xfer = {(unsigned long )(& em28xx_uninit_usb_xfer), (char const *)(& __kstrtab_em28xx_uninit_usb_xfer)};
void em28xx_stop_urbs(struct em28xx *dev )
{
  int i ;
  struct urb *urb ;
  struct em28xx_usb_bufs *isoc_bufs ;
  unsigned long _flags ;
  int tmp ;
  {
  isoc_bufs = & dev->usb_ctl.digital_bufs;
  if (core_debug != 0U) {
    {
    printk("\016%s %s :em28xx: called em28xx_stop_urbs\n", (char *)(& dev->name),
           "em28xx_stop_urbs");
    }
  } else {
  }
  i = 0;
  goto ldv_38459;
  ldv_38458:
  urb = *(isoc_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    }
    if (tmp == 0) {
      {
      usb_kill_urb(urb);
      }
    } else {
      {
      usb_unlink_urb(urb);
      }
    }
  } else {
  }
  i = i + 1;
  ldv_38459: ;
  if (i < isoc_bufs->num_bufs) {
    goto ldv_38458;
  } else {
  }
  {
  em28xx_capture_start(dev, 0);
  }
  return;
}
}
static char const __kstrtab_em28xx_stop_urbs[17U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 's',
        't', 'o', 'p', '_',
        'u', 'r', 'b', 's',
        '\000'};
struct kernel_symbol const __ksymtab_em28xx_stop_urbs ;
struct kernel_symbol const __ksymtab_em28xx_stop_urbs = {(unsigned long )(& em28xx_stop_urbs), (char const *)(& __kstrtab_em28xx_stop_urbs)};
int em28xx_alloc_urbs(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                      int num_bufs , int max_pkt_size , int packet_multiplier )
{
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int j ;
  int k ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  if (core_debug != 0U) {
    {
    printk("\016%s %s :em28xx: called em28xx_alloc_isoc in mode %d\n", (char *)(& dev->name),
           "em28xx_alloc_urbs", (unsigned int )mode);
    }
  } else {
  }
  if ((unsigned int )mode == 2U) {
    if ((xfer_bulk != 0 && (unsigned int )dev->dvb_ep_bulk == 0U) || (xfer_bulk == 0 && (unsigned int )dev->dvb_ep_isoc == 0U)) {
      {
      printk("\v%s: no endpoint for DVB mode and transfer type %d\n", (char *)(& dev->name),
             xfer_bulk > 0);
      }
      return (-22);
    } else {
    }
    usb_bufs = & dev->usb_ctl.digital_bufs;
  } else
  if ((unsigned int )mode == 1U) {
    if ((xfer_bulk != 0 && (unsigned int )dev->analog_ep_bulk == 0U) || (xfer_bulk == 0 && (unsigned int )dev->analog_ep_isoc == 0U)) {
      {
      printk("\v%s: no endpoint for analog mode and transfer type %d\n", (char *)(& dev->name),
             xfer_bulk > 0);
      }
      return (-22);
    } else {
    }
    usb_bufs = & dev->usb_ctl.analog_bufs;
  } else {
    {
    printk("\v%s: invalid mode selected\n", (char *)(& dev->name));
    }
    return (-22);
  }
  {
  em28xx_uninit_usb_xfer(dev, mode);
  usb_bufs->num_bufs = num_bufs;
  tmp = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  usb_bufs->urb = (struct urb **)tmp;
  }
  if ((unsigned long )usb_bufs->urb == (unsigned long )((struct urb **)0)) {
    {
    printk("\v%s: cannot alloc memory for usb buffers\n", (char *)(& dev->name));
    }
    return (-12);
  } else {
  }
  {
  tmp___0 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  usb_bufs->transfer_buffer = (char **)tmp___0;
  }
  if ((unsigned long )usb_bufs->transfer_buffer == (unsigned long )((char **)0)) {
    {
    printk("\v%s: cannot allocate memory for usb transfer\n", (char *)(& dev->name));
    kfree((void const *)usb_bufs->urb);
    }
    return (-12);
  } else {
  }
  usb_bufs->max_pkt_size = max_pkt_size;
  if (xfer_bulk != 0) {
    usb_bufs->num_packets = 0;
  } else {
    usb_bufs->num_packets = packet_multiplier;
  }
  dev->usb_ctl.vid_buf = (struct em28xx_buffer *)0;
  dev->usb_ctl.vbi_buf = (struct em28xx_buffer *)0;
  sb_size = packet_multiplier * usb_bufs->max_pkt_size;
  i = 0;
  goto ldv_38488;
  ldv_38487:
  {
  urb = usb_alloc_urb(usb_bufs->num_packets, 208U);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    {
    printk("\vcannot alloc usb_ctl.urb %i\n", i);
    em28xx_uninit_usb_xfer(dev, mode);
    }
    return (-12);
  } else {
  }
  {
  *(usb_bufs->urb + (unsigned long )i) = urb;
  tmp___1 = usb_alloc_coherent(dev->udev, (size_t )sb_size, 208U, & urb->transfer_dma);
  *(usb_bufs->transfer_buffer + (unsigned long )i) = (char *)tmp___1;
  }
  if ((unsigned long )*(usb_bufs->transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    {
    tmp___2 = preempt_count();
    printk("\vunable to allocate %i bytes for transfer buffer %i%s\n", sb_size, i,
           ((unsigned long )tmp___2 & 2096896UL) != 0UL ? (char *)" while in int" : (char *)"");
    em28xx_uninit_usb_xfer(dev, mode);
    }
    return (-12);
  } else {
  }
  {
  memset((void *)*(usb_bufs->transfer_buffer + (unsigned long )i), 0, (size_t )sb_size);
  }
  if (xfer_bulk != 0) {
    {
    tmp___3 = __create_pipe(dev->udev, (unsigned int )((unsigned int )mode == 1U ? dev->analog_ep_bulk : dev->dvb_ep_bulk));
    pipe = (int )(tmp___3 | 3221225600U);
    usb_fill_bulk_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                      sb_size, & em28xx_irq_callback, (void *)dev);
    urb->transfer_flags = 4U;
    }
  } else {
    {
    tmp___4 = __create_pipe(dev->udev, (unsigned int )((unsigned int )mode == 1U ? dev->analog_ep_isoc : dev->dvb_ep_isoc));
    pipe = (int )(tmp___4 | 128U);
    usb_fill_int_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                     sb_size, & em28xx_irq_callback, (void *)dev, 1);
    urb->transfer_flags = 6U;
    k = 0;
    j = 0;
    }
    goto ldv_38485;
    ldv_38484:
    urb->iso_frame_desc[j].offset = (unsigned int )k;
    urb->iso_frame_desc[j].length = (unsigned int )usb_bufs->max_pkt_size;
    k = k + usb_bufs->max_pkt_size;
    j = j + 1;
    ldv_38485: ;
    if (j < usb_bufs->num_packets) {
      goto ldv_38484;
    } else {
    }
  }
  urb->number_of_packets = usb_bufs->num_packets;
  i = i + 1;
  ldv_38488: ;
  if (i < usb_bufs->num_bufs) {
    goto ldv_38487;
  } else {
  }
  return (0);
}
}
static char const __kstrtab_em28xx_alloc_urbs[18U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'a',
        'l', 'l', 'o', 'c',
        '_', 'u', 'r', 'b',
        's', '\000'};
struct kernel_symbol const __ksymtab_em28xx_alloc_urbs ;
struct kernel_symbol const __ksymtab_em28xx_alloc_urbs = {(unsigned long )(& em28xx_alloc_urbs), (char const *)(& __kstrtab_em28xx_alloc_urbs)};
int em28xx_init_usb_xfer(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                         int num_bufs , int max_pkt_size , int packet_multiplier ,
                         int (*urb_data_copy)(struct em28xx * , struct urb * ) )
{
  struct em28xx_dmaqueue *dma_q ;
  struct em28xx_dmaqueue *vbi_dma_q ;
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  int rc ;
  int alloc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  dma_q = & dev->vidq;
  vbi_dma_q = & dev->vbiq;
  if (core_debug != 0U) {
    {
    printk("\016%s %s :em28xx: called em28xx_init_usb_xfer in mode %d\n", (char *)(& dev->name),
           "em28xx_init_usb_xfer", (unsigned int )mode);
    }
  } else {
  }
  dev->usb_ctl.urb_data_copy = urb_data_copy;
  if ((unsigned int )mode == 2U) {
    usb_bufs = & dev->usb_ctl.digital_bufs;
    alloc = 0;
  } else {
    usb_bufs = & dev->usb_ctl.analog_bufs;
    alloc = 1;
  }
  if (alloc != 0) {
    {
    rc = em28xx_alloc_urbs(dev, mode, xfer_bulk, num_bufs, max_pkt_size, packet_multiplier);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if (xfer_bulk != 0) {
    {
    rc = usb_clear_halt(dev->udev, (int )(*(usb_bufs->urb))->pipe);
    }
    if (rc < 0) {
      {
      printk("\vfailed to clear USB bulk endpoint stall/halt condition (error=%i)\n",
             rc);
      em28xx_uninit_usb_xfer(dev, mode);
      }
      return (rc);
    } else {
    }
  } else {
  }
  {
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  __init_waitqueue_head(& vbi_dma_q->wq, "&vbi_dma_q->wq", & __key___0);
  em28xx_capture_start(dev, 1);
  i = 0;
  }
  goto ldv_38523;
  ldv_38522:
  {
  rc = usb_submit_urb(*(usb_bufs->urb + (unsigned long )i), 32U);
  }
  if (rc != 0) {
    {
    printk("\vsubmit of urb %i failed (error=%i)\n", i, rc);
    em28xx_uninit_usb_xfer(dev, mode);
    }
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_38523: ;
  if (i < usb_bufs->num_bufs) {
    goto ldv_38522;
  } else {
  }
  return (0);
}
}
static char const __kstrtab_em28xx_init_usb_xfer[21U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'i',
        'n', 'i', 't', '_',
        'u', 's', 'b', '_',
        'x', 'f', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_em28xx_init_usb_xfer ;
struct kernel_symbol const __ksymtab_em28xx_init_usb_xfer = {(unsigned long )(& em28xx_init_usb_xfer), (char const *)(& __kstrtab_em28xx_init_usb_xfer)};
static struct list_head em28xx_devlist = {& em28xx_devlist, & em28xx_devlist};
static struct mutex em28xx_devlist_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "em28xx_devlist_mutex.wait_lock",
                                                           0, 0UL}}}}, {& em28xx_devlist_mutex.wait_list,
                                                                        & em28xx_devlist_mutex.wait_list},
    0, 0, (void *)(& em28xx_devlist_mutex), {0, {0, 0}, "em28xx_devlist_mutex", 0,
                                             0UL}};
static struct list_head em28xx_extension_devlist = {& em28xx_extension_devlist, & em28xx_extension_devlist};
int em28xx_register_extension(struct em28xx_ops *ops )
{
  struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = (struct em28xx *)0;
  ldv_mutex_lock_34(& em28xx_devlist_mutex);
  list_add_tail(& ops->next, & em28xx_extension_devlist);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffbf8UL;
  }
  goto ldv_38551;
  ldv_38550:
  {
  (*(ops->init))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffbf8UL;
  }
  ldv_38551: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_38550;
  } else {
  }
  {
  ldv_mutex_unlock_35(& em28xx_devlist_mutex);
  printk("\016em28xx: Registered (%s) extension\n", ops->name);
  }
  return (0);
}
}
static char const __kstrtab_em28xx_register_extension[26U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'e', 'x', 't', 'e',
        'n', 's', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_em28xx_register_extension ;
struct kernel_symbol const __ksymtab_em28xx_register_extension = {(unsigned long )(& em28xx_register_extension), (char const *)(& __kstrtab_em28xx_register_extension)};
void em28xx_unregister_extension(struct em28xx_ops *ops )
{
  struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = (struct em28xx *)0;
  ldv_mutex_lock_36(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffbf8UL;
  }
  goto ldv_38569;
  ldv_38568:
  {
  (*(ops->fini))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffbf8UL;
  }
  ldv_38569: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_38568;
  } else {
  }
  {
  list_del(& ops->next);
  ldv_mutex_unlock_37(& em28xx_devlist_mutex);
  printk("\016Em28xx: Removed (%s) extension\n", ops->name);
  }
  return;
}
}
static char const __kstrtab_em28xx_unregister_extension[28U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'e', 'x',
        't', 'e', 'n', 's',
        'i', 'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_em28xx_unregister_extension ;
struct kernel_symbol const __ksymtab_em28xx_unregister_extension = {(unsigned long )(& em28xx_unregister_extension), (char const *)(& __kstrtab_em28xx_unregister_extension)};
void em28xx_init_extension(struct em28xx *dev )
{
  struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  ops = (struct em28xx_ops const *)0;
  ldv_mutex_lock_38(& em28xx_devlist_mutex);
  list_add_tail(& dev->devlist, & em28xx_devlist);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  }
  goto ldv_38587;
  ldv_38586: ;
  if ((unsigned long )ops->init != (unsigned long )((int (* )(struct em28xx * ))0)) {
    {
    (*(ops->init))(dev);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_38587: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_38586;
  } else {
  }
  {
  ldv_mutex_unlock_39(& em28xx_devlist_mutex);
  }
  return;
}
}
void em28xx_close_extension(struct em28xx *dev )
{
  struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  ops = (struct em28xx_ops const *)0;
  ldv_mutex_lock_40(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  }
  goto ldv_38598;
  ldv_38597: ;
  if ((unsigned long )ops->fini != (unsigned long )((int (* )(struct em28xx * ))0)) {
    {
    (*(ops->fini))(dev);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_38598: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_38597;
  } else {
  }
  {
  list_del(& dev->devlist);
  ldv_mutex_unlock_41(& em28xx_devlist_mutex);
  }
  return;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  }
  return;
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
extern char *strcpy(char * , char const * ) ;
extern struct module __this_module ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
static int ldv_dev_set_drvdata_17(struct device *dev , void *data ) ;
extern int rt_mutex_trylock(struct rt_mutex * ) ;
extern void rt_mutex_unlock(struct rt_mutex * ) ;
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_17(& dev->dev, data);
  }
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void em28xx_do_i2c_scan(struct em28xx *dev , unsigned int bus ) ;
int em28xx_i2c_register(struct em28xx *dev , unsigned int bus , enum em28xx_i2c_algo_type algo_type ) ;
int em28xx_i2c_unregister(struct em28xx *dev , unsigned int bus ) ;
static unsigned int i2c_scan ;
static unsigned int i2c_debug ;
static int em2800_i2c_send_bytes(struct em28xx *dev , u8 addr , u8 *buf , u16 len )
{
  unsigned long timeout ;
  unsigned long tmp ;
  int ret ;
  u8 b2[6U] ;
  long tmp___0 ;
  {
  {
  tmp = msecs_to_jiffies(36U);
  timeout = (unsigned long )jiffies + tmp;
  }
  if ((unsigned int )len - 1U > 3U) {
    return (-95);
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((unsigned int )len - 1U > 3U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/em28xx/em28xx-i2c.c"),
                         "i" (59), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  b2[5] = (unsigned int )((u8 )len) + 127U;
  b2[4] = addr;
  b2[3] = *buf;
  if ((unsigned int )len > 1U) {
    b2[2] = *(buf + 1UL);
  } else {
  }
  if ((unsigned int )len > 2U) {
    b2[1] = *(buf + 2UL);
  } else {
  }
  if ((unsigned int )len > 3U) {
    b2[0] = *(buf + 3UL);
  } else {
  }
  {
  ret = (*(dev->em28xx_write_regs))(dev, (int )(4U - (unsigned int )len), (char *)(& b2) + (unsigned long )(4 - (int )len),
                                    (int )len + 2);
  }
  if (ret != (int )len + 2) {
    {
    printk("\f%s: failed to trigger write to i2c address 0x%x (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    }
    return (ret < 0 ? ret : -5);
  } else {
  }
  goto ldv_36106;
  ldv_36105:
  {
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  }
  if (ret == (int )len + 127) {
    return ((int )len);
  } else {
  }
  if (ret == (int )len + 147) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: R05 returned 0x%02x: I2C timeout", (char *)(& dev->name), ret);
      }
    } else {
    }
    return (-6);
  } else {
  }
  if (ret < 0) {
    {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    }
    return (ret);
  } else {
  }
  {
  msleep(5U);
  }
  ldv_36106: ;
  if ((long )((unsigned long )jiffies - timeout) < 0L) {
    goto ldv_36105;
  } else {
  }
  if (i2c_debug != 0U) {
    {
    printk("\f%s: write to i2c device at 0x%x timed out\n", (char *)(& dev->name),
           (int )addr);
    }
  } else {
  }
  return (-110);
}
}
static int em2800_i2c_recv_bytes(struct em28xx *dev , u8 addr , u8 *buf , u16 len )
{
  unsigned long timeout ;
  unsigned long tmp ;
  u8 buf2[4U] ;
  int ret ;
  int i ;
  {
  {
  tmp = msecs_to_jiffies(36U);
  timeout = (unsigned long )jiffies + tmp;
  }
  if ((unsigned int )len - 1U > 3U) {
    return (-95);
  } else {
  }
  {
  buf2[1] = (unsigned int )((u8 )len) + 131U;
  buf2[0] = addr;
  ret = (*(dev->em28xx_write_regs))(dev, 4, (char *)(& buf2), 2);
  }
  if (ret != 2) {
    {
    printk("\f%s: failed to trigger read from i2c address 0x%x (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    }
    return (ret < 0 ? ret : -5);
  } else {
  }
  goto ldv_36126;
  ldv_36125:
  {
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  }
  if (ret == (int )len + 131) {
    goto ldv_36124;
  } else {
  }
  if (ret == (int )len + 147) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: R05 returned 0x%02x: I2C timeout", (char *)(& dev->name), ret);
      }
    } else {
    }
    return (-6);
  } else {
  }
  if (ret < 0) {
    {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    }
    return (ret);
  } else {
  }
  {
  msleep(5U);
  }
  ldv_36126: ;
  if ((long )((unsigned long )jiffies - timeout) < 0L) {
    goto ldv_36125;
  } else {
  }
  ldv_36124: ;
  if (ret != (int )len + 131) {
    if (i2c_debug != 0U) {
      {
      printk("\f%s: read from i2c device at 0x%x timed out\n", (char *)(& dev->name),
             (int )addr);
      }
    } else {
    }
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, (int )(4U - (unsigned int )len),
                                          (char *)(& buf2), (int )len);
  }
  if (ret != (int )len) {
    {
    printk("\f%s: reading from i2c device at 0x%x failed: couldn\'t get the received message from the bridge (error=%i)\n",
           (char *)(& dev->name), (int )addr, ret);
    }
    return (ret < 0 ? ret : -5);
  } else {
  }
  i = 0;
  goto ldv_36128;
  ldv_36127:
  *(buf + (unsigned long )i) = buf2[((int )len + -1) - i];
  i = i + 1;
  ldv_36128: ;
  if (i < (int )len) {
    goto ldv_36127;
  } else {
  }
  return (ret);
}
}
static int em2800_i2c_check_for_device(struct em28xx *dev , u8 addr )
{
  u8 buf ;
  int ret ;
  {
  {
  ret = em2800_i2c_recv_bytes(dev, (int )addr, & buf, 1);
  }
  if (ret == 1) {
    return (0);
  } else {
  }
  return (ret < 0 ? ret : -5);
}
}
static int em28xx_i2c_send_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len ,
                                 int stop )
{
  unsigned long timeout ;
  unsigned long tmp ;
  int ret ;
  {
  {
  tmp = msecs_to_jiffies(36U);
  timeout = (unsigned long )jiffies + tmp;
  }
  if ((unsigned int )len - 1U > 63U) {
    return (-95);
  } else {
  }
  {
  ret = (*(dev->em28xx_write_regs_req))(dev, stop != 0 ? 2 : 3, (int )addr, (char *)buf,
                                        (int )len);
  }
  if (ret != (int )len) {
    if (ret < 0) {
      {
      printk("\f%s: writing to i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
             (int )addr, ret);
      }
      return (ret);
    } else {
      {
      printk("\f%s: %i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
             (char *)(& dev->name), (int )len, (int )addr, ret);
      }
      return (-5);
    }
  } else {
  }
  goto ldv_36152;
  ldv_36151:
  {
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  }
  if (ret == 0) {
    return ((int )len);
  } else {
  }
  if (ret == 16) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: I2C transfer timeout on writing to addr 0x%02x", (char *)(& dev->name),
             (int )addr);
      }
    } else {
    }
    return (-6);
  } else {
  }
  if (ret < 0) {
    {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    }
    return (ret);
  } else {
  }
  {
  msleep(5U);
  }
  ldv_36152: ;
  if ((long )((unsigned long )jiffies - timeout) < 0L) {
    goto ldv_36151;
  } else {
  }
  if (i2c_debug != 0U) {
    {
    printk("\f%s: write to i2c device at 0x%x timed out (status=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    }
  } else {
  }
  return (-110);
}
}
static int em28xx_i2c_recv_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len - 1U > 63U) {
    return (-95);
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 2, (int )addr, (char *)buf, (int )len);
  }
  if (ret < 0) {
    {
    printk("\f%s: reading from i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    }
    return (ret);
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  }
  if (ret == 0) {
    return ((int )len);
  } else {
  }
  if (ret < 0) {
    {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    }
    return (ret);
  } else {
  }
  if (ret == 16) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: I2C transfer timeout on writing to addr 0x%02x", (char *)(& dev->name),
             (int )addr);
      }
    } else {
    }
    return (-6);
  } else {
  }
  {
  printk("\f%s: unknown i2c error (status=%i)\n", (char *)(& dev->name), ret);
  }
  return (-110);
}
}
static int em28xx_i2c_check_for_device(struct em28xx *dev , u16 addr )
{
  int ret ;
  u8 buf ;
  {
  {
  ret = em28xx_i2c_recv_bytes(dev, (int )addr, & buf, 1);
  }
  if (ret == 1) {
    return (0);
  } else {
  }
  return (ret < 0 ? ret : -5);
}
}
static int em25xx_bus_B_send_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len - 1U > 63U) {
    return (-95);
  } else {
  }
  {
  ret = (*(dev->em28xx_write_regs_req))(dev, 6, (int )addr, (char *)buf, (int )len);
  }
  if (ret != (int )len) {
    if (ret < 0) {
      {
      printk("\f%s: writing to i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
             (int )addr, ret);
      }
      return (ret);
    } else {
      {
      printk("\f%s: %i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
             (char *)(& dev->name), (int )len, (int )addr, ret);
      }
      return (-5);
    }
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req))(dev, 8, 0);
  }
  if (ret == 0) {
    return ((int )len);
  } else
  if (ret > 0) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: Bus B R08 returned 0x%02x: I2C timeout", (char *)(& dev->name),
             ret);
      }
    } else {
    }
    return (-6);
  } else {
  }
  return (ret);
}
}
static int em25xx_bus_B_recv_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len - 1U > 63U) {
    return (-95);
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 6, (int )addr, (char *)buf, (int )len);
  }
  if (ret < 0) {
    {
    printk("\f%s: reading from i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    }
    return (ret);
  } else {
  }
  {
  ret = (*(dev->em28xx_read_reg_req))(dev, 8, 0);
  }
  if (ret == 0) {
    return ((int )len);
  } else
  if (ret > 0) {
    if (i2c_debug == 1U) {
      {
      printk("\f%s: Bus B R08 returned 0x%02x: I2C timeout", (char *)(& dev->name),
             ret);
      }
    } else {
    }
    return (-6);
  } else {
  }
  return (ret);
}
}
static int em25xx_bus_B_check_for_device(struct em28xx *dev , u16 addr )
{
  u8 buf ;
  int ret ;
  {
  {
  ret = em25xx_bus_B_recv_bytes(dev, (int )addr, & buf, 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
__inline static int i2c_check_for_device(struct em28xx_i2c_bus *i2c_bus , u16 addr )
{
  struct em28xx *dev ;
  int rc ;
  {
  dev = i2c_bus->dev;
  rc = -95;
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    {
    rc = em28xx_i2c_check_for_device(dev, (int )addr);
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    {
    rc = em2800_i2c_check_for_device(dev, (int )((u8 )addr));
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    {
    rc = em25xx_bus_B_check_for_device(dev, (int )addr);
    }
  } else {
  }
  return (rc);
}
}
__inline static int i2c_recv_bytes(struct em28xx_i2c_bus *i2c_bus , struct i2c_msg msg )
{
  struct em28xx *dev ;
  u16 addr ;
  int rc ;
  {
  dev = i2c_bus->dev;
  addr = (int )msg.addr << 1U;
  rc = -95;
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    {
    rc = em28xx_i2c_recv_bytes(dev, (int )addr, msg.buf, (int )msg.len);
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    {
    rc = em2800_i2c_recv_bytes(dev, (int )((u8 )addr), msg.buf, (int )msg.len);
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    {
    rc = em25xx_bus_B_recv_bytes(dev, (int )addr, msg.buf, (int )msg.len);
    }
  } else {
  }
  return (rc);
}
}
__inline static int i2c_send_bytes(struct em28xx_i2c_bus *i2c_bus , struct i2c_msg msg ,
                                   int stop )
{
  struct em28xx *dev ;
  u16 addr ;
  int rc ;
  {
  dev = i2c_bus->dev;
  addr = (int )msg.addr << 1U;
  rc = -95;
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    {
    rc = em28xx_i2c_send_bytes(dev, (int )addr, msg.buf, (int )msg.len, stop);
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    {
    rc = em2800_i2c_send_bytes(dev, (int )((u8 )addr), msg.buf, (int )msg.len);
    }
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    {
    rc = em25xx_bus_B_send_bytes(dev, (int )addr, msg.buf, (int )msg.len);
    }
  } else {
  }
  return (rc);
}
}
static int em28xx_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  unsigned int bus ;
  int addr ;
  int rc ;
  int i ;
  u8 reg ;
  {
  {
  i2c_bus = (struct em28xx_i2c_bus *)i2c_adap->algo_data;
  dev = i2c_bus->dev;
  bus = i2c_bus->bus;
  rc = rt_mutex_trylock(& dev->i2c_bus_lock);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (bus != dev->cur_i2c_bus && (unsigned int )i2c_bus->algo_type == 0U) {
    if (bus == 1U) {
      reg = 4U;
    } else {
      reg = 0U;
    }
    {
    em28xx_write_reg_bits(dev, 6, (int )reg, 4);
    dev->cur_i2c_bus = bus;
    }
  } else {
  }
  if (num <= 0) {
    {
    rt_mutex_unlock(& dev->i2c_bus_lock);
    }
    return (0);
  } else {
  }
  i = 0;
  goto ldv_36222;
  ldv_36221:
  addr = (int )(msgs + (unsigned long )i)->addr << 1;
  if (i2c_debug > 1U) {
    {
    printk("\017%s at %s: %s %s addr=%02x len=%d:", (char *)(& dev->name), "em28xx_i2c_xfer",
           (int )(msgs + (unsigned long )i)->flags & 1 ? (char *)"read" : (char *)"write",
           i == num + -1 ? (char *)"stop" : (char *)"nonstop", addr, (int )(msgs + (unsigned long )i)->len);
    }
  } else {
  }
  if ((unsigned int )(msgs + (unsigned long )i)->len == 0U) {
    {
    rc = i2c_check_for_device(i2c_bus, (int )((u16 )addr));
    }
    if (rc < 0) {
      if (rc == -6) {
        if (i2c_debug > 1U) {
          {
          printk(" no device\n");
          }
        } else {
        }
        rc = -19;
      } else
      if (i2c_debug > 1U) {
        {
        printk(" ERROR: %i\n", rc);
        }
      } else {
      }
      {
      rt_mutex_unlock(& dev->i2c_bus_lock);
      }
      return (rc);
    } else {
    }
  } else
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    {
    rc = i2c_recv_bytes(i2c_bus, *(msgs + (unsigned long )i));
    }
    if (i2c_debug > 1U && rc >= 0) {
      {
      printk(" %*ph", (int )(msgs + (unsigned long )i)->len, (msgs + (unsigned long )i)->buf);
      }
    } else {
    }
  } else {
    if (i2c_debug > 1U) {
      {
      printk(" %*ph", (int )(msgs + (unsigned long )i)->len, (msgs + (unsigned long )i)->buf);
      }
    } else {
    }
    {
    rc = i2c_send_bytes(i2c_bus, *(msgs + (unsigned long )i), i == num + -1);
    }
  }
  if (rc < 0) {
    if (i2c_debug > 1U) {
      {
      printk(" ERROR: %i\n", rc);
      }
    } else {
    }
    {
    rt_mutex_unlock(& dev->i2c_bus_lock);
    }
    return (rc);
  } else {
  }
  if (i2c_debug > 1U) {
    {
    printk("\n");
    }
  } else {
  }
  i = i + 1;
  ldv_36222: ;
  if (i < num) {
    goto ldv_36221;
  } else {
  }
  {
  rt_mutex_unlock(& dev->i2c_bus_lock);
  }
  return (num);
}
}
__inline static unsigned long em28xx_hash_mem(char *buf , int length , int bits )
{
  unsigned long hash ;
  unsigned long l ;
  int len ;
  unsigned char c ;
  char *tmp ;
  {
  hash = 0UL;
  l = 0UL;
  len = 0;
  ldv_36233: ;
  if (len == length) {
    c = (unsigned char )len;
    len = -1;
  } else {
    tmp = buf;
    buf = buf + 1;
    c = (unsigned char )*tmp;
  }
  l = (l << 8) | (unsigned long )c;
  len = len + 1;
  if ((len & 3) == 0) {
    hash = (hash ^ l) * 2654404609UL;
  } else {
  }
  if (len != 0) {
    goto ldv_36233;
  } else {
  }
  return ((hash >> (32 - bits)) & 4294967295UL);
}
}
static int em28xx_i2c_read_block(struct em28xx *dev , unsigned int bus , u16 addr ,
                                 bool addr_w16 , u16 len , u8 *data )
{
  int remain ;
  int rsize ;
  int rsize_max ;
  int ret ;
  u8 buf[2U] ;
  {
  remain = (int )len;
  if ((int )addr + remain > (int )addr_w16 * 65280 + 256) {
    return (-22);
  } else {
  }
  {
  buf[0] = (u8 )((int )addr >> 8);
  buf[1] = (u8 )addr;
  ret = i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char const *)(& buf) + (unsigned long )(! addr_w16), (int )addr_w16 + 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    rsize_max = 4;
  } else {
    rsize_max = 64;
  }
  goto ldv_36249;
  ldv_36248: ;
  if (remain > rsize_max) {
    rsize = rsize_max;
  } else {
    rsize = remain;
  }
  {
  ret = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char *)data, rsize);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  remain = remain - rsize;
  data = data + (unsigned long )rsize;
  ldv_36249: ;
  if (remain > 0) {
    goto ldv_36248;
  } else {
  }
  return ((int )len);
}
}
static int em28xx_i2c_eeprom(struct em28xx *dev , unsigned int bus , u8 **eedata ,
                             u16 *eedata_len )
{
  u16 len ;
  int err ;
  struct em28xx_eeprom *dev_config ;
  u8 buf ;
  u8 *data ;
  void *tmp ;
  u16 mc_start ;
  u16 hwconf_offset ;
  {
  {
  len = 256U;
  *eedata = (u8 *)0U;
  *eedata_len = 0U;
  dev->i2c_client[bus].addr = 80U;
  err = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char *)(& buf), 0);
  }
  if (err < 0) {
    {
    printk("\016%s: board has no eeprom\n", (char *)(& dev->name));
    }
    return (-19);
  } else {
  }
  {
  tmp = kzalloc((size_t )len, 208U);
  data = (u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  err = em28xx_i2c_read_block(dev, bus, 0, (unsigned int )*((unsigned char *)dev + 7800UL) != 0U,
                              (int )len, data);
  }
  if (err != 256) {
    {
    printk("\v%s: failed to read eeprom (err=%d)\n", (char *)(& dev->name), err);
    }
    goto error;
  } else {
  }
  if (i2c_debug != 0U) {
    {
    print_hex_dump("\016", "eeprom ", 2, 16, 1, (void const *)data, (size_t )len,
                   1);
    }
    if ((unsigned int )*((unsigned char *)dev + 7800UL) != 0U) {
      {
      printk("\016%s: eeprom %06x: ... (skipped)\n", (char *)(& dev->name), 256);
      }
    } else {
    }
  } else {
  }
  if (((unsigned int )*((unsigned char *)dev + 7800UL) != 0U && (unsigned int )*data == 38U) && (unsigned int )*(data + 3UL) == 0U) {
    {
    dev->hash = em28xx_hash_mem((char *)data, (int )len, 32);
    mc_start = (unsigned int )((int )((u16 )*(data + 1UL)) << 8U) + 4U;
    printk("\016%s: EEPROM ID = %02x %02x %02x %02x, EEPROM hash = 0x%08lx\n", (char *)(& dev->name),
           (int )*data, (int )*(data + 1UL), (int )*(data + 2UL), (int )*(data + 3UL),
           dev->hash);
    printk("\016%s: EEPROM info:\n", (char *)(& dev->name));
    printk("\016%s: \tmicrocode start address = 0x%04x, boot configuration = 0x%02x\n",
           (char *)(& dev->name), (int )mc_start, (int )*(data + 2UL));
    err = em28xx_i2c_read_block(dev, bus, (int )((unsigned int )mc_start + 46U), 1,
                                2, data);
    }
    if (err != 2) {
      {
      printk("\v%s: failed to read hardware configuration data from eeprom (err=%d)\n",
             (char *)(& dev->name), err);
      }
      goto error;
    } else {
    }
    {
    hwconf_offset = ((int )mc_start + (int )((u16 )*data)) + ((int )((u16 )*(data + 1UL)) << 8U);
    err = em28xx_i2c_read_block(dev, bus, (int )hwconf_offset, 1, (int )len, data);
    }
    if (err != 256) {
      {
      printk("\v%s: failed to read hardware configuration data from eeprom (err=%d)\n",
             (char *)(& dev->name), err);
      }
      goto error;
    } else {
    }
    if ((((unsigned int )*data != 26U || (unsigned int )*(data + 1UL) != 235U) || (unsigned int )*(data + 2UL) != 103U) || (unsigned int )*(data + 3UL) != 149U) {
      {
      printk("\016%s: \tno hardware configuration dataset found in eeprom\n", (char *)(& dev->name));
      kfree((void const *)data);
      }
      return (0);
    } else {
    }
  } else
  if (((((unsigned int )*((unsigned char *)dev + 7800UL) == 0U && (unsigned int )*data == 26U) && (unsigned int )*(data + 1UL) == 235U) && (unsigned int )*(data + 2UL) == 103U) && (unsigned int )*(data + 3UL) == 149U) {
    {
    dev->hash = em28xx_hash_mem((char *)data, (int )len, 32);
    printk("\016%s: EEPROM ID = %02x %02x %02x %02x, EEPROM hash = 0x%08lx\n", (char *)(& dev->name),
           (int )*data, (int )*(data + 1UL), (int )*(data + 2UL), (int )*(data + 3UL),
           dev->hash);
    printk("\016%s: EEPROM info:\n", (char *)(& dev->name));
    }
  } else {
    {
    printk("\016%s: unknown eeprom format or eeprom corrupted !\n", (char *)(& dev->name));
    err = -19;
    }
    goto error;
  }
  *eedata = data;
  *eedata_len = 256U;
  dev_config = (struct em28xx_eeprom *)*eedata;
  {
  if ((((int )dev_config->chip_conf >> 4) & 3) == 0) {
    goto case_0;
  } else {
  }
  if ((((int )dev_config->chip_conf >> 4) & 3) == 1) {
    goto case_1;
  } else {
  }
  if ((((int )dev_config->chip_conf >> 4) & 3) == 2) {
    goto case_2;
  } else {
  }
  if ((((int )dev_config->chip_conf >> 4) & 3) == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  {
  printk("\016%s: \tNo audio on board.\n", (char *)(& dev->name));
  }
  goto ldv_36266;
  case_1:
  {
  printk("\016%s: \tAC97 audio (5 sample rates)\n", (char *)(& dev->name));
  }
  goto ldv_36266;
  case_2: ;
  if ((unsigned int )dev->chip_id <= 33U) {
    {
    printk("\016%s: \tI2S audio, sample rate=32k\n", (char *)(& dev->name));
    }
  } else {
    {
    printk("\016%s: \tI2S audio, 3 sample rates\n", (char *)(& dev->name));
    }
  }
  goto ldv_36266;
  case_3: ;
  if ((unsigned int )dev->chip_id <= 33U) {
    {
    printk("\016%s: \tI2S audio, 3 sample rates\n", (char *)(& dev->name));
    }
  } else {
    {
    printk("\016%s: \tI2S audio, 5 sample rates\n", (char *)(& dev->name));
    }
  }
  goto ldv_36266;
  switch_break: ;
  }
  ldv_36266: ;
  if (((int )dev_config->chip_conf & 8) != 0) {
    {
    printk("\016%s: \tUSB Remote wakeup capable\n", (char *)(& dev->name));
    }
  } else {
  }
  if (((int )dev_config->chip_conf & 4) != 0) {
    {
    printk("\016%s: \tUSB Self power capable\n", (char *)(& dev->name));
    }
  } else {
  }
  {
  if (((int )dev_config->chip_conf & 3) == 0) {
    goto case_0___0;
  } else {
  }
  if (((int )dev_config->chip_conf & 3) == 1) {
    goto case_1___0;
  } else {
  }
  if (((int )dev_config->chip_conf & 3) == 2) {
    goto case_2___0;
  } else {
  }
  if (((int )dev_config->chip_conf & 3) == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_break___0;
  case_0___0:
  {
  printk("\016%s: \t500mA max power\n", (char *)(& dev->name));
  }
  goto ldv_36271;
  case_1___0:
  {
  printk("\016%s: \t400mA max power\n", (char *)(& dev->name));
  }
  goto ldv_36271;
  case_2___0:
  {
  printk("\016%s: \t300mA max power\n", (char *)(& dev->name));
  }
  goto ldv_36271;
  case_3___0:
  {
  printk("\016%s: \t200mA max power\n", (char *)(& dev->name));
  }
  goto ldv_36271;
  switch_break___0: ;
  }
  ldv_36271:
  {
  printk("\016%s: \tTable at offset 0x%02x, strings=0x%04x, 0x%04x, 0x%04x\n", (char *)(& dev->name),
         (int )dev_config->string_idx_table, (int )dev_config->string1, (int )dev_config->string2,
         (int )dev_config->string3);
  }
  return (0);
  error:
  {
  kfree((void const *)data);
  }
  return (err);
}
}
static u32 functionality(struct i2c_adapter *i2c_adap )
{
  struct em28xx_i2c_bus *i2c_bus ;
  int __ret_warn_on ;
  long tmp ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)i2c_adap->algo_data;
  if ((unsigned int )i2c_bus->algo_type == 0U || (unsigned int )i2c_bus->algo_type == 2U) {
    return (251592713U);
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    return (218038281U);
  } else {
  }
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("drivers/media/usb/em28xx/em28xx-i2c.c", 831, "Unknown i2c bus algorithm.\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (0U);
}
}
static struct i2c_algorithm em28xx_algo = {& em28xx_i2c_xfer, 0, & functionality};
static struct i2c_adapter em28xx_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& em28xx_algo), 0, {{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {0},
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0,
                                                                              0},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0,
                                                                    0, 0UL}}, {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0,
                                                                               0UL,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0},
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                 0, 0}, 0U, 0U, 0U, 0U, 0U}, 0, 0,
           {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0,
                                               (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                               {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0}}},
                                               0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                       0, 0, 0UL,
                                                                       0, 0, 0, {(char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0},
                                                                       {0, {0, 0},
                                                                        0, 0, 0UL}},
                                               0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                       0, 0, 0UL}},
                                               {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                {0, 0}}, {0}, {0}, 0U, 0U, 0U, 0U,
                                               0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0,
                                               0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0, 0,
           0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0},
           {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'e', 'm', '2',
                                                                    '8', 'x', 'x',
                                                                    '\000'}, {0U,
                                                                              {{{{{{0U}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}}},
    {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
    {0, 0}, 0};
static struct i2c_client em28xx_client_template = {(unsigned short)0, (unsigned short)0, {'e', 'm', '2', '8', 'x', 'x', ' ', 'i',
                                           'n', 't', 'e', 'r', 'n', 'a', 'l', '\000'},
    0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0,
                                                                 0UL}}, {{0, 0}, 0UL,
                                                                         0, 0, 0UL,
                                                                         0, 0, 0,
                                                                         {(char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0},
                                                                         {0, {0, 0},
                                                                          0, 0, 0UL}},
                                              0, 0}, 0U, 0U, 0U, 0U, 0U}, 0, 0, {{0},
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
        0, 0, 0, {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                          0U, 0U,
                                                                          0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {0},
                  {0}, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL,
                  0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0,
        {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
        0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {0, 0}};
static char *i2c_devs[128U] =
  { 0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, (char *)"remote IR sensor",
        0, 0, 0, 0,
        0, (char *)"saa7113h", 0, 0,
        0, (char *)"drxk", 0, 0,
        0, 0, 0, 0,
        (char *)"remote IR sensor", 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"msp34xx", 0, 0, (char *)"tda9887",
        (char *)"msp34xx", 0, 0, (char *)"remote IR sensor",
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"eeprom", 0, 0, 0,
        0, 0, 0, 0,
        (char *)"tda9874", 0, 0, 0,
        (char *)"tvp5150a", (char *)"webcam sensor or tvp5150a", 0, 0,
        (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)"};
void em28xx_do_i2c_scan(struct em28xx *dev , unsigned int bus )
{
  u8 i2c_devicelist[128U] ;
  unsigned char buf ;
  int i ;
  int rc ;
  {
  {
  memset((void *)(& i2c_devicelist), 0, 128UL);
  i = 0;
  }
  goto ldv_36299;
  ldv_36298:
  {
  dev->i2c_client[bus].addr = (unsigned short )i;
  rc = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                       (char *)(& buf), 0);
  }
  if (rc < 0) {
    goto ldv_36297;
  } else {
  }
  {
  i2c_devicelist[i] = (u8 )i;
  printk("\016%s: found i2c device @ 0x%x on bus %d [%s]\n", (char *)(& dev->name),
         i << 1, bus, (unsigned long )i2c_devs[i] != (unsigned long )((char *)0) ? i2c_devs[i] : (char *)"???");
  }
  ldv_36297:
  i = i + 1;
  ldv_36299: ;
  if ((unsigned int )i <= 127U) {
    goto ldv_36298;
  } else {
  }
  if (bus == dev->def_i2c_bus) {
    {
    dev->i2c_hash = em28xx_hash_mem((char *)(& i2c_devicelist), 128, 32);
    }
  } else {
  }
  return;
}
}
int em28xx_i2c_register(struct em28xx *dev , unsigned int bus , enum em28xx_i2c_algo_type algo_type )
{
  int retval ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs == (unsigned long )((int (*)(struct em28xx * ,
                                                                                             u16 ,
                                                                                             char * ,
                                                                                             int ))0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/em28xx/em28xx-i2c.c"),
                         "i" (911), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                 u16 ))0),
                               0L);
    }
    if (tmp___0 != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/em28xx/em28xx-i2c.c"),
                           "i" (911), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
  }
  {
  tmp___1 = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ,
                                                                                                     char * ,
                                                                                                     int ))0),
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/em28xx/em28xx-i2c.c"),
                         "i" (912), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
    {
    tmp___2 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ))0),
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/em28xx/em28xx-i2c.c"),
                           "i" (912), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
  }
  if (bus > 1U) {
    return (-19);
  } else {
  }
  {
  dev->i2c_adap[bus] = em28xx_adap_template;
  dev->i2c_adap[bus].dev.parent = & (dev->udev)->dev;
  strcpy((char *)(& dev->i2c_adap[bus].name), (char const *)(& dev->name));
  dev->i2c_bus[bus].bus = bus;
  dev->i2c_bus[bus].algo_type = algo_type;
  dev->i2c_bus[bus].dev = dev;
  dev->i2c_adap[bus].algo_data = (void *)(& dev->i2c_bus) + (unsigned long )bus;
  i2c_set_adapdata((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus,
                   (void *)(& dev->v4l2_dev));
  retval = i2c_add_adapter((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus);
  }
  if (retval < 0) {
    {
    printk("\v%s: %s: i2c_add_adapter failed! retval [%d]\n", (char *)(& dev->name),
           "em28xx_i2c_register", retval);
    }
    return (retval);
  } else {
  }
  dev->i2c_client[bus] = em28xx_client_template;
  dev->i2c_client[bus].adapter = (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus;
  if (bus == 0U) {
    {
    retval = em28xx_i2c_eeprom(dev, bus, & dev->eedata, & dev->eedata_len);
    }
    if (retval < 0 && retval != -19) {
      {
      printk("\v%s: %s: em28xx_i2_eeprom failed! retval [%d]\n", (char *)(& dev->name),
             "em28xx_i2c_register", retval);
      }
      return (retval);
    } else {
    }
  } else {
  }
  if (i2c_scan != 0U) {
    {
    em28xx_do_i2c_scan(dev, bus);
    }
  } else {
  }
  return (0);
}
}
int em28xx_i2c_unregister(struct em28xx *dev , unsigned int bus )
{
  {
  if (bus > 1U) {
    return (-19);
  } else {
  }
  {
  i2c_del_adapter((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus);
  }
  return (0);
}
}
void ldv_dummy_resourceless_instance_callback_0_3(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct i2c_adapter * ,
                                                              struct i2c_msg * , int ) ,
                                                  struct i2c_adapter *arg1 , struct i2c_msg *arg2 ,
                                                  int arg3 ) ;
void ldv_struct_i2c_algorithm_dummy_resourceless_instance_0(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
void ldv_dummy_resourceless_instance_callback_0_3(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  functionality(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct i2c_adapter * ,
                                                              struct i2c_msg * , int ) ,
                                                  struct i2c_adapter *arg1 , struct i2c_msg *arg2 ,
                                                  int arg3 )
{
  {
  {
  em28xx_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_struct_i2c_algorithm_dummy_resourceless_instance_0(void *arg0 )
{
  unsigned int (*ldv_0_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_0_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  struct i2c_adapter *ldv_0_container_struct_i2c_adapter ;
  struct i2c_msg *ldv_0_container_struct_i2c_msg_ptr ;
  int ldv_0_ldv_param_7_2_default ;
  int tmp ;
  {
  goto ldv_call_0;
  return;
  ldv_call_0:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_master_xfer, ldv_0_container_struct_i2c_adapter,
                                               ldv_0_container_struct_i2c_msg_ptr,
                                               ldv_0_ldv_param_7_2_default);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_functionality, ldv_0_container_struct_i2c_adapter);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
static int ldv_dev_set_drvdata_17(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
void *ldv_dev_get_drvdata(struct device const *dev ) ;
static void ldv_mutex_lock_29___0(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
void ldv_assume(int expression ) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
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
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField21.rlock);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_30___0(struct mutex *ldv_func_arg1 ) ;
static void *ldv_dev_get_drvdata_12(struct device const *dev ) ;
static int ldv_dev_set_drvdata_13(struct device *dev , void *data ) ;
extern void __rt_mutex_init(struct rt_mutex * , char const * ) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_12((struct device const *)(& intf->dev));
  }
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  {
  ldv_dev_set_drvdata_13(& intf->dev, data);
  }
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff78UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_31(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_32(struct usb_driver *ldv_func_arg1 ) ;
extern int __request_module(bool , char const * , ...) ;
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
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
struct usb_device_id em28xx_id_table[84U] ;
int em28xx_tuner_callback(void *ptr , int component , int command , int arg ) ;
void em28xx_setup_xc3028(struct em28xx *dev , struct xc2028_ctrl *ctl ) ;
void em28xx_release_resources(struct em28xx *dev ) ;
int em28xx_detect_sensor(struct em28xx *dev ) ;
static int tuner = -1;
static unsigned int disable_ir ;
static unsigned int disable_usb_speed_check ;
static unsigned int card[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static int usb_xfer_mode = -1;
unsigned long em28xx_devused[1U] ;
static void em28xx_pre_card_setup(struct em28xx *dev ) ;
static struct em28xx_reg_seq default_analog[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_digital[2U] = { {8, 110U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_analog[3U] = { {8, 45U, 239U, 10},
        {5, 255U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_digital[4U] = { {8, 46U, 239U, 10},
        {4, 4U, 15U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900R2_digital[3U] = { {8, 46U, 239U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2880_msi_digivox_ad_analog[2U] = { {8, 105U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_digital[6U] = { {8, 255U, 255U, 10},
        {8, 254U, 255U, 10},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 10},
        {8, 126U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_tuner_gpio[5U] = { {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_analog[2U] = { {8, 121U, 255U, 60},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_digital[4U] = { {8, 122U, 255U, 1},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_a340_digital[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_analog[2U] = { {8, 253U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_digital[4U] = { {8, 110U, 239U, 10},
        {4, 4U, 255U, 100},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq reddo_dvb_c_usb_box[8U] =
  { {8, 254U, 255U, 10},
        {8, 222U, 255U, 10},
        {8, 254U, 255U, 10},
        {8, 255U, 255U, 10},
        {8, 127U, 255U, 10},
        {8, 111U, 255U, 10},
        {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_tuner_gpio[4U] = { {8, 16U, 16U, 10},
        {8, 0U, 16U, 10},
        {8, 16U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_tv_gpio[2U] = { {8, 5U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_svid_gpio[2U] = { {8, 4U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_mute_gpio[2U] = { {8, 6U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_mute_gpio[2U] = { {8, 255U, 127U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_unmute_gpio[2U] = { {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq silvercrest_reg_seq[3U] = { {8, 255U, 255U, 10},
        {8, 1U, 247U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq vc211a_enable[4U] = { {8, 255U, 7U, 10},
        {8, 255U, 15U, 10},
        {8, 255U, 11U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq dikom_dk300_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_digital[2U] = { {128, 112U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_reset[4U] = { {128, 240U, 255U, 10},
        {128, 176U, 255U, 10},
        {128, 240U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_290e[4U] = { {128, 0U, 255U, 80},
        {128, 64U, 255U, 80},
        {128, 192U, 255U, 80},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_460e[6U] = { {128, 1U, 255U, 50},
        {13, 255U, 255U, 50},
        {128, 65U, 255U, 50},
        {13, 66U, 255U, 50},
        {128, 97U, 255U, 50},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq c3tech_digital_duo_digital[9U] =
  { {128, 255U, 255U, 10},
        {128, 253U, 255U, 10},
        {128, 249U, 255U, 35},
        {128, 253U, 255U, 10},
        {128, 255U, 255U, 10},
        {128, 254U, 255U, 10},
        {128, 190U, 255U, 10},
        {128, 254U, 255U, 20},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_461e[8U] =
  { {128, 127U, 255U, 0},
        {13, 255U, 255U, 0},
        {128, 63U, 255U, 100},
        {128, 127U, 255U, 200},
        {13, 66U, 255U, 0},
        {128, 235U, 255U, 0},
        {95, 132U, 132U, 0},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq maxmedia_ub425_tc[4U] = { {128, 131U, 255U, 100},
        {128, 195U, 255U, 100},
        {128, 67U, 255U, 0},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_510e[4U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_520e[5U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {128, 212U, 255U, 0},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq speedlink_vad_laplace_reg_seq[3U] = { {8, 247U, 255U, 10},
        {128, 255U, 178U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_button std_snapshot_button[2U] = { {0, 12U, 12U, 32U, 0},
        {4294967295L, 0U, 0U, 0U, 0}};
static struct em28xx_button speedlink_vad_laplace_buttons[3U] = { {0, 133U, (unsigned char)0, 128U, 1},
        {1, 132U, (unsigned char)0, 8U, 1},
        {4294967295L, 0U, 0U, 0U, 0}};
static struct em28xx_led speedlink_vad_laplace_leds[3U] = { {0, 128U, 1U, 1},
        {1, 128U, 64U, 1},
        {4294967295L, 0U, 0U, 0}};
struct em28xx_board em28xx_boards[93U] =
  { {(char *)"Unknown EM2800 video grabber", 0, 4, 0, 0U, 1U, 0, 0, 0, 0, 1U, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0, 0, 0},
        {(char *)"Unknown EM2750/28xx video grabber",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 1U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Terratec Cinergy 250 USB", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 0U, 0U, 0U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Pinnacle PCTV USB 2",
      0, 37, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Hauppauge WinTV USB 2", 0, 43, 0, 0U, 97U, 0, 0, 0, 0, 0U, 1U, 0U,
      0U, 0U, 0U, 0U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, 0}, {5, 2U, 2236960, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"MSI VOX USB 2.0",
      0, 37, 0, 0U, 97U, 0, 0, 0, 0, 0U, 0U, 0U, 1U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 4U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Cinergy 200 USB", 0, 66, 0, 0U, 1U, 0, 0, 0, 0, 1U, 0U, 0U,
      0U, 0U, 0U, 0U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Leadtek Winfast USB II",
      0, 37, 0, 0U, 1U, 0, 0, 0, 0, 1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Kworld USB2800", 0, 42, 0, 0U, 1U, 0, 0, 0, 0, 1U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Pinnacle Dazzle DVC 90/100/101/107 / Kaiser Baas Video to DVD maker / Kworld DVD Maker 2 / Plextor ConvertX PX-AV100U",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Hauppauge WinTV HVR 900", 0, 71, 0, 0U, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge", 0, 0},
        {(char *)"Terratec Hybrid XS", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6,
                                                                                 0U,
                                                                                 0,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& default_analog)},
                                                                                {1,
                                                                                 1U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& default_analog)},
                                                                                {5,
                                                                                 2U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& default_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs", 0, 0},
        {(char *)"Kworld PVR TV 2800 RF", 0, 0, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Prodigy XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"SIIG AVTuner-PVR / Pixelview Prolink PlayTV USB 2.0", 0, 59, 0, 0U,
      1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, (struct em28xx_button *)(& std_snapshot_button)},
        {(char *)"V-Gear PocketTV", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 1U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Hauppauge WinTV HVR 950",
      0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge", 0, 0},
        {(char *)"Pinnacle PCTV HD Pro Stick", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"Hauppauge WinTV HVR 900 (R2)", 0, 71, 0, 0U, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge", 0, 0},
        {(char *)"EM2860/SAA711X Reference Design", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{5, 9U, 0, 0, 0}, {1, 0U, 0, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0, 0, (struct em28xx_button *)(& std_snapshot_button)},
        {(char *)"AMD ATI TV Wonder HD 600",
      0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-ati-tv-wonder-hd-600", 0, 0},
        {(char *)"eMPIA Technology, Inc. GrabBeeX+ Video Encoder", 0, 4, 0, 0U, 0U, 0,
      0, 0, 0, 1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"EM2710/EM2750/EM2751 webcam grabber", 0, 4, 0, 0U, 0U, 0, 0, 0, 0,
      0U, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 8U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)}}, {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
      0, 0, 0},
        {(char *)"Huaqi DLCW-130", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 1U,
      1U, 0U, 10U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{1,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"D-Link DUB-T210 TV Tuner", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Gadmei UTV310",
      0, 69, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 1U, 1, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Hercules Smart TV USB 2.0", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Pinnacle PCTV USB 2 (Philips FM1216ME)",
      0, 38, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Leadtek Winfast USB II Deluxe", 0, 38, 0, 0U, 73U, 0, 0, 0, 0, 0U,
      0U, 0U, 0U, 0U, 0U, 1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      88U, 2, 1, {{6, 4U, 6, 0, 0}, {1, 5U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {10, 0U,
                                                                          6, 0, 0},
      0, 0, 0},
        {(char *)"EM2860/TVP5150 Reference Design", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{1, 1U, 1, 0, 0}, {5, 2U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0, 0, 0},
        {(char *)"Videology 20K14XUSB USB2.0",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 1U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{1, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Usbgear VD204v9", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U,
      0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Supercomp USB 2.0 TV", 0, 43, 0, 0U, 97U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 0, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Elgato Video Capture",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Cinergy A Hybrid XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Typhoon DVD Maker", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"NetGMBH Cam", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 1U,
      1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Gadmei UTV330", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U,
      1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Yakumo MovieMixer",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"KWorld PVRTV 300U", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Plextor ConvertX PX-TV100U", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, 0U, 1U,
      0U, 0U, 0U, 0U, 0U, 0U, 71U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Kworld 350 U DVB-T", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Kworld 355 U DVB-T", 0, 4, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Cinergy T XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Cinergy T XS (MT2060)", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U,
      0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Pinnacle PCTV DVB-T", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 1U, 0U, 34U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Compro, VideoMate U3", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"KWorld DVB-T 305U", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"KWorld DVB-T 310U", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"MSI DigiVox A/D", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"MSI DigiVox A/D II", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec Hybrid XS Secam", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 1U, 0U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"DNT DA2 Hybrid", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Pinnacle Hybrid Pro", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Kworld VS-DVB-T 323UR", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6,
                                                                                 0U,
                                                                                 0,
                                                                                 0,
                                                                                 0},
                                                                                {1,
                                                                                 1U,
                                                                                 1,
                                                                                 0,
                                                                                 0},
                                                                                {5,
                                                                                 2U,
                                                                                 1,
                                                                                 0,
                                                                                 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-kworld-315u", 0, 0},
        {(char *)"Terratec Cinnergy Hybrid T USB XS (em2882)", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6,
                                                                                 0U,
                                                                                 0,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                                {1,
                                                                                 1U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                                {5,
                                                                                 2U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs", 0, 0},
        {(char *)"Pinnacle Hybrid Pro (330e)", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"Kworld PlusTV HD Hybrid 330", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, 7U, 76U, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 1408,
                                                                    (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                   {1, 1U, 1, 1408,
                                                                    (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                   {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& kworld_330u_analog)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Compro VideoMate ForYou/Stereo", 0, 37, 0, 0U, 1U, 0, 0, 0, (struct em28xx_reg_seq *)(& compro_mute_gpio),
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      176U, 1, 1, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& compro_unmute_tv_gpio)},
                   {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& compro_unmute_svid_gpio)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {0, 0, 0, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Hauppauge WinTV HVR 850", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge", 0, 0},
        {(char *)"Pixelview PlayTV Box 4 USB 2.0", 0, 59, 0, 0U, 1U, 0, 0, 0, 0, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Gadmei TVR200", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, 0, 0, 0},
        {(char *)"Kaiomy TVnPC U2",
      3, 71, 97, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0,
      0U, 0U, 1U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}}, {10, 0U,
                                                                           1, 0, 0},
      (char *)"rc-kaiomy", 0, 0},
        {(char *)"Easy Cap Capture DC-60", 2, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"IO-DATA GV-MVP/SZ", 0, 43, 0, 0U, 1U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 0, 0, 0}, {5, 2U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Empire dual TV", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"Terratec Grabby", 2, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0,
      {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Terratec AV350", 2, 4, 0, 0U, 0U, 0, 0, 0, (struct em28xx_reg_seq *)(& terratec_av350_mute_gpio),
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{1, 1U, 128, 0, (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)},
             {5, 2U, 128, 0, (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"KWorld ATSC 315U HDTV TV Box", 0, 60, 0, 0U, 1U, (struct em28xx_reg_seq *)(& em2882_kworld_315u_digital),
      0, (struct em28xx_reg_seq *)(& em2882_kworld_315u_tuner_gpio), 0, 0U, 0U, 0U,
      0U, 1U, 0U, 1U, 0U, 7U, 64U, (unsigned char)0, (unsigned short)0, 2, 0, {{0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
                                                                               {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
                                                                               {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
                                                                               {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-kworld-315u", 0, 0},
        {(char *)"Evga inDtube", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& evga_indtube_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6,
                                                                                 0U,
                                                                                 0,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& evga_indtube_analog)},
                                                                                {1,
                                                                                 1U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& evga_indtube_analog)},
                                                                                {5,
                                                                                 2U,
                                                                                 1,
                                                                                 0,
                                                                                 (struct em28xx_reg_seq *)(& evga_indtube_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-evga-indtube", 0, 0},
        {(char *)"Silvercrest Webcam 1.3mpix", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 0U, 1U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)}}, {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
      0, 0, 0},
        {(char *)"Gadmei UTV330+", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, 0U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0,
      {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-gadmei-rm008z",
      0, 0},
        {(char *)"Reddo DVB-C USB TV Box", 0, 4, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& reddo_dvb_c_usb_box),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Actionmaster/LinXcel/Digitus VC211A", 0, 4, 0, 0U, 0U, 0, 0, 0, 0,
      1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, (struct em28xx_reg_seq *)(& vc211a_enable)},
                                {5, 9U, 1, 0, (struct em28xx_reg_seq *)(& vc211a_enable)}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"Dikom DK300", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& dikom_dk300_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 1U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0, 0, 0},
        {(char *)"KWorld PlusTV 340U or UB435-Q (ATSC)", 0, 4, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_a340_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"EM2874 Leadership ISDBT", 0, 4, 0, 1U, 0U, (struct em28xx_reg_seq *)(& leadership_digital),
      0, (struct em28xx_reg_seq *)(& leadership_reset), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      0U, 0U, 2U, 64U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0},
                                                                   {0, 0U, 0, 0, 0},
                                                                   {0, 0U, 0, 0, 0},
                                                                   {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"PCTV nanoStick T2 290e", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_290e),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 64U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"Terratec Cinergy H5", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"PCTV DVB-S2 Stick (460e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_460e),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"Hauppauge WinTV HVR 930C", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge", 0, 0},
        {(char *)"Terratec Cinergy HTC Stick", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, 0U, 0U, 0U,
      0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs", 0, 0},
        {(char *)"Honestech Vidbox NW03", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"MaxMedia UB425-TC", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& maxmedia_ub425_tc),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-reddo", 0, 0},
        {(char *)"PCTV QuatroStick (510e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_510e),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"PCTV QuatroStick nano (520e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_520e),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0},
        {(char *)"Terratec Cinergy HTC USB XS", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, 0U, 0U,
      0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs", 0, 0},
        {(char *)"C3 Tech Digital Duo HDTV/SDTV USB", 0, 4, 0, 1U, 0U, (struct em28xx_reg_seq *)(& c3tech_digital_duo_digital),
      0, 0, 0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 64U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-empty", 0, 0},
        {(char *)"Delock 61959", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& maxmedia_ub425_tc),
      0, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-delock-61959", 0, 0},
        {(char *)"KWorld USB ATSC TV Stick UB435-Q V2", 0, 4, 0, 1U, 0U, (struct em28xx_reg_seq *)(& kworld_a340_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, 0U, 0U, 0U, 0U, 1U, 0U,
      0U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0, 0, 0},
        {(char *)"SpeedLink Vicious And Devine Laplace webcam", 0, 4, 0, 1U, 0U, 0, 0,
      0, 0, 0U, 0U, 0U, 0U, 0U, 1U, 0U, 0U, 11U, 64U, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& speedlink_vad_laplace_reg_seq)}},
      {0, 0U, 0, 0, 0}, 0, (struct em28xx_led *)(& speedlink_vad_laplace_leds), (struct em28xx_button *)(& speedlink_vad_laplace_buttons)},
        {(char *)"PCTV DVB-S2 Stick (461e)",
      0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_461e), 0, 0U, 0U, 0U,
      0U, 1U, 0U, 0U, 0U, (unsigned char)0, 65U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd", 0, 0}};
static char const __kstrtab_em28xx_boards[14U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'b',
        'o', 'a', 'r', 'd',
        's', '\000'};
struct kernel_symbol const __ksymtab_em28xx_boards ;
struct kernel_symbol const __ksymtab_em28xx_boards = {(unsigned long )(& em28xx_boards), (char const *)(& __kstrtab_em28xx_boards)};
unsigned int const em28xx_bcount = 93U;
struct usb_device_id em28xx_id_table[84U] =
  { {3U, 60186U, 10064U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10065U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10240U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {3U, 60186U, 10000U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10272U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10273U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10336U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10337U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10338U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10339U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10369U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10371U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10344U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10357U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 58112U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 39UL},
        {3U, 60186U, 58115U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 63UL},
        {3U, 60186U, 58117U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 47UL},
        {3U, 60186U, 58128U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 49UL},
        {3U, 60186U, 41747U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 69UL},
        {3U, 60186U, 41750U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 57UL},
        {3U, 60186U, 58144U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 50UL},
        {3U, 60186U, 58147U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 54UL},
        {3U, 60186U, 58192U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 41UL},
        {3U, 60186U, 58197U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 10241U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 21UL},
        {3U, 60186U, 58199U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 58201U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 7040U, 58114U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 7040U, 58116U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 3277U, 54U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 3277U, 76U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      51UL},
        {3U, 3277U, 79U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      34UL},
        {3U, 3277U, 94U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 66U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 67U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      43UL},
        {3U, 3277U, 142U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 172U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 4258U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 4269U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 4278U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 132U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      68UL},
        {3U, 3277U, 150U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 4271U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 178U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      82UL},
        {3U, 4057U, 51U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      33UL},
        {3U, 6235U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      46UL},
        {3U, 6235U, 8257U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      58UL},
        {3U, 8256U, 16896U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 16897U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 25856U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      10UL},
        {3U, 8256U, 25858U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18UL},
        {3U, 8256U, 25875U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25879U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25883U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25887U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      60UL},
        {3U, 1080U, 45058U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 8193U, 61714U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      24UL},
        {3U, 8964U, 519U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 520U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 8964U, 538U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 550U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      56UL},
        {3U, 8964U, 551U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17UL},
        {3U, 1043U, 24611U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 2363U, 40963U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 2363U, 40965U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      40UL},
        {3U, 1211U, 1301U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65UL},
        {3U, 60186U, 20646U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 37UL},
        {3U, 7040U, 41792U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      76UL},
        {3U, 7040U, 58182U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      90UL},
        {3U, 8211U, 591U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      78UL},
        {3U, 8211U, 588U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      80UL},
        {3U, 8256U, 5637U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      81UL},
        {3U, 7040U, 59221U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      88UL},
        {3U, 60186U, 20486U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 83UL},
        {3U, 7040U, 58121U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      64UL},
        {3U, 7040U, 58405U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      84UL},
        {3U, 8964U, 578U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      85UL},
        {3U, 8211U, 593U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      86UL},
        {3U, 7040U, 57804U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      89UL},
        {3U, 6887U, 36867U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      91UL},
        {3U, 6887U, 36868U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      91UL},
        {3U, 8211U, 600U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      92UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct em28xx_hash_table em28xx_eeprom_hash[8U] =
  { {1826642575UL, 14U, 59U},
        {1925995147UL, 61U, 59U},
        {2523530305UL, 48U, 71U},
        {376046657UL, 66U, 71U},
        {3471067801UL, 70U, 71U},
        {3095685920UL, 53U, 71U},
        {1677087677UL, 73U, 4U},
        {1318138946UL, 75U, 71U}};
static struct em28xx_hash_table em28xx_i2c_hash[7U] = { {2959749827UL, 6U, 37U},
        {4111597795UL, 15U, 37U},
        {463798400UL, 19U, 4U},
        {2004877440UL, 29U, 4U},
        {3306291427UL, 62U, 37U},
        {1269104768UL, 72U, 69U},
        {1803550848UL, 77U, 4U}};
int em28xx_tuner_callback(void *ptr , int component , int command , int arg )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  int rc ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)ptr;
  dev = i2c_bus->dev;
  rc = 0;
  if (dev->tuner_type != 71 && dev->tuner_type != 76) {
    return (0);
  } else {
  }
  if (command != 0) {
    return (0);
  } else {
  }
  {
  rc = em28xx_gpio_set(dev, dev->board.tuner_gpio);
  }
  return (rc);
}
}
static char const __kstrtab_em28xx_tuner_callback[22U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 't',
        'u', 'n', 'e', 'r',
        '_', 'c', 'a', 'l',
        'l', 'b', 'a', 'c',
        'k', '\000'};
struct kernel_symbol const __ksymtab_em28xx_tuner_callback ;
struct kernel_symbol const __ksymtab_em28xx_tuner_callback = {(unsigned long )(& em28xx_tuner_callback), (char const *)(& __kstrtab_em28xx_tuner_callback)};
__inline static void em28xx_set_model(struct em28xx *dev )
{
  {
  dev->board = em28xx_boards[dev->model];
  if ((unsigned int )dev->board.xclk == 0U) {
    dev->board.xclk = 39U;
  } else {
  }
  if ((unsigned int )dev->board.i2c_speed == 0U) {
    dev->board.i2c_speed = 64U;
  } else {
  }
  dev->def_i2c_bus = dev->board.def_i2c_bus;
  return;
}
}
static void em28xx_pre_card_setup(struct em28xx *dev )
{
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  unsigned long __ms___2 ;
  unsigned long tmp___2 ;
  unsigned long __ms___3 ;
  unsigned long tmp___3 ;
  unsigned long __ms___4 ;
  unsigned long tmp___4 ;
  unsigned long __ms___5 ;
  unsigned long tmp___5 ;
  unsigned long __ms___6 ;
  unsigned long tmp___6 ;
  unsigned long __ms___7 ;
  unsigned long tmp___7 ;
  unsigned long __ms___8 ;
  unsigned long tmp___8 ;
  {
  {
  em28xx_write_reg(dev, 15, (int )dev->board.xclk & 127);
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) == 0U) {
    {
    em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
    }
  } else {
  }
  {
  msleep(50U);
  }
  {
  if (dev->model == 40) {
    goto case_40;
  } else {
  }
  if (dev->model == 39) {
    goto case_39;
  } else {
  }
  if (dev->model == 47) {
    goto case_47;
  } else {
  }
  if (dev->model == 46) {
    goto case_46;
  } else {
  }
  if (dev->model == 44) {
    goto case_44;
  } else {
  }
  if (dev->model == 45) {
    goto case_45;
  } else {
  }
  if (dev->model == 25) {
    goto case_25;
  } else {
  }
  if (dev->model == 5) {
    goto case_5;
  } else {
  }
  if (dev->model == 69) {
    goto case_69;
  } else {
  }
  if (dev->model == 63) {
    goto case_63;
  } else {
  }
  if (dev->model == 64) {
    goto case_64;
  } else {
  }
  if (dev->model == 65) {
    goto case_65;
  } else {
  }
  goto switch_break;
  case_40:
  dev->i2s_speed = 2048000U;
  goto ldv_38831;
  case_39: ;
  case_47:
  {
  em28xx_write_reg(dev, 8, 109);
  msleep(10U);
  em28xx_write_reg(dev, 8, 125);
  msleep(10U);
  }
  goto ldv_38831;
  case_46:
  {
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 1);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  __ms = 70UL;
  }
  goto ldv_38837;
  ldv_38836:
  {
  __const_udelay(4295000UL);
  }
  ldv_38837:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_38836;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 252);
  __ms___0 = 70UL;
  }
  goto ldv_38841;
  ldv_38840:
  {
  __const_udelay(4295000UL);
  }
  ldv_38841:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_38840;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 220);
  __ms___1 = 70UL;
  }
  goto ldv_38845;
  ldv_38844:
  {
  __const_udelay(4295000UL);
  }
  ldv_38845:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_38844;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 252);
  __ms___2 = 70UL;
  }
  goto ldv_38849;
  ldv_38848:
  {
  __const_udelay(4295000UL);
  }
  ldv_38849:
  tmp___2 = __ms___2;
  __ms___2 = __ms___2 - 1UL;
  if (tmp___2 != 0UL) {
    goto ldv_38848;
  } else {
  }
  goto ldv_38831;
  case_44:
  {
  em28xx_write_reg(dev, 8, 254);
  __ms___3 = 70UL;
  }
  goto ldv_38854;
  ldv_38853:
  {
  __const_udelay(4295000UL);
  }
  ldv_38854:
  tmp___3 = __ms___3;
  __ms___3 = __ms___3 - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_38853;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 222);
  __ms___4 = 70UL;
  }
  goto ldv_38858;
  ldv_38857:
  {
  __const_udelay(4295000UL);
  }
  ldv_38858:
  tmp___4 = __ms___4;
  __ms___4 = __ms___4 - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_38857;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 254);
  __ms___5 = 70UL;
  }
  goto ldv_38862;
  ldv_38861:
  {
  __const_udelay(4295000UL);
  }
  ldv_38862:
  tmp___5 = __ms___5;
  __ms___5 = __ms___5 - 1UL;
  if (tmp___5 != 0UL) {
    goto ldv_38861;
  } else {
  }
  goto ldv_38831;
  case_45:
  {
  em28xx_write_reg(dev, 8, 254);
  __ms___6 = 70UL;
  }
  goto ldv_38867;
  ldv_38866:
  {
  __const_udelay(4295000UL);
  }
  ldv_38867:
  tmp___6 = __ms___6;
  __ms___6 = __ms___6 - 1UL;
  if (tmp___6 != 0UL) {
    goto ldv_38866;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 222);
  __ms___7 = 70UL;
  }
  goto ldv_38871;
  ldv_38870:
  {
  __const_udelay(4295000UL);
  }
  ldv_38871:
  tmp___7 = __ms___7;
  __ms___7 = __ms___7 - 1UL;
  if (tmp___7 != 0UL) {
    goto ldv_38870;
  } else {
  }
  {
  em28xx_write_reg(dev, 8, 254);
  __ms___8 = 70UL;
  }
  goto ldv_38875;
  ldv_38874:
  {
  __const_udelay(4295000UL);
  }
  ldv_38875:
  tmp___8 = __ms___8;
  __ms___8 = __ms___8 - 1UL;
  if (tmp___8 != 0UL) {
    goto ldv_38874;
  } else {
  }
  goto ldv_38831;
  case_25: ;
  case_5:
  {
  em28xx_write_reg(dev, 8, 253);
  }
  goto ldv_38831;
  case_69:
  {
  em28xx_write_reg(dev, 8, 255);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(10U);
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 8);
  msleep(10U);
  }
  goto ldv_38831;
  case_63:
  {
  em28xx_write_regs(dev, 15, (char *)"\a", 1);
  em28xx_write_regs(dev, 6, (char *)"@", 1);
  em28xx_write_regs(dev, 13, (char *)"B", 1);
  em28xx_write_regs(dev, 8, (char *)"\375", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\377", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\177", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"k", 1);
  }
  goto ldv_38831;
  case_64:
  {
  em28xx_write_regs(dev, 8, (char *)"\370", 1);
  }
  goto ldv_38831;
  case_65:
  {
  em28xx_write_reg(dev, 8, 255);
  msleep(70U);
  em28xx_write_reg(dev, 8, 247);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(70U);
  em28xx_write_reg(dev, 8, 253);
  msleep(70U);
  }
  goto ldv_38831;
  switch_break: ;
  }
  ldv_38831:
  {
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  em28xx_set_mode(dev, 0);
  }
  return;
}
}
static int em28xx_hint_board(struct em28xx *dev )
{
  int i ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if ((unsigned int )dev->em28xx_sensor == 1U) {
      dev->model = 71;
    } else
    if ((unsigned int )dev->em28xx_sensor - 2U <= 1U) {
      dev->model = 22;
    } else {
    }
    return (0);
  } else {
  }
  i = 0;
  goto ldv_38890;
  ldv_38889: ;
  if (dev->hash == em28xx_eeprom_hash[i].hash) {
    {
    dev->model = (int )em28xx_eeprom_hash[i].model;
    dev->tuner_type = (int )em28xx_eeprom_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on eeprom hash.\n", (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_38890: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_38889;
  } else {
  }
  if (dev->i2c_hash == 0UL) {
    {
    em28xx_do_i2c_scan(dev, dev->def_i2c_bus);
    }
  } else {
  }
  i = 0;
  goto ldv_38895;
  ldv_38894: ;
  if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
    {
    dev->model = (int )em28xx_i2c_hash[i].model;
    dev->tuner_type = (int )em28xx_i2c_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on i2c devicelist hash.\n",
           (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_38895: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_38894;
  } else {
  }
  {
  printk("\v%s: Your board has no unique USB ID and thus need a hint to be detected.\n",
         (char *)(& dev->name));
  printk("\v%s: You may try to use card=<n> insmod option to workaround that.\n",
         (char *)(& dev->name));
  printk("\v%s: Please send an email with this log to:\n", (char *)(& dev->name));
  printk("\v%s: \tV4L Mailing List <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
  printk("\v%s: Board eeprom hash is 0x%08lx\n", (char *)(& dev->name), dev->hash);
  printk("\v%s: Board i2c devicelist hash is 0x%08lx\n", (char *)(& dev->name), dev->i2c_hash);
  printk("\v%s: Here is a list of valid choices for the card=<n> insmod option:\n",
         (char *)(& dev->name));
  i = 0;
  }
  goto ldv_38898;
  ldv_38897:
  {
  printk("\v%s:     card=%d -> %s\n", (char *)(& dev->name), i, em28xx_boards[i].name);
  i = i + 1;
  }
  ldv_38898: ;
  if ((unsigned int )i <= 92U) {
    goto ldv_38897;
  } else {
  }
  return (-1);
}
}
static void em28xx_card_setup(struct em28xx *dev )
{
  int tmp ;
  int tmp___0 ;
  struct tveeprom tv ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    {
    tmp = em28xx_detect_sensor(dev);
    }
    if (tmp < 0) {
      dev->board.is_webcam = 0U;
    } else {
      dev->progressive = 1;
    }
  } else {
  }
  {
  if (dev->model == 22) {
    goto case_22;
  } else {
  }
  if (dev->model == 1) {
    goto case_1;
  } else {
  }
  if (dev->model == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_22: ;
  case_1: ;
  case_0:
  {
  tmp___0 = em28xx_hint_board(dev);
  }
  if (tmp___0 < 0) {
    {
    printk("\v%s: Board not discovered\n", (char *)(& dev->name));
    }
  } else {
    {
    em28xx_set_model(dev);
    em28xx_pre_card_setup(dev);
    }
  }
  goto ldv_38906;
  switch_default:
  {
  em28xx_set_model(dev);
  }
  switch_break: ;
  }
  ldv_38906:
  {
  printk("\016%s: Identified as %s (card=%d)\n", (char *)(& dev->name), dev->board.name,
         dev->model);
  dev->tuner_type = em28xx_boards[dev->model].tuner_type;
  }
  if (em28xx_boards[dev->model].tuner_addr != 0) {
    dev->tuner_addr = em28xx_boards[dev->model].tuner_addr;
  } else {
  }
  if (em28xx_boards[dev->model].tda9887_conf != 0U) {
    dev->tda9887_conf = (int )em28xx_boards[dev->model].tda9887_conf;
  } else {
  }
  {
  if (dev->model == 4) {
    goto case_4;
  } else {
  }
  if (dev->model == 10) {
    goto case_10;
  } else {
  }
  if (dev->model == 18) {
    goto case_18;
  } else {
  }
  if (dev->model == 60) {
    goto case_60;
  } else {
  }
  if (dev->model == 16) {
    goto case_16;
  } else {
  }
  if (dev->model == 81) {
    goto case_81;
  } else {
  }
  if (dev->model == 69) {
    goto case_69;
  } else {
  }
  if (dev->model == 12) {
    goto case_12;
  } else {
  }
  if (dev->model == 1) {
    goto case_1___0;
  } else {
  }
  if (dev->model == 0) {
    goto case_0___0;
  } else {
  }
  if (dev->model == 49) {
    goto case_49;
  } else {
  }
  if (dev->model == 54) {
    goto case_54;
  } else {
  }
  goto switch_break___0;
  case_4: ;
  case_10: ;
  case_18: ;
  case_60: ;
  case_16: ;
  case_81: ;
  if ((unsigned long )dev->eedata == (unsigned long )((u8 *)0U)) {
    goto ldv_38915;
  } else {
  }
  {
  __request_module(1, "tveeprom");
  dev->i2c_client[dev->def_i2c_bus].addr = 80U;
  tveeprom_hauppauge_analog((struct i2c_client *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                            & tv, dev->eedata);
  dev->tuner_type = (int )tv.tuner_type;
  }
  if (tv.audio_processor == 2U) {
    dev->i2s_speed = 2048000U;
    dev->board.has_msp34xx = 1U;
  } else {
  }
  goto ldv_38915;
  case_69:
  {
  em28xx_write_reg(dev, 13, 66);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  msleep(10U);
  }
  goto ldv_38915;
  case_12:
  {
  em28xx_write_reg(dev, 8, 249);
  }
  goto ldv_38915;
  case_1___0: ;
  case_0___0: ;
  case_49:
  {
  tmp___1 = em28xx_hint_board(dev);
  }
  if (tmp___1 == 0) {
    {
    em28xx_set_model(dev);
    }
  } else {
  }
  {
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  }
  goto ldv_38915;
  case_54:
  {
  tmp___2 = em28xx_hint_board(dev);
  }
  if (tmp___2 == 0) {
    {
    em28xx_set_model(dev);
    }
  } else {
  }
  {
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  }
  goto ldv_38915;
  switch_break___0: ;
  }
  ldv_38915: ;
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    {
    printk("\v%s: \n\n", (char *)(& dev->name));
    printk("\v%s: The support for this board weren\'t valid yet.\n", (char *)(& dev->name));
    printk("\v%s: Please send a report of having this working\n", (char *)(& dev->name));
    printk("\v%s: not to V4L mailing list (and/or to other addresses)\n\n", (char *)(& dev->name));
    }
  } else {
  }
  {
  kfree((void const *)dev->eedata);
  dev->eedata = (u8 *)0U;
  }
  if (tuner >= 0) {
    dev->tuner_type = tuner;
  } else {
  }
  return;
}
}
void em28xx_setup_xc3028(struct em28xx *dev , struct xc2028_ctrl *ctl )
{
  {
  {
  memset((void *)ctl, 0, 32UL);
  ctl->fname = (char *)"xc3028-v27.fw";
  ctl->max_len = 64;
  ctl->mts = em28xx_boards[dev->model].mts_firmware;
  }
  {
  if (dev->model == 66) {
    goto case_66;
  } else {
  }
  if (dev->model == 10) {
    goto case_10;
  } else {
  }
  if (dev->model == 55) {
    goto case_55;
  } else {
  }
  if (dev->model == 11) {
    goto case_11;
  } else {
  }
  if (dev->model == 51) {
    goto case_51;
  } else {
  }
  if (dev->model == 53) {
    goto case_53;
  } else {
  }
  if (dev->model == 18) {
    goto case_18;
  } else {
  }
  if (dev->model == 56) {
    goto case_56;
  } else {
  }
  if (dev->model == 20) {
    goto case_20;
  } else {
  }
  if (dev->model == 60) {
    goto case_60;
  } else {
  }
  if (dev->model == 16) {
    goto case_16;
  } else {
  }
  if (dev->model == 17) {
    goto case_17;
  } else {
  }
  if (dev->model == 57) {
    goto case_57;
  } else {
  }
  if (dev->model == 75) {
    goto case_75;
  } else {
  }
  if (dev->model == 54) {
    goto case_54;
  } else {
  }
  if (dev->model == 70) {
    goto case_70;
  } else {
  }
  goto switch_default;
  case_66: ;
  case_10: ;
  case_55:
  ctl->demod = 4560U;
  goto ldv_38929;
  case_11: ;
  case_51: ;
  case_53:
  ctl->demod = 4560U;
  goto ldv_38929;
  case_18: ;
  case_56:
  ctl->demod = 0U;
  goto ldv_38929;
  case_20:
  ctl->demod = 0U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_38929;
  case_60: ;
  case_16: ;
  case_17:
  ctl->demod = 0U;
  goto ldv_38929;
  case_57: ;
  case_75: ;
  case_54:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028-v27.fw";
  goto ldv_38929;
  case_70:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_38929;
  switch_default:
  ctl->demod = 5380U;
  switch_break: ;
  }
  ldv_38929: ;
  return;
}
}
static char const __kstrtab_em28xx_setup_xc3028[20U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 's',
        'e', 't', 'u', 'p',
        '_', 'x', 'c', '3',
        '0', '2', '8', '\000'};
struct kernel_symbol const __ksymtab_em28xx_setup_xc3028 ;
struct kernel_symbol const __ksymtab_em28xx_setup_xc3028 = {(unsigned long )(& em28xx_setup_xc3028), (char const *)(& __kstrtab_em28xx_setup_xc3028)};
static void request_module_async(struct work_struct *work )
{
  struct em28xx *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct em28xx *)__mptr + 0xffffffffffffdfb8UL;
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    {
    __request_module(1, "em28xx-alsa");
    }
    return;
  } else {
  }
  {
  em28xx_init_extension(dev);
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    {
    __request_module(1, "em28xx-v4l");
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    {
    __request_module(1, "snd-usb-audio");
    }
  } else
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    {
    __request_module(1, "em28xx-alsa");
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    {
    __request_module(1, "em28xx-dvb");
    }
  } else {
  }
  if ((unsigned long )dev->board.buttons != (unsigned long )((struct em28xx_button *)0) || (((unsigned long )dev->board.ir_codes != (unsigned long )((char *)0) || (unsigned int )*((unsigned char *)dev + 728UL) != 0U) && disable_ir == 0U)) {
    {
    __request_module(1, "em28xx-rc");
    }
  } else {
  }
  return;
}
}
static void request_modules(struct em28xx *dev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  }
  return;
}
}
static void flush_request_modules(struct em28xx *dev )
{
  {
  {
  flush_work(& dev->request_module_wk);
  }
  return;
}
}
void em28xx_release_resources(struct em28xx *dev )
{
  {
  {
  ldv_mutex_lock_29___0(& dev->lock);
  }
  if (dev->def_i2c_bus != 0U) {
    {
    em28xx_i2c_unregister(dev, 1U);
    }
  } else {
  }
  {
  em28xx_i2c_unregister(dev, 0U);
  usb_put_dev(dev->udev);
  clear_bit((long )dev->devno, (unsigned long volatile *)(& em28xx_devused));
  ldv_mutex_unlock_30___0(& dev->lock);
  }
  return;
}
}
static char const __kstrtab_em28xx_release_resources[25U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'r',
        'e', 'l', 'e', 'a',
        's', 'e', '_', 'r',
        'e', 's', 'o', 'u',
        'r', 'c', 'e', 's',
        '\000'};
struct kernel_symbol const __ksymtab_em28xx_release_resources ;
struct kernel_symbol const __ksymtab_em28xx_release_resources = {(unsigned long )(& em28xx_release_resources), (char const *)(& __kstrtab_em28xx_release_resources)};
static int em28xx_init_dev(struct em28xx *dev , struct usb_device *udev , struct usb_interface *interface ,
                           int minor )
{
  int retval ;
  char const *default_chip_name ;
  char const *chip_name ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  __le16 idProd ;
  {
  {
  default_chip_name = "em28xx";
  chip_name = default_chip_name;
  dev->udev = udev;
  __mutex_init(& dev->vb_queue_lock, "&dev->vb_queue_lock", & __key);
  __mutex_init(& dev->vb_vbi_queue_lock, "&dev->vb_vbi_queue_lock", & __key___0);
  __mutex_init(& dev->ctrl_urb_lock, "&dev->ctrl_urb_lock", & __key___1);
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.__annonCompField21.rlock, "&(&dev->slock)->rlock",
                       & __key___2);
  dev->em28xx_write_regs = & em28xx_write_regs;
  dev->em28xx_read_reg = & em28xx_read_reg;
  dev->em28xx_read_reg_req_len = & em28xx_read_reg_req_len;
  dev->em28xx_write_regs_req = & em28xx_write_regs_req;
  dev->em28xx_read_reg_req = & em28xx_read_reg_req;
  dev->board.is_em2800 = em28xx_boards[dev->model].is_em2800;
  em28xx_set_model(dev);
  dev->wait_after_write = 5U;
  retval = em28xx_read_reg(dev, 10);
  }
  if (retval > 0) {
    dev->chip_id = (enum em28xx_chip_id )retval;
    {
    if ((unsigned int )dev->chip_id == 7U) {
      goto case_7;
    } else {
    }
    if ((unsigned int )dev->chip_id == 17U) {
      goto case_17;
    } else {
    }
    if ((unsigned int )dev->chip_id == 33U) {
      goto case_33;
    } else {
    }
    if ((unsigned int )dev->chip_id == 54U) {
      goto case_54;
    } else {
    }
    if ((unsigned int )dev->chip_id == 18U) {
      goto case_18;
    } else {
    }
    if ((unsigned int )dev->chip_id == 20U) {
      goto case_20;
    } else {
    }
    if ((unsigned int )dev->chip_id == 34U) {
      goto case_34;
    } else {
    }
    if ((unsigned int )dev->chip_id == 35U) {
      goto case_35;
    } else {
    }
    if ((unsigned int )dev->chip_id == 65U) {
      goto case_65;
    } else {
    }
    if ((unsigned int )dev->chip_id == 113U) {
      goto case_113;
    } else {
    }
    if ((unsigned int )dev->chip_id == 114U) {
      goto case_114;
    } else {
    }
    if ((unsigned int )dev->chip_id == 36U) {
      goto case_36;
    } else {
    }
    if ((unsigned int )dev->chip_id == 68U) {
      goto case_68;
    } else {
    }
    goto switch_default;
    case_7:
    chip_name = "em2800";
    goto ldv_38990;
    case_17:
    chip_name = "em2710";
    goto ldv_38990;
    case_33:
    chip_name = "em2750";
    goto ldv_38990;
    case_54:
    chip_name = "em2765";
    dev->wait_after_write = 0U;
    dev->is_em25xx = 1U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_38990;
    case_18:
    chip_name = "em2710/2820";
    if ((unsigned int )(dev->udev)->descriptor.idVendor == 60186U) {
      idProd = (dev->udev)->descriptor.idProduct;
      if ((unsigned int )idProd == 10000U) {
        chip_name = "em2710";
      } else
      if ((unsigned int )idProd == 10272U) {
        chip_name = "em2820";
      } else {
      }
    } else {
    }
    goto ldv_38990;
    case_20:
    chip_name = "em2840";
    goto ldv_38990;
    case_34:
    chip_name = "em2860";
    goto ldv_38990;
    case_35:
    chip_name = "em2870";
    dev->wait_after_write = 0U;
    goto ldv_38990;
    case_65:
    chip_name = "em2874";
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_38990;
    case_113:
    chip_name = "em28174";
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_38990;
    case_114:
    chip_name = "em28178";
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_38990;
    case_36:
    chip_name = "em2882/3";
    dev->wait_after_write = 0U;
    goto ldv_38990;
    case_68:
    chip_name = "em2884";
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_38990;
    switch_default:
    {
    printk("\016em28xx: unknown em28xx chip ID (%d)\n", (unsigned int )dev->chip_id);
    }
    switch_break: ;
    }
    ldv_38990: ;
  } else {
  }
  if ((((unsigned int )dev->chip_id == 35U || (unsigned int )dev->chip_id == 65U) || (unsigned int )dev->chip_id == 113U) || (unsigned int )dev->chip_id == 114U) {
    dev->audio_mode.has_audio = 0U;
    dev->has_audio_class = 0U;
    dev->has_alsa_audio = 0U;
  } else {
  }
  if ((unsigned long )chip_name != (unsigned long )default_chip_name) {
    {
    printk("\016em28xx: chip ID is %s\n", chip_name);
    }
  } else {
  }
  {
  snprintf((char *)(& dev->name), 30UL, "%s #%d", chip_name, dev->devno);
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    {
    retval = em28xx_audio_setup(dev);
    }
    if (retval != 0) {
      return (-19);
    } else {
    }
    {
    em28xx_init_extension(dev);
    }
    return (0);
  } else {
  }
  {
  em28xx_pre_card_setup(dev);
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) == 0U) {
    {
    retval = em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
    }
    if (retval < 0) {
      {
      printk("\v%s: %s: em28xx_write_reg failed! retval [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      }
      return (retval);
    } else {
    }
  } else {
  }
  {
  __rt_mutex_init(& dev->i2c_bus_lock, "em28xx_init_dev");
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    {
    retval = em28xx_i2c_register(dev, 0U, 1);
    }
  } else {
    {
    retval = em28xx_i2c_register(dev, 0U, 0);
    }
  }
  if (retval < 0) {
    {
    printk("\v%s: %s: em28xx_i2c_register bus 0 - error [%d]!\n", (char *)(& dev->name),
           "em28xx_init_dev", retval);
    }
    return (retval);
  } else {
  }
  if (dev->def_i2c_bus != 0U) {
    if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
      {
      retval = em28xx_i2c_register(dev, 1U, 2);
      }
    } else {
      {
      retval = em28xx_i2c_register(dev, 1U, 0);
      }
    }
    if (retval < 0) {
      {
      printk("\v%s: %s: em28xx_i2c_register bus 1 - error [%d]!\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      em28xx_i2c_unregister(dev, 0U);
      }
      return (retval);
    } else {
    }
  } else {
  }
  {
  em28xx_card_setup(dev);
  }
  return (0);
}
}
static int em28xx_usb_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct em28xx *dev ;
  int retval ;
  bool has_audio ;
  bool has_video ;
  bool has_dvb ;
  int i ;
  int nr ;
  int try_bulk ;
  int ifnum ;
  char *speed ;
  struct usb_device *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int ep ;
  struct usb_endpoint_descriptor const *e ;
  int sizedescr ;
  int size ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct usb_interface *uif ;
  struct lock_class_key __key ;
  {
  {
  dev = (struct em28xx *)0;
  has_audio = 0;
  has_video = 0;
  has_dvb = 0;
  ifnum = (int const )(interface->altsetting)->desc.bInterfaceNumber;
  tmp = interface_to_usbdev(interface);
  udev = usb_get_dev(tmp);
  }
  ldv_39022:
  {
  tmp___0 = find_first_zero_bit((unsigned long const *)(& em28xx_devused), 4UL);
  nr = (int )tmp___0;
  }
  if (nr > 3) {
    {
    printk("em28xx: Supports only %i em28xx boards.\n", 4);
    retval = -12;
    }
    goto err_no_slot;
  } else {
  }
  {
  tmp___1 = test_and_set_bit((long )nr, (unsigned long volatile *)(& em28xx_devused));
  }
  if (tmp___1 != 0) {
    goto ldv_39022;
  } else {
  }
  if ((unsigned int )(interface->altsetting)->desc.bInterfaceClass == 1U) {
    {
    printk("\vem28xx audio device (%04x:%04x): interface %i, class %i\n", (int )udev->descriptor.idVendor,
           (int )udev->descriptor.idProduct, ifnum, (int )(interface->altsetting)->desc.bInterfaceClass);
    retval = -19;
    }
    goto err;
  } else {
  }
  {
  tmp___2 = kzalloc(11232UL, 208U);
  dev = (struct em28xx *)tmp___2;
  }
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    {
    printk("\vem28xx: out of memory!\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  {
  tmp___3 = kmalloc((unsigned long )interface->num_altsetting * 4UL, 208U);
  dev->alt_max_pkt_size_isoc = (unsigned int *)tmp___3;
  }
  if ((unsigned long )dev->alt_max_pkt_size_isoc == (unsigned long )((unsigned int *)0U)) {
    {
    printk("\v%s: out of memory!\n", (char *)(& dev->name));
    kfree((void const *)dev);
    retval = -12;
    }
    goto err;
  } else {
  }
  i = 0;
  goto ldv_39037;
  ldv_39036:
  ep = 0;
  goto ldv_39034;
  ldv_39033:
  e = (struct usb_endpoint_descriptor const *)(& ((interface->altsetting + (unsigned long )i)->endpoint + (unsigned long )ep)->desc);
  sizedescr = (int )e->wMaxPacketSize;
  size = sizedescr & 2047;
  if ((unsigned int )udev->speed == 3U) {
    size = size * (((sizedescr >> 11) & 3) + 1);
  } else {
  }
  {
  tmp___9 = usb_endpoint_dir_in(e);
  }
  if (tmp___9 != 0) {
    {
    if ((int )e->bEndpointAddress == 130) {
      goto case_130;
    } else {
    }
    if ((int )e->bEndpointAddress == 131) {
      goto case_131;
    } else {
    }
    if ((int )e->bEndpointAddress == 132) {
      goto case_132;
    } else {
    }
    goto switch_break;
    case_130:
    {
    has_video = 1;
    tmp___5 = usb_endpoint_xfer_isoc(e);
    }
    if (tmp___5 != 0) {
      dev->analog_ep_isoc = e->bEndpointAddress;
      *(dev->alt_max_pkt_size_isoc + (unsigned long )i) = (unsigned int )size;
    } else {
      {
      tmp___4 = usb_endpoint_xfer_bulk(e);
      }
      if (tmp___4 != 0) {
        dev->analog_ep_bulk = e->bEndpointAddress;
      } else {
      }
    }
    goto ldv_39030;
    case_131:
    {
    tmp___6 = usb_endpoint_xfer_isoc(e);
    }
    if (tmp___6 != 0) {
      has_audio = 1;
    } else {
      {
      printk("\016em28xx: error: skipping audio endpoint 0x83, because it uses bulk transfers !\n");
      }
    }
    goto ldv_39030;
    case_132: ;
    if ((int )has_video) {
      {
      tmp___8 = usb_endpoint_xfer_bulk(e);
      }
      if (tmp___8 != 0) {
        dev->analog_ep_bulk = e->bEndpointAddress;
      } else {
        goto _L;
      }
    } else {
      _L:
      {
      tmp___7 = usb_endpoint_xfer_isoc(e);
      }
      if (tmp___7 != 0) {
        if ((unsigned int )size > dev->dvb_max_pkt_size_isoc) {
          has_dvb = 1;
          dev->dvb_ep_isoc = e->bEndpointAddress;
          dev->dvb_max_pkt_size_isoc = (unsigned int )size;
          dev->dvb_alt_isoc = i;
        } else {
        }
      } else {
        has_dvb = 1;
        dev->dvb_ep_bulk = e->bEndpointAddress;
      }
    }
    goto ldv_39030;
    switch_break: ;
    }
    ldv_39030: ;
  } else {
  }
  ep = ep + 1;
  ldv_39034: ;
  if (ep < (int )(interface->altsetting + (unsigned long )i)->desc.bNumEndpoints) {
    goto ldv_39033;
  } else {
  }
  i = i + 1;
  ldv_39037: ;
  if ((unsigned int )i < interface->num_altsetting) {
    goto ldv_39036;
  } else {
  }
  if ((! has_audio && ! has_video) && ! has_dvb) {
    retval = -19;
    goto err_free;
  } else {
  }
  {
  if ((unsigned int )udev->speed == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )udev->speed == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )udev->speed == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )udev->speed == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  speed = (char *)"1.5";
  goto ldv_39041;
  case_0: ;
  case_2:
  speed = (char *)"12";
  goto ldv_39041;
  case_3:
  speed = (char *)"480";
  goto ldv_39041;
  switch_default:
  speed = (char *)"unknown";
  switch_break___0: ;
  }
  ldv_39041:
  {
  printk("\016em28xx: New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
         (unsigned long )udev->manufacturer != (unsigned long )((char *)0) ? udev->manufacturer : (char *)"",
         (unsigned long )udev->product != (unsigned long )((char *)0) ? udev->product : (char *)"",
         speed, (int )udev->descriptor.idVendor, (int )udev->descriptor.idProduct,
         ifnum, (int )(interface->altsetting)->desc.bInterfaceNumber);
  }
  if ((unsigned int )udev->speed != 3U && disable_usb_speed_check == 0U) {
    {
    printk("em28xx: Device initialization failed.\n");
    printk("em28xx: Device must be connected to a high-speed USB 2.0 port.\n");
    retval = -19;
    }
    goto err_free;
  } else {
  }
  dev->devno = nr;
  dev->model = (int )id->driver_info;
  dev->alt = -1;
  dev->is_audio_only = (unsigned char )((int )has_audio && (! has_video && ! has_dvb));
  dev->has_alsa_audio = has_audio;
  dev->audio_mode.has_audio = has_audio;
  dev->has_video = has_video;
  dev->ifnum = (u8 )ifnum;
  i = 0;
  goto ldv_39049;
  ldv_39048:
  uif = (udev->config)->interface[i];
  if ((unsigned int )(uif->altsetting)->desc.bInterfaceClass == 1U) {
    dev->has_audio_class = 1U;
    goto ldv_39047;
  } else {
  }
  i = i + 1;
  ldv_39049: ;
  if (i < (int )(udev->config)->desc.bNumInterfaces) {
    goto ldv_39048;
  } else {
  }
  ldv_39047: ;
  if ((int )has_audio) {
    {
    printk("\016em28xx: Audio interface %i found %s\n", ifnum, (unsigned int )*((unsigned char *)dev + 44UL) != 0U ? (char *)"(USB Audio Class)" : (char *)"(Vendor Class)");
    }
  } else {
  }
  if ((int )has_video) {
    {
    printk("\016em28xx: Video interface %i found:%s%s\n", ifnum, (unsigned int )dev->analog_ep_bulk != 0U ? (char *)" bulk" : (char *)"",
           (unsigned int )dev->analog_ep_isoc != 0U ? (char *)" isoc" : (char *)"");
    }
  } else {
  }
  if ((int )has_dvb) {
    {
    printk("\016em28xx: DVB interface %i found:%s%s\n", ifnum, (unsigned int )dev->dvb_ep_bulk != 0U ? (char *)" bulk" : (char *)"",
           (unsigned int )dev->dvb_ep_isoc != 0U ? (char *)" isoc" : (char *)"");
    }
  } else {
  }
  dev->num_alt = (int )interface->num_altsetting;
  if (card[nr] <= 92U) {
    dev->model = (int )card[nr];
  } else {
  }
  {
  usb_set_intfdata(interface, (void *)dev);
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  retval = em28xx_init_dev(dev, udev, interface, nr);
  }
  if (retval != 0) {
    goto err_free;
  } else {
  }
  if (usb_xfer_mode < 0) {
    if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
      try_bulk = 1;
    } else {
      try_bulk = 0;
    }
  } else {
    try_bulk = usb_xfer_mode > 0;
  }
  if ((int )has_video) {
    if ((unsigned int )dev->analog_ep_isoc == 0U || (try_bulk != 0 && (unsigned int )dev->analog_ep_bulk != 0U)) {
      dev->analog_xfer_bulk = 1U;
    } else {
    }
    {
    printk("\016%s: analog set to %s mode.\n", (char *)(& dev->name), (unsigned int )*((unsigned char *)dev + 10800UL) != 0U ? (char *)"bulk" : (char *)"isoc");
    }
  } else {
  }
  if ((int )has_dvb) {
    if ((unsigned int )dev->dvb_ep_isoc == 0U || (try_bulk != 0 && (unsigned int )dev->dvb_ep_bulk != 0U)) {
      dev->dvb_xfer_bulk = 1U;
    } else {
    }
    {
    printk("\016%s: dvb set to %s mode.\n", (char *)(& dev->name), (unsigned int )*((unsigned char *)dev + 10812UL) != 0U ? (char *)"bulk" : (char *)"isoc");
    }
  } else {
  }
  {
  request_modules(dev);
  }
  return (0);
  err_free:
  {
  kfree((void const *)dev->alt_max_pkt_size_isoc);
  kfree((void const *)dev);
  }
  err:
  {
  clear_bit((long )nr, (unsigned long volatile *)(& em28xx_devused));
  }
  err_no_slot:
  {
  usb_put_dev(udev);
  }
  return (retval);
}
}
static void em28xx_usb_disconnect(struct usb_interface *interface )
{
  struct em28xx *dev ;
  void *tmp ;
  {
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct em28xx *)tmp;
  usb_set_intfdata(interface, (void *)0);
  }
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return;
  } else {
  }
  {
  dev->disconnected = 1U;
  printk("\016%s: Disconnecting %s\n", (char *)(& dev->name), (char *)(& dev->name));
  flush_request_modules(dev);
  em28xx_close_extension(dev);
  em28xx_release_resources(dev);
  }
  if (dev->users == 0) {
    {
    kfree((void const *)dev->alt_max_pkt_size_isoc);
    kfree((void const *)dev);
    }
  } else {
  }
  return;
}
}
static struct usb_driver em28xx_usb_driver =
     {"em28xx", & em28xx_usb_probe, & em28xx_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& em28xx_id_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    0U, 0U, 0U, 0U};
static int em28xx_usb_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_31(& em28xx_usb_driver, & __this_module, "em28xx");
  }
  return (tmp);
}
}
static void em28xx_usb_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_32(& em28xx_usb_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_em28xx_usb_driver_exit_5_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_em28xx_usb_driver_init_5_9(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_3_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_5_4(void) ;
void ldv_dispatch_instance_deregister_2_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_2_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_4_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_5_5(void) ;
void ldv_entry_EMGentry_5(void *arg0 ) ;
int main(void) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_2(void *arg0 ) ;
void ldv_usb_instance_post_1_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_1_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_1_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_1_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_1_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_1(void *arg0 ) ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_em28xx_usb_driver_exit_5_2(void (*arg0)(void) )
{
  {
  {
  em28xx_usb_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_em28xx_usb_driver_init_5_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = em28xx_usb_driver_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_3_1(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_5_4(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_2_2(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_2_3(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_usb_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_usb_usb_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_4_2(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_1 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_usb_instance_1 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_usb_dummy_factory_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_5_5(void)
{
  struct ldv_struct_EMGentry_5 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_5 *)tmp;
  ldv_struct_i2c_algorithm_dummy_resourceless_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_entry_EMGentry_5(void *arg0 )
{
  void (*ldv_5_exit_em28xx_usb_driver_exit_default)(void) ;
  int (*ldv_5_init_em28xx_usb_driver_init_default)(void) ;
  int ldv_5_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_5_ret_default = ldv_EMGentry_init_em28xx_usb_driver_init_5_9(ldv_5_init_em28xx_usb_driver_init_default);
  ldv_5_ret_default = ldv_post_init(ldv_5_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_5_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_5_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_3_5_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_3_5_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_em28xx_usb_driver_exit_5_2(ldv_5_exit_em28xx_usb_driver_exit_default);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_initialize();
  ldv_entry_EMGentry_5((void *)0);
  }
return 0;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_3_usb_driver_usb_driver ;
  {
  {
  ldv_3_usb_driver_usb_driver = arg1;
  ldv_dispatch_deregister_3_1(ldv_3_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_2(void *arg0 )
{
  struct usb_driver *ldv_2_container_usb_driver ;
  struct ldv_struct_usb_instance_1 *data ;
  {
  data = (struct ldv_struct_usb_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_1 *)0)) {
    {
    ldv_2_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_dispatch_instance_register_2_3(ldv_2_container_usb_driver);
  ldv_dispatch_instance_deregister_2_2(ldv_2_container_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_instance_post_1_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_1_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_1_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = em28xx_usb_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_1_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  em28xx_usb_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_1_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_4_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_4_usb_driver_usb_driver = arg1;
    ldv_dispatch_register_4_2(ldv_4_usb_driver_usb_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_usb_usb_instance_1(void *arg0 )
{
  struct usb_driver *ldv_1_container_usb_driver ;
  struct usb_device_id *ldv_1_ldv_param_13_1_default ;
  int ldv_1_probe_retval_default ;
  _Bool ldv_1_reset_flag_default ;
  struct usb_interface *ldv_1_resource_usb_interface ;
  struct usb_device *ldv_1_usb_device_usb_device ;
  struct ldv_struct_usb_instance_1 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_usb_instance_1 *)arg0;
  ldv_1_reset_flag_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_1 *)0)) {
    {
    ldv_1_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_1_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_1_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_1_resource_usb_interface->dev.parent = & ldv_1_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_1_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_1_probe_retval_default = ldv_usb_instance_probe_1_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_1_container_usb_driver->probe,
                                                           ldv_1_resource_usb_interface,
                                                           ldv_1_ldv_param_13_1_default);
  ldv_1_probe_retval_default = ldv_post_probe(ldv_1_probe_retval_default);
  ldv_free((void *)ldv_1_ldv_param_13_1_default);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_1_probe_retval_default == 0);
    tmp___2 = ldv_undef_int();
    }
    {
    if (tmp___2 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___2 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___2 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___2 == 4) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_1: ;
    if ((unsigned long )ldv_1_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_pre_1_10(ldv_1_container_usb_driver->pre_reset, ldv_1_resource_usb_interface);
      }
    } else {
    }
    if ((unsigned long )ldv_1_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_post_1_9(ldv_1_container_usb_driver->post_reset, ldv_1_resource_usb_interface);
      }
    } else {
    }
    goto ldv_39239;
    case_2: ;
    if ((unsigned long )ldv_1_container_usb_driver->resume != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_resume_1_7(ldv_1_container_usb_driver->resume, ldv_1_resource_usb_interface);
      }
    } else {
    }
    goto ldv_39239;
    case_3: ;
    goto ldv_39239;
    case_4: ;
    goto ldv_39239;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_39239:
    {
    ldv_usb_instance_release_1_4(ldv_1_container_usb_driver->disconnect, ldv_1_resource_usb_interface);
    }
  } else {
    {
    ldv_assume(ldv_1_probe_retval_default != 0);
    }
  }
  {
  ldv_free((void *)ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_usb_device_usb_device);
  }
  return;
  return;
}
}
static void *ldv_dev_get_drvdata_12(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_13(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_29___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_register_driver_31(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_usb_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_usb_deregister_32(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device * , struct i2c_adapter * ,
                                                     struct i2c_board_info * , unsigned short const * ) ;
extern struct v4l2_clk *__v4l2_clk_register_fixed(char const * , char const * ,
                                                  unsigned long , struct module * ) ;
extern void v4l2_clk_unregister_fixed(struct v4l2_clk * ) ;
__inline static struct v4l2_clk *v4l2_clk_register_fixed(char const *dev_id , char const *id ,
                                                         unsigned long rate )
{
  struct v4l2_clk *tmp ;
  {
  {
  tmp = __v4l2_clk_register_fixed(dev_id, id, rate, & __this_module);
  }
  return (tmp);
}
}
int em28xx_init_camera(struct em28xx *dev ) ;
static unsigned short micron_sensor_addrs[4U] = { 92U, 93U, 72U, 65534U};
static unsigned short omnivision_sensor_addrs[3U] = { 33U, 48U, 65534U};
static struct soc_camera_link camlink =
     {0UL, 0, 1, 0UL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "em28xx", 0, 0};
static int em28xx_initialize_mt9m111(struct em28xx *dev )
{
  int i ;
  unsigned char regs[4U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 10U;
  regs[2][1] = 0U;
  regs[2][2] = 33U;
  regs[3][0] = 33U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  i = 0;
  goto ldv_36570;
  ldv_36569:
  {
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs) + (unsigned long )i, 3);
  i = i + 1;
  }
  ldv_36570: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_36569;
  } else {
  }
  return (0);
}
}
static int em28xx_initialize_mt9m001(struct em28xx *dev )
{
  int i ;
  unsigned char regs[13U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 4U;
  regs[2][1] = 5U;
  regs[2][2] = 0U;
  regs[3][0] = 3U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  regs[4][0] = 32U;
  regs[4][1] = 17U;
  regs[4][2] = 0U;
  regs[5][0] = 6U;
  regs[5][1] = 0U;
  regs[5][2] = 16U;
  regs[6][0] = 43U;
  regs[6][1] = 0U;
  regs[6][2] = 36U;
  regs[7][0] = 46U;
  regs[7][1] = 0U;
  regs[7][2] = 36U;
  regs[8][0] = 53U;
  regs[8][1] = 0U;
  regs[8][2] = 36U;
  regs[9][0] = 45U;
  regs[9][1] = 0U;
  regs[9][2] = 32U;
  regs[10][0] = 44U;
  regs[10][1] = 0U;
  regs[10][2] = 32U;
  regs[11][0] = 9U;
  regs[11][1] = 10U;
  regs[11][2] = 212U;
  regs[12][0] = 53U;
  regs[12][1] = 0U;
  regs[12][2] = 87U;
  i = 0;
  goto ldv_36580;
  ldv_36579:
  {
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs) + (unsigned long )i, 3);
  i = i + 1;
  }
  ldv_36580: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_36579;
  } else {
  }
  return (0);
}
}
static int em28xx_probe_sensor_micron(struct em28xx *dev )
{
  int ret ;
  int i ;
  char *name ;
  u8 reg ;
  __be16 id_be ;
  u16 id ;
  struct i2c_client client ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  {
  client = dev->i2c_client[dev->def_i2c_bus];
  dev->em28xx_sensor = 0;
  i = 0;
  goto ldv_36605;
  ldv_36604:
  {
  client.addr = micron_sensor_addrs[i];
  reg = 0U;
  ret = i2c_master_send((struct i2c_client const *)(& client), (char const *)(& reg),
                        1);
  }
  if (ret < 0) {
    if (ret != -19) {
      {
      printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
             (int )client.addr << 1, ret);
      }
    } else {
    }
    goto ldv_36592;
  } else {
  }
  {
  ret = i2c_master_recv((struct i2c_client const *)(& client), (char *)(& id_be),
                        2);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36592;
  } else {
  }
  {
  tmp = __fswab16((int )id_be);
  id = tmp;
  reg = 255U;
  ret = i2c_master_send((struct i2c_client const *)(& client), (char const *)(& reg),
                        1);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36592;
  } else {
  }
  {
  ret = i2c_master_recv((struct i2c_client const *)(& client), (char *)(& id_be),
                        2);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36592;
  } else {
  }
  {
  tmp___0 = __fswab16((int )id_be);
  }
  if ((int )id != (int )tmp___0) {
    goto ldv_36592;
  } else {
  }
  {
  tmp___1 = __fswab16((int )id_be);
  id = tmp___1;
  }
  {
  if ((int )id == 4642) {
    goto case_4642;
  } else {
  }
  if ((int )id == 4649) {
    goto case_4649;
  } else {
  }
  if ((int )id == 5171) {
    goto case_5171;
  } else {
  }
  if ((int )id == 5178) {
    goto case_5178;
  } else {
  }
  if ((int )id == 5260) {
    goto case_5260;
  } else {
  }
  if ((int )id == 5393) {
    goto case_5393;
  } else {
  }
  if ((int )id == 33330) {
    goto case_33330;
  } else {
  }
  if ((int )id == 33347) {
    goto case_33347;
  } else {
  }
  if ((int )id == 33841) {
    goto case_33841;
  } else {
  }
  goto switch_default;
  case_4642:
  name = (char *)"MT9V012";
  goto ldv_36594;
  case_4649:
  name = (char *)"MT9V112";
  goto ldv_36594;
  case_5171:
  name = (char *)"MT9M011";
  goto ldv_36594;
  case_5178:
  name = (char *)"MT9M111";
  dev->em28xx_sensor = 3;
  goto ldv_36594;
  case_5260:
  name = (char *)"MT9M112";
  goto ldv_36594;
  case_5393:
  name = (char *)"MT9D011";
  goto ldv_36594;
  case_33330: ;
  case_33347:
  name = (char *)"MT9V011";
  dev->em28xx_sensor = 1;
  goto ldv_36594;
  case_33841:
  name = (char *)"MT9M001";
  dev->em28xx_sensor = 2;
  goto ldv_36594;
  switch_default:
  {
  printk("\016%s: unknown Micron sensor detected: 0x%04x\n", (char *)(& dev->name),
         (int )id);
  }
  return (0);
  switch_break: ;
  }
  ldv_36594: ;
  if ((unsigned int )dev->em28xx_sensor == 0U) {
    {
    printk("\016%s: unsupported sensor detected: %s\n", (char *)(& dev->name), name);
    }
  } else {
    {
    printk("\016%s: sensor %s detected\n", (char *)(& dev->name), name);
    }
  }
  dev->i2c_client[dev->def_i2c_bus].addr = client.addr;
  return (0);
  ldv_36592:
  i = i + 1;
  ldv_36605: ;
  if ((unsigned int )micron_sensor_addrs[i] != 65534U) {
    goto ldv_36604;
  } else {
  }
  return (-19);
}
}
static int em28xx_probe_sensor_omnivision(struct em28xx *dev )
{
  int ret ;
  int i ;
  char *name ;
  u8 reg ;
  u16 id ;
  struct i2c_client client ;
  {
  client = dev->i2c_client[dev->def_i2c_bus];
  dev->em28xx_sensor = 0;
  i = 0;
  goto ldv_36632;
  ldv_36631:
  {
  client.addr = omnivision_sensor_addrs[i];
  reg = 28U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  }
  if (ret < 0) {
    if (ret != -19) {
      {
      printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
             (int )client.addr << 1, ret);
      }
    } else {
    }
    goto ldv_36616;
  } else {
  }
  {
  id = (int )((u16 )ret) << 8U;
  reg = 29U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36616;
  } else {
  }
  id = (int )id + (int )((u16 )ret);
  if ((unsigned int )id != 32674U) {
    goto ldv_36616;
  } else {
  }
  {
  reg = 10U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36616;
  } else {
  }
  {
  id = (int )((u16 )ret) << 8U;
  reg = 11U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  }
  if (ret < 0) {
    {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    }
    goto ldv_36616;
  } else {
  }
  id = (int )id + (int )((u16 )ret);
  {
  if ((int )id == 9794) {
    goto case_9794;
  } else {
  }
  if ((int )id == 30280) {
    goto case_30280;
  } else {
  }
  if ((int )id == 30304) {
    goto case_30304;
  } else {
  }
  if ((int )id == 30323) {
    goto case_30323;
  } else {
  }
  if ((int )id == 30496) {
    goto case_30496;
  } else {
  }
  if ((int )id == 30497) {
    goto case_30497;
  } else {
  }
  if ((int )id == 38472) {
    goto case_38472;
  } else {
  }
  if ((int )id == 38473) {
    goto case_38473;
  } else {
  }
  if ((int )id == 38480) {
    goto case_38480;
  } else {
  }
  if ((int )id == 38482) {
    goto case_38482;
  } else {
  }
  if ((int )id == 38486) {
    goto case_38486;
  } else {
  }
  if ((int )id == 38487) {
    goto case_38487;
  } else {
  }
  goto switch_default;
  case_9794:
  name = (char *)"OV2640";
  dev->em28xx_sensor = 4;
  goto ldv_36618;
  case_30280:
  name = (char *)"OV7648";
  goto ldv_36618;
  case_30304:
  name = (char *)"OV7660";
  goto ldv_36618;
  case_30323:
  name = (char *)"OV7670";
  goto ldv_36618;
  case_30496:
  name = (char *)"OV7720";
  goto ldv_36618;
  case_30497:
  name = (char *)"OV7725";
  goto ldv_36618;
  case_38472: ;
  case_38473:
  name = (char *)"OV9640";
  goto ldv_36618;
  case_38480: ;
  case_38482:
  name = (char *)"OV9650";
  goto ldv_36618;
  case_38486: ;
  case_38487:
  name = (char *)"OV9655";
  goto ldv_36618;
  switch_default:
  {
  printk("\016%s: unknown OmniVision sensor detected: 0x%04x\n", (char *)(& dev->name),
         (int )id);
  }
  return (0);
  switch_break: ;
  }
  ldv_36618: ;
  if ((unsigned int )dev->em28xx_sensor == 0U) {
    {
    printk("\016%s: unsupported sensor detected: %s\n", (char *)(& dev->name), name);
    }
  } else {
    {
    printk("\016%s: sensor %s detected\n", (char *)(& dev->name), name);
    }
  }
  dev->i2c_client[dev->def_i2c_bus].addr = client.addr;
  return (0);
  ldv_36616:
  i = i + 1;
  ldv_36632: ;
  if ((unsigned int )omnivision_sensor_addrs[i] != 65534U) {
    goto ldv_36631;
  } else {
  }
  return (-19);
}
}
int em28xx_detect_sensor(struct em28xx *dev )
{
  int ret ;
  {
  {
  ret = em28xx_probe_sensor_micron(dev);
  }
  if ((unsigned int )dev->em28xx_sensor == 0U && ret < 0) {
    {
    ret = em28xx_probe_sensor_omnivision(dev);
    }
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 0U && ret < 0) {
    {
    printk("\016%s: No sensor detected\n", (char *)(& dev->name));
    }
    return (-19);
  } else {
  }
  return (0);
}
}
int em28xx_init_camera(struct em28xx *dev )
{
  char clk_name[32U] ;
  struct i2c_client *client ;
  struct i2c_adapter *adap ;
  int ret ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct mt9v011_platform_data pdata ;
  struct i2c_board_info mt9v011_info ;
  unsigned int tmp___2 ;
  struct v4l2_subdev *tmp___3 ;
  struct v4l2_subdev *subdev ;
  struct i2c_board_info ov2640_info ;
  unsigned int tmp___4 ;
  struct v4l2_mbus_framefmt fmt ;
  {
  {
  client = (struct i2c_client *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus;
  adap = (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus;
  ret = 0;
  tmp = i2c_adapter_id(adap);
  snprintf((char *)(& clk_name), 32UL, "%d-%04x", tmp, (int )client->addr);
  dev->clk = v4l2_clk_register_fixed((char const *)(& clk_name), "mclk", 0xffffffffffffffeaUL);
  tmp___1 = IS_ERR((void const *)dev->clk);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)dev->clk);
    }
    return ((int )tmp___0);
  } else {
  }
  {
  if ((unsigned int )dev->em28xx_sensor == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  mt9v011_info.type[0] = 'm';
  mt9v011_info.type[1] = 't';
  mt9v011_info.type[2] = '9';
  mt9v011_info.type[3] = 'v';
  mt9v011_info.type[4] = '0';
  mt9v011_info.type[5] = '1';
  mt9v011_info.type[6] = '1';
  mt9v011_info.type[7] = '\000';
  tmp___2 = 8U;
  {
  while (1) {
    while_continue: ;
    if (tmp___2 >= 20U) {
      goto while_break;
    } else {
    }
    mt9v011_info.type[tmp___2] = (char)0;
    tmp___2 = tmp___2 + 1U;
  }
  while_break: ;
  }
  {
  mt9v011_info.flags = (unsigned short)0;
  mt9v011_info.addr = client->addr;
  mt9v011_info.platform_data = (void *)(& pdata);
  mt9v011_info.archdata = 0;
  mt9v011_info.of_node = 0;
  mt9v011_info.acpi_node.companion = 0;
  mt9v011_info.irq = 0;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  dev->board.xclk = 6U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  dev->sensor_xtal = 4300000;
  pdata.xtal = (unsigned int )dev->sensor_xtal;
  tmp___3 = v4l2_i2c_new_subdev_board(& dev->v4l2_dev, adap, & mt9v011_info, (unsigned short const *)0U);
  }
  if ((unsigned long )tmp___3 == (unsigned long )((struct v4l2_subdev *)0)) {
    ret = -19;
    goto ldv_36648;
  } else {
  }
  dev->vinmode = 13;
  dev->vinctl = 0;
  goto ldv_36648;
  case_2:
  {
  dev->sensor_xres = 1280;
  dev->sensor_yres = 1024;
  em28xx_initialize_mt9m001(dev);
  dev->vinmode = 12;
  dev->vinctl = 0;
  }
  goto ldv_36648;
  case_3:
  {
  dev->sensor_xres = 640;
  dev->sensor_yres = 512;
  dev->board.xclk = 10U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  em28xx_initialize_mt9m111(dev);
  dev->vinmode = 10;
  dev->vinctl = 0;
  }
  goto ldv_36648;
  case_4:
  ov2640_info.type[0] = 'o';
  ov2640_info.type[1] = 'v';
  ov2640_info.type[2] = '2';
  ov2640_info.type[3] = '6';
  ov2640_info.type[4] = '4';
  ov2640_info.type[5] = '0';
  ov2640_info.type[6] = '\000';
  tmp___4 = 7U;
  {
  while (1) {
    while_continue___0: ;
    if (tmp___4 >= 20U) {
      goto while_break___0;
    } else {
    }
    ov2640_info.type[tmp___4] = (char)0;
    tmp___4 = tmp___4 + 1U;
  }
  while_break___0: ;
  }
  {
  ov2640_info.flags = 36864U;
  ov2640_info.addr = client->addr;
  ov2640_info.platform_data = (void *)(& camlink);
  ov2640_info.archdata = 0;
  ov2640_info.of_node = 0;
  ov2640_info.acpi_node.companion = 0;
  ov2640_info.irq = 0;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  subdev = v4l2_i2c_new_subdev_board(& dev->v4l2_dev, adap, & ov2640_info, (unsigned short const *)0U);
  }
  if ((unsigned long )subdev == (unsigned long )((struct v4l2_subdev *)0)) {
    ret = -19;
    goto ldv_36648;
  } else {
  }
  fmt.code = 8200U;
  fmt.width = 640U;
  fmt.height = 480U;
  if ((unsigned long )subdev != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(subdev->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((subdev->ops)->video)->s_mbus_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       struct v4l2_mbus_framefmt * ))0)) {
      {
      (*(((subdev->ops)->video)->s_mbus_fmt))(subdev, & fmt);
      }
    } else {
    }
  } else {
  }
  {
  dev->board.xclk = 11U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  dev->vinmode = 8;
  dev->vinctl = 0;
  }
  goto ldv_36648;
  case_0: ;
  switch_default:
  ret = -22;
  switch_break: ;
  }
  ldv_36648: ;
  if (ret < 0) {
    {
    v4l2_clk_unregister_fixed(dev->clk);
    dev->clk = (struct v4l2_clk *)0;
    }
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_em28xx_init_camera[19U] =
  { 'e', 'm', '2', '8',
        'x', 'x', '_', 'i',
        'n', 'i', 't', '_',
        'c', 'a', 'm', 'e',
        'r', 'a', '\000'};
struct kernel_symbol const __ksymtab_em28xx_init_camera ;
struct kernel_symbol const __ksymtab_em28xx_init_camera = {(unsigned long )(& em28xx_init_camera), (char const *)(& __kstrtab_em28xx_init_camera)};
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
int ldv_filter_err_code(int ret_val ) ;
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
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
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_MUTEXES_ctrl_urb_lock_of_em28xx ;
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_ctrl_urb_lock_of_em28xx);
  LDV_MUTEXES_ctrl_urb_lock_of_em28xx = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_ctrl_urb_lock_of_em28xx);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_ctrl_urb_lock_of_em28xx = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_ctrl_urb_lock_of_em28xx) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_ctrl_urb_lock_of_em28xx);
  tmp = ldv_mutex_is_locked_ctrl_urb_lock_of_em28xx(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_ctrl_urb_lock_of_em28xx = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ctrl_urb_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_ctrl_urb_lock_of_em28xx(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_ctrl_urb_lock_of_em28xx);
  LDV_MUTEXES_ctrl_urb_lock_of_em28xx = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_em28xx_devlist_mutex ;
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_em28xx_devlist_mutex);
  LDV_MUTEXES_em28xx_devlist_mutex = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_em28xx_devlist_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_em28xx_devlist_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_em28xx_devlist_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_em28xx_devlist_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_em28xx_devlist_mutex) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_em28xx_devlist_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_em28xx_devlist_mutex);
  tmp = ldv_mutex_is_locked_em28xx_devlist_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_em28xx_devlist_mutex = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_em28xx_devlist_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_em28xx_devlist_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_em28xx_devlist_mutex);
  LDV_MUTEXES_em28xx_devlist_mutex = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_em28xx ;
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_em28xx);
  LDV_MUTEXES_lock_of_em28xx = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_em28xx);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_em28xx = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_em28xx) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_em28xx(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_em28xx);
  tmp = ldv_mutex_is_locked_lock_of_em28xx(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_em28xx = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_em28xx(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_em28xx);
  LDV_MUTEXES_lock_of_em28xx = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_v4l2_ctrl_handler ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_v4l2_ctrl_handler(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_vb_lock_of_videobuf_queue ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_vb_lock_of_videobuf_queue) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_mutex_is_locked_vb_lock_of_videobuf_queue(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_vb_lock_of_videobuf_queue(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_ctrl_urb_lock_of_em28xx = 0;
  LDV_MUTEXES_em28xx_devlist_mutex = 0;
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_em28xx = 0;
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_ctrl_urb_lock_of_em28xx);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_em28xx_devlist_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_em28xx);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __rt_mutex_init(struct rt_mutex *arg0, const char *arg1) {
  return;
}
struct v4l2_clk *__v4l2_clk_register_fixed(const char *arg0, const char *arg1, unsigned long arg2, struct module *arg3) {
  return ldv_malloc(sizeof(struct v4l2_clk));
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
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
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_usb_register_driver() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rt_mutex_trylock(struct rt_mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void rt_mutex_unlock(struct rt_mutex *arg0) {
  return;
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_clear_halt(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_clk_unregister_fixed(struct v4l2_clk *arg0) {
  return;
}
struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device *arg0, struct i2c_adapter *arg1, struct i2c_board_info *arg2, const unsigned short *arg3) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
