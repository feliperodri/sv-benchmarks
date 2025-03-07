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
typedef __u8 uint8_t;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
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
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
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
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
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
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
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
struct ldv_thread;
struct timespec;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct __anonstruct____missing_field_name_198 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_199 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField66 ;
   struct __anonstruct____missing_field_name_199 __annonCompField67 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_197 __annonCompField68 ;
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
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
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
struct i2c_adapter;
struct i2c_client;
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
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
union __anonunion____missing_field_name_201 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_201 __annonCompField69 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_202 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_202 __annonCompField70 ;
   __u32 reserved[2U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
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
union __anonunion____missing_field_name_205 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_205 __annonCompField71 ;
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
union __anonunion____missing_field_name_206 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_206 __annonCompField72 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_207 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_207 __annonCompField73 ;
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
union __anonunion____missing_field_name_208 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_208 __annonCompField74 ;
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
union __anonunion_parm_217 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_217 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_220 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_220 __annonCompField79 ;
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
struct __anonstruct_v4l_226 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_227 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_228 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_225 {
   struct __anonstruct_v4l_226 v4l ;
   struct __anonstruct_fb_227 fb ;
   struct __anonstruct_alsa_228 alsa ;
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
   union __anonunion_info_225 info ;
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
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
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
struct tm6000_buffer;
struct usb_isoc_ctl {
   int max_pkt_size ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
   u8 cmd ;
   int pos ;
   int size ;
   int pktsize ;
   int vfield ;
   int field ;
   u32 tmp_buf ;
   int tmp_buf_len ;
   struct tm6000_buffer *buf ;
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
struct __anonstruct_of_232 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_233 {
   char const *name ;
};
struct __anonstruct_i2c_234 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_235 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_231 {
   struct __anonstruct_of_232 of ;
   struct __anonstruct_device_name_233 device_name ;
   struct __anonstruct_i2c_234 i2c ;
   struct __anonstruct_custom_235 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_231 match ;
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
struct __anonstruct_pad_236 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_236 *pad ;
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
union __anonunion____missing_field_name_237 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_238 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_239 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_240 {
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
   union __anonunion____missing_field_name_237 __annonCompField81 ;
   union __anonunion____missing_field_name_238 __annonCompField82 ;
   unsigned long flags ;
   union __anonunion_cur_239 cur ;
   union __anonunion____missing_field_name_240 __annonCompField83 ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
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
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
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
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
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
typedef enum fe_code_rate fe_code_rate_t;
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
typedef enum fe_modulation fe_modulation_t;
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
typedef enum fe_transmit_mode fe_transmit_mode_t;
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
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
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
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
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
typedef enum fe_delivery_system fe_delivery_system_t;
union __anonunion____missing_field_name_241 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_241 __annonCompField84 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_243 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_242 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_243 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_242 u ;
   int result ;
};
enum ldv_26341 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_26341 dmx_output_t;
enum ldv_26343 {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum ldv_26343 dmx_input_t;
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
enum ldv_26359 {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum ldv_26359 dmx_source_t;
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
union __anonunion_feed_244 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_245 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_244 feed ;
   union __anonunion_cb_245 cb ;
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
struct dvb_frontend;
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
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
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
struct __anonstruct_layer_246 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_246 layer[3U] ;
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
union __anonunion_filter_247 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_248 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_249 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_247 filter ;
   union __anonunion_feed_248 feed ;
   union __anonunion_params_249 params ;
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
   unsigned int exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
enum tm6000_itype {
    TM6000_INPUT_TV = 1,
    TM6000_INPUT_COMPOSITE1 = 2,
    TM6000_INPUT_COMPOSITE2 = 3,
    TM6000_INPUT_SVIDEO = 4,
    TM6000_INPUT_DVB = 5,
    TM6000_INPUT_RADIO = 6
} ;
enum tm6000_mux {
    TM6000_VMUX_VIDEO_A = 1,
    TM6000_VMUX_VIDEO_B = 2,
    TM6000_VMUX_VIDEO_AB = 3,
    TM6000_AMUX_ADC1 = 4,
    TM6000_AMUX_ADC2 = 5,
    TM6000_AMUX_SIF1 = 6,
    TM6000_AMUX_SIF2 = 7,
    TM6000_AMUX_I2S = 8
} ;
enum tm6000_devtype {
    TM6000 = 0,
    TM5600 = 1,
    TM6010 = 2
} ;
struct tm6000_input {
   enum tm6000_itype type ;
   enum tm6000_mux vmux ;
   enum tm6000_mux amux ;
   unsigned int v_gpio ;
   unsigned int a_gpio ;
};
struct tm6000_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
};
struct tm6000_buffer {
   struct videobuf_buffer vb ;
   struct tm6000_fmt *fmt ;
};
struct tm6000_dmaqueue {
   struct list_head active ;
   struct list_head queued ;
   struct task_struct *kthread ;
   wait_queue_head_t wq ;
   int frame ;
   int ini_jiffies ;
};
enum tm6000_core_state {
    DEV_INITIALIZED = 1,
    DEV_DISCONNECTED = 2,
    DEV_MISCONFIGURED = 4
} ;
enum tm6000_mode {
    TM6000_MODE_UNKNOWN = 0,
    TM6000_MODE_ANALOG = 1,
    TM6000_MODE_DIGITAL = 2
} ;
struct tm6000_gpio {
   int tuner_reset ;
   int tuner_on ;
   int demod_reset ;
   int demod_on ;
   int power_led ;
   int dvb_led ;
   int ir ;
};
struct tm6000_capabilities {
   unsigned int has_tuner : 1 ;
   unsigned int has_tda9874 : 1 ;
   unsigned int has_dvb : 1 ;
   unsigned int has_zl10353 : 1 ;
   unsigned int has_eeprom : 1 ;
   unsigned int has_remote : 1 ;
   unsigned int has_radio : 1 ;
};
struct tm6000_dvb {
   struct dvb_adapter adapter ;
   struct dvb_demux demux ;
   struct dvb_frontend *frontend ;
   struct dmxdev dmxdev ;
   unsigned int streams ;
   struct urb *bulk_urb ;
   struct mutex mutex ;
};
struct snd_card;
struct tm6000_core;
struct snd_pcm_substream;
struct snd_tm6000_card {
   struct snd_card *card ;
   spinlock_t reg_lock ;
   struct tm6000_core *core ;
   struct snd_pcm_substream *substream ;
   unsigned int buf_pos ;
   unsigned int period_pos ;
};
struct tm6000_endpoint {
   struct usb_host_endpoint *endp ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   unsigned int maxsize ;
};
struct tm6000_fh;
struct tm6000_IR;
struct tm6000_core {
   char name[30U] ;
   int model ;
   int devno ;
   enum tm6000_devtype dev_type ;
   unsigned char eedata[256U] ;
   unsigned int eedata_size ;
   v4l2_std_id norm ;
   int width ;
   int height ;
   enum tm6000_core_state state ;
   struct tm6000_capabilities caps ;
   struct work_struct request_module_wk ;
   int tuner_type ;
   int tuner_addr ;
   struct tm6000_gpio gpio ;
   char *ir_codes ;
   __u8 radio ;
   int demod_addr ;
   int audio_bitrate ;
   struct i2c_adapter i2c_adap ;
   struct i2c_client i2c_client ;
   struct list_head devlist ;
   int users ;
   struct tm6000_fh *resources ;
   bool is_res_read ;
   struct video_device *vfd ;
   struct video_device *radio_dev ;
   struct tm6000_dmaqueue vidq ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct v4l2_ctrl_handler radio_ctrl_handler ;
   int input ;
   struct tm6000_input vinput[3U] ;
   struct tm6000_input rinput ;
   int freq ;
   unsigned int fourcc ;
   enum tm6000_mode mode ;
   int ctl_mute ;
   int ctl_volume ;
   int amode ;
   struct tm6000_dvb *dvb ;
   struct snd_tm6000_card *adev ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
   struct tm6000_IR *ir ;
   struct mutex lock ;
   struct mutex usb_lock ;
   struct usb_device *udev ;
   struct tm6000_endpoint bulk_in ;
   struct tm6000_endpoint bulk_out ;
   struct tm6000_endpoint isoc_in ;
   struct tm6000_endpoint isoc_out ;
   struct tm6000_endpoint int_in ;
   struct tm6000_endpoint int_out ;
   int scaler ;
   struct usb_isoc_ctl isoc_ctl ;
   spinlock_t slock ;
   char **urb_buffer ;
   dma_addr_t *urb_dma ;
   unsigned int urb_size ;
   unsigned long quirks ;
};
struct tm6000_fh {
   struct v4l2_fh fh ;
   struct tm6000_core *dev ;
   unsigned int radio ;
   struct tm6000_fmt *fmt ;
   unsigned int width ;
   unsigned int height ;
   struct videobuf_queue vb_vidq ;
   enum v4l2_buf_type type ;
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
struct xc5000_config {
   u8 i2c_address ;
   u32 if_khz ;
   u8 radio_input ;
   u16 xtal_khz ;
   int chip_id ;
};
struct tm6000_board {
   char *name ;
   char eename[16U] ;
   unsigned int eename_size ;
   unsigned int eename_pos ;
   struct tm6000_capabilities caps ;
   enum tm6000_devtype type ;
   int tuner_type ;
   int tuner_addr ;
   int demod_addr ;
   struct tm6000_gpio gpio ;
   struct tm6000_input vinput[3U] ;
   struct tm6000_input rinput ;
   char *ir_codes ;
};
struct ldv_struct_EMGentry_12 {
   int signal_pending ;
};
struct ldv_struct_timer_instance_4 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
struct ldv_struct_usb_instance_6 {
   struct usb_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
enum hrtimer_restart;
enum tm6000_ops_type {
    TM6000_AUDIO = 16,
    TM6000_DVB = 32
} ;
struct tm6000_ops {
   struct list_head next ;
   char *name ;
   enum tm6000_ops_type type ;
   int (*init)(struct tm6000_core * ) ;
   int (*fini)(struct tm6000_core * ) ;
   int (*fillbuf)(struct tm6000_core * , char * , int ) ;
};
struct reg_init {
   u8 req ;
   u8 reg ;
   u8 val ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
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
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_201 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_201 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_202 {
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
   union __anonunion_m_202 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
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
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_208 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_207___0 {
   struct __anonstruct_raw_208 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_207___0 __annonCompField74 ;
};
struct __anonstruct_stop_210 {
   __u64 pts ;
};
struct __anonstruct_start_211 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_212 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_209 {
   struct __anonstruct_stop_210 stop ;
   struct __anonstruct_start_211 start ;
   struct __anonstruct_raw_212 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_209 __annonCompField75 ;
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
union __anonunion_fmt_214 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_214 fmt ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
typedef struct poll_table_struct poll_table;
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
enum hrtimer_restart;
struct tm6000_reg_settings {
   unsigned char req ;
   unsigned char reg ;
   unsigned char value ;
};
struct tm6000_std_settings {
   v4l2_std_id id ;
   struct tm6000_reg_settings *common ;
};
enum hrtimer_restart;
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
union __anonunion_u_196 {
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
   union __anonunion_u_196 u ;
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
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protos ;
   u64 enabled_protocols ;
   u32 users ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
};
struct tm6000_ir_poll_result {
   u16 rc_data ;
};
struct tm6000_IR {
   struct tm6000_core *dev ;
   struct rc_dev *rc ;
   char name[32U] ;
   char phys[32U] ;
   int polling ;
   struct delayed_work work ;
   u8 wait : 1 ;
   u8 pwled : 2 ;
   u8 submit_urb : 1 ;
   u16 key_addr ;
   struct urb *int_urb ;
   u64 rc_type ;
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
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
extern void msleep(unsigned int ) ;
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
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
static void *ldv_dev_get_drvdata_38(struct device const *dev ) ;
static int ldv_dev_set_drvdata_39(struct device *dev , void *data ) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_38((struct device const *)(& intf->dev));
  }
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  {
  ldv_dev_set_drvdata_39(& intf->dev, data);
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
static int ldv_usb_register_driver_56(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_57(struct usb_driver *ldv_func_arg1 ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
extern int __request_module(bool , char const * , ...) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
int tm6000_tuner_callback(void *ptr , int component , int command , int arg ) ;
int tm6000_xc5000_callback(void *ptr , int component , int command , int arg ) ;
int tm6000_cards_setup(struct tm6000_core *dev ) ;
void tm6000_flash_led(struct tm6000_core *dev , u8 state ) ;
int tm6000_set_reg(struct tm6000_core *dev , u8 req , u16 value , u16 index ) ;
int tm6000_i2c_reset(struct tm6000_core *dev , u16 tsleep ) ;
int tm6000_init(struct tm6000_core *dev ) ;
int tm6000_v4l2_register(struct tm6000_core *dev ) ;
int tm6000_v4l2_unregister(struct tm6000_core *dev ) ;
void tm6000_remove_from_devlist(struct tm6000_core *dev ) ;
void tm6000_add_into_devlist(struct tm6000_core *dev ) ;
void tm6000_init_extension(struct tm6000_core *dev ) ;
void tm6000_close_extension(struct tm6000_core *dev ) ;
int tm6000_i2c_register(struct tm6000_core *dev ) ;
int tm6000_i2c_unregister(struct tm6000_core *dev ) ;
int tm6000_ir_init(struct tm6000_core *dev ) ;
int tm6000_ir_fini(struct tm6000_core *dev ) ;
void tm6000_ir_wait(struct tm6000_core *dev , u8 state ) ;
static unsigned int card[16U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned long tm6000_devused ;
static struct tm6000_board tm6000_boards[17U] =
  { {(char *)"Unknown tm6000 video grabber", {(char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0},
      0U, 0U, {1U, 0U, 0U, 0U, 1U, 0U, 0U}, 0, 0, 0, 0, {258, 0, 0, 0, 0, 0, 0}, {{1,
                                                                                   2,
                                                                                   4,
                                                                                   0U,
                                                                                   0U},
                                                                                  {2,
                                                                                   1,
                                                                                   5,
                                                                                   0U,
                                                                                   0U},
                                                                                  {4,
                                                                                   3,
                                                                                   5,
                                                                                   0U,
                                                                                   0U}},
      {0, 0, 0, 0U, 0U}, 0},
        {(char *)"Generic tm5600 board", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0}, 0U, 0U, {1U, 0U, 0U, 0U, 1U, 0U,
                                                          0U}, 1, 71, 97, 0, {258,
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0},
      {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"Generic tm6000 board", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0}, 0U, 0U, {1U, 0U, 0U, 0U, 1U, 0U,
                                                          0U}, 0, 71, 97, 0, {258,
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0},
      {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"Generic tm6010 board", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0}, 0U, 0U, {1U, 0U, 1U, 1U, 1U, 1U,
                                                          0U}, 2, 71, 97, 15, {260,
                                                                               261,
                                                                               259,
                                                                               262,
                                                                               769,
                                                                               263,
                                                                               258},
      {{1, 2, 6, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"10Moons UT 821", {49, 48, 77, 79, 79, 78, 83, 53, 54, 48, 48, -1, 69,
                                 91}, 14U, 20U, {1U, 0U, 0U, 0U, 1U, 0U, 0U}, 1, 71,
      97, 0, {258, 0, 0, 0, 0, 0, 0}, {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3,
                                                                              5, 0U,
                                                                              0U}},
      {0, 0, 0, 0U, 0U}, 0},
        {(char *)"10Moons UT 330", {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                 (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                 (char)0, (char)0, (char)0, (char)0}, 0U, 0U, {1U,
                                                                               0U,
                                                                               0U,
                                                                               0U,
                                                                               1U,
                                                                               0U,
                                                                               0U},
      0, 56, 100, 0, {0, 0, 0, 0, 0, 0, 0}, {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U},
                                             {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"ADSTECH Dual TV USB", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                      (char)0, (char)0, (char)0, (char)0, (char)0,
                                      (char)0, (char)0, (char)0, (char)0, (char)0,
                                      (char)0}, 0U, 0U, {1U, 1U, 1U, 1U, 1U, 0U, 0U},
      0, 71, 100, 0, {0, 0, 0, 0, 0, 0, 0}, {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U},
                                             {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"Freecom Hybrid Stick / Moka DVB-T Receiver Dual", {(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
      0U, 0U, {1U, 0U, 1U, 1U, 0U, 1U, 0U}, 0, 71, 97, 15, {768, 0, 0, 0, 0, 0, 0},
      {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"ADSTECH Mini Dual TV USB", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0}, 0U, 0U, {1U, 0U, 1U, 1U, 0U,
                                                              0U, 0U}, 0, 71, 100,
      15, {768, 0, 0, 0, 0, 0, 0}, {{1, 2, 4, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5,
                                                                           0U, 0U}},
      {0, 0, 0, 0U, 0U}, 0},
        {(char *)"Hauppauge WinTV HVR-900H / WinTV USB2-Stick", {72, 0, 86, 0, 82, 0,
                                                              57, 0, 48, 0, 48, 0,
                                                              72, 0}, 14U, 66U, {1U,
                                                                                 0U,
                                                                                 1U,
                                                                                 1U,
                                                                                 1U,
                                                                                 1U,
                                                                                 0U},
      2, 71, 97, 15, {260, 261, 259, 262, 769, 263, 258}, {{1, 2, 6, 0U, 0U}, {2,
                                                                               1,
                                                                               5,
                                                                               0U,
                                                                               0U},
                                                           {4, 3, 5, 0U, 0U}}, {0,
                                                                                0,
                                                                                0,
                                                                                0U,
                                                                                0U},
      (char *)"rc-hauppauge"},
        {(char *)"Beholder Wander DVB-T/TV/FM USB2.0", {(char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0},
      0U, 0U, {1U, 0U, 1U, 1U, 1U, 1U, 1U}, 2, 76, 97, 15, {258, 0, 259, 0, 768, 0,
                                                            0}, {{1, 2, 6, 0U, 0U},
                                                                 {2, 1, 5, 0U, 0U},
                                                                 {4, 3, 5, 0U, 0U}},
      {6, 0, 4, 0U, 0U}, 0},
        {(char *)"Beholder Voyager TV/FM USB2.0", {(char)0, (char)0, (char)0, (char)0,
                                                (char)0, (char)0, (char)0, (char)0,
                                                (char)0, (char)0, (char)0, (char)0,
                                                (char)0, (char)0, (char)0, (char)0},
      0U, 0U, {1U, 0U, 0U, 0U, 1U, 1U, 1U}, 2, 76, 97, 0, {258, 0, 0, 0, 768, 0, 0},
      {{1, 2, 6, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {6, 0, 4, 0U, 0U},
      0},
        {(char *)"Terratec Cinergy Hybrid XE / Cinergy Hybrid-Stick", {(char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0},
      0U, 0U, {1U, 0U, 1U, 1U, 1U, 1U, 1U}, 2, 71, 97, 15, {260, 261, 259, 262, 769,
                                                            263, 258}, {{1, 2, 6,
                                                                         0U, 0U},
                                                                        {2, 1, 5,
                                                                         0U, 0U},
                                                                        {4, 3, 5,
                                                                         0U, 0U}},
      {6, 0, 6, 0U, 0U}, (char *)"rc-nec-terratec-cinergy-xs"},
        {(char *)"Twinhan TU501(704D1)", {(char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0, (char)0, (char)0, (char)0, (char)0,
                                       (char)0}, 0U, 0U, {1U, 0U, 1U, 1U, 1U, 1U,
                                                          0U}, 2, 71, 97, 15, {260,
                                                                               261,
                                                                               259,
                                                                               262,
                                                                               769,
                                                                               263,
                                                                               258},
      {{1, 2, 6, 0U, 0U}, {2, 1, 5, 0U, 0U}, {4, 3, 5, 0U, 0U}}, {0, 0, 0, 0U, 0U},
      0},
        {(char *)"Beholder Wander Lite DVB-T/TV/FM USB2.0", {(char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0}, 0U, 0U, {1U, 0U,
                                                                             1U, 1U,
                                                                             1U, 0U,
                                                                             1U},
      2, 76, 97, 15, {258, 0, 259, 0, 768, 0, 0}, {{1, 2, 6, 0U, 0U}}, {6, 0, 4, 0U,
                                                                        0U}, 0},
        {(char *)"Beholder Voyager Lite TV/FM USB2.0", {(char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0,
                                                     (char)0, (char)0, (char)0, (char)0},
      0U, 0U, {1U, 0U, 0U, 0U, 1U, 0U, 1U}, 2, 76, 97, 0, {258, 0, 0, 0, 768, 0, 0},
      {{1, 2, 6, 0U, 0U}}, {6, 0, 4, 0U, 0U}, 0},
        {(char *)"Terratec Grabster AV 150/250 MX", {(char)0, (char)0, (char)0, (char)0,
                                                  (char)0, (char)0, (char)0, (char)0,
                                                  (char)0, (char)0, (char)0, (char)0,
                                                  (char)0, (char)0, (char)0, (char)0},
      0U, 0U, {0U, 0U, 0U, 0U, 0U, 0U, 0U}, 1, 4, 0, 0, {0, 0, 0, 0, 0, 0, 0}, {{1,
                                                                                 2,
                                                                                 4,
                                                                                 0U,
                                                                                 0U},
                                                                                {2,
                                                                                 1,
                                                                                 5,
                                                                                 0U,
                                                                                 0U},
                                                                                {4,
                                                                                 3,
                                                                                 5,
                                                                                 0U,
                                                                                 0U}},
      {0, 0, 0, 0U, 0U}, 0}};
static struct usb_device_id tm6000_id_table[21U] =
  { {3U, 24576U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 24576U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1761U, 62258U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 5290U, 1568U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 1761U, 45881U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL},
        {3U, 8256U, 26112U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8256U, 26113U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8256U, 26128U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8256U, 26129U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 24576U, 57024U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 10UL},
        {3U, 24576U, 57025U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 11UL},
        {3U, 3277U, 134U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      12UL},
        {3U, 3277U, 165U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      12UL},
        {3U, 3277U, 121U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 5075U, 12864U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 5075U, 12865U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 5075U, 12867U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 5075U, 12900U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 24576U, 57026U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14UL},
        {3U, 24576U, 57027U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 15UL}};
struct usb_device_id const __mod_usb_device_table ;
void tm6000_flash_led(struct tm6000_core *dev , u8 state )
{
  {
  if (dev->gpio.power_led == 0) {
    return;
  } else {
  }
  if ((unsigned int )state != 0U) {
    {
    if (dev->model == 9) {
      goto case_9;
    } else {
    }
    if (dev->model == 12) {
      goto case_12;
    } else {
    }
    if (dev->model == 13) {
      goto case_13;
    } else {
    }
    if (dev->model == 10) {
      goto case_10;
    } else {
    }
    if (dev->model == 11) {
      goto case_11;
    } else {
    }
    if (dev->model == 14) {
      goto case_14;
    } else {
    }
    if (dev->model == 15) {
      goto case_15;
    } else {
    }
    goto switch_break;
    case_9: ;
    case_12: ;
    case_13:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 0);
    }
    goto ldv_37521;
    case_10: ;
    case_11: ;
    case_14: ;
    case_15:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 1);
    }
    goto ldv_37521;
    switch_break: ;
    }
    ldv_37521: ;
  } else {
    {
    if (dev->model == 9) {
      goto case_9___0;
    } else {
    }
    if (dev->model == 12) {
      goto case_12___0;
    } else {
    }
    if (dev->model == 13) {
      goto case_13___0;
    } else {
    }
    if (dev->model == 10) {
      goto case_10___0;
    } else {
    }
    if (dev->model == 11) {
      goto case_11___0;
    } else {
    }
    if (dev->model == 14) {
      goto case_14___0;
    } else {
    }
    if (dev->model == 15) {
      goto case_15___0;
    } else {
    }
    goto switch_break___0;
    case_9___0: ;
    case_12___0: ;
    case_13___0:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 1);
    }
    goto ldv_37529;
    case_10___0: ;
    case_11___0: ;
    case_14___0: ;
    case_15___0:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 0);
    }
    goto ldv_37529;
    switch_break___0: ;
    }
    ldv_37529: ;
  }
  return;
}
}
int tm6000_xc5000_callback(void *ptr , int component , int command , int arg )
{
  int rc ;
  struct tm6000_core *dev ;
  {
  rc = 0;
  dev = (struct tm6000_core *)ptr;
  if (dev->tuner_type != 76) {
    return (0);
  } else {
  }
  {
  if (command == 0) {
    goto case_0;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 0);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  }
  goto ldv_37543;
  switch_break: ;
  }
  ldv_37543: ;
  return (rc);
}
}
static char const __kstrtab_tm6000_xc5000_callback[23U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'x',
        'c', '5', '0', '0',
        '0', '_', 'c', 'a',
        'l', 'l', 'b', 'a',
        'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_tm6000_xc5000_callback ;
struct kernel_symbol const __ksymtab_tm6000_xc5000_callback = {(unsigned long )(& tm6000_xc5000_callback), (char const *)(& __kstrtab_tm6000_xc5000_callback)};
int tm6000_tuner_callback(void *ptr , int component , int command , int arg )
{
  int rc ;
  struct tm6000_core *dev ;
  {
  rc = 0;
  dev = (struct tm6000_core *)ptr;
  if (dev->tuner_type != 71) {
    return (0);
  } else {
  }
  {
  if (command == 1) {
    goto case_1;
  } else {
  }
  if (command == 0) {
    goto case_0;
  } else {
  }
  if (command == 2) {
    goto case_2___0;
  } else {
  }
  goto switch_break;
  case_1:
  {
  tm6000_ir_wait(dev, 0);
  tm6000_set_reg(dev, 4, 2, (int )((u16 )arg));
  msleep(10U);
  rc = tm6000_i2c_reset(dev, 10);
  }
  goto ldv_37563;
  case_0: ;
  {
  if (arg == 0) {
    goto case_0___0;
  } else {
  }
  if (arg == 1) {
    goto case_1___0;
  } else {
  }
  if (arg == 2) {
    goto case_2;
  } else {
  }
  goto switch_break___0;
  case_0___0: ;
  {
  if (dev->model == 4) {
    goto case_4;
  } else {
  }
  if (dev->model == 9) {
    goto case_9;
  } else {
  }
  if (dev->model == 12) {
    goto case_12;
  } else {
  }
  if (dev->model == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_4:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  tm6000_set_reg(dev, 3, 768, 1);
  msleep(10U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 0);
  tm6000_set_reg(dev, 3, 768, 0);
  msleep(10U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  tm6000_set_reg(dev, 3, 768, 1);
  }
  goto ldv_37567;
  case_9: ;
  case_12: ;
  case_13:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  msleep(60U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 0);
  msleep(75U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  msleep(60U);
  }
  goto ldv_37567;
  switch_default:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 0);
  msleep(130U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
  msleep(130U);
  }
  goto ldv_37567;
  switch_break___1: ;
  }
  ldv_37567:
  {
  tm6000_ir_wait(dev, 1);
  }
  goto ldv_37572;
  case_1___0:
  {
  tm6000_set_reg(dev, 4, 2, 1);
  msleep(10U);
  }
  goto ldv_37572;
  case_2:
  {
  rc = tm6000_i2c_reset(dev, 100);
  }
  goto ldv_37572;
  switch_break___0: ;
  }
  ldv_37572: ;
  goto ldv_37563;
  case_2___0:
  {
  tm6000_set_reg(dev, 50, 0, 0);
  tm6000_set_reg(dev, 51, 0, 0);
  }
  goto ldv_37563;
  switch_break: ;
  }
  ldv_37563: ;
  return (rc);
}
}
static char const __kstrtab_tm6000_tuner_callback[22U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 't',
        'u', 'n', 'e', 'r',
        '_', 'c', 'a', 'l',
        'l', 'b', 'a', 'c',
        'k', '\000'};
struct kernel_symbol const __ksymtab_tm6000_tuner_callback ;
struct kernel_symbol const __ksymtab_tm6000_tuner_callback = {(unsigned long )(& tm6000_tuner_callback), (char const *)(& __kstrtab_tm6000_tuner_callback)};
int tm6000_cards_setup(struct tm6000_core *dev )
{
  int rc ;
  int i ;
  {
  {
  if (dev->model == 9) {
    goto case_9;
  } else {
  }
  if (dev->model == 12) {
    goto case_12;
  } else {
  }
  if (dev->model == 13) {
    goto case_13;
  } else {
  }
  if (dev->model == 3) {
    goto case_3;
  } else {
  }
  if (dev->model == 10) {
    goto case_10;
  } else {
  }
  if (dev->model == 14) {
    goto case_14;
  } else {
  }
  if (dev->model == 11) {
    goto case_11;
  } else {
  }
  if (dev->model == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_9: ;
  case_12: ;
  case_13: ;
  case_3:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_on), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_on), 0);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_reset), 0);
  msleep(50U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_reset), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_on), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.ir), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 0);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.dvb_led), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_on), 0);
  msleep(15U);
  }
  goto ldv_37593;
  case_10: ;
  case_14:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 1);
  msleep(15U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_reset), 0);
  msleep(50U);
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.demod_reset), 1);
  msleep(15U);
  }
  goto ldv_37593;
  case_11: ;
  case_15:
  {
  tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 1);
  msleep(15U);
  }
  goto ldv_37593;
  switch_default: ;
  goto ldv_37593;
  switch_break: ;
  }
  ldv_37593: ;
  if (dev->gpio.tuner_reset != 0) {
    i = 0;
    goto ldv_37602;
    ldv_37601:
    {
    rc = tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 0);
    }
    if (rc < 0) {
      {
      printk("\vError %i doing tuner reset\n", rc);
      }
      return (rc);
    } else {
    }
    {
    msleep(10U);
    rc = tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.tuner_reset), 1);
    }
    if (rc < 0) {
      {
      printk("\vError %i doing tuner reset\n", rc);
      }
      return (rc);
    } else {
    }
    i = i + 1;
    ldv_37602: ;
    if (i <= 1) {
      goto ldv_37601;
    } else {
    }
  } else {
    {
    printk("\vTuner reset is not configured\n");
    }
    return (-1);
  }
  {
  msleep(50U);
  }
  return (0);
}
}
static void tm6000_config_tuner(struct tm6000_core *dev )
{
  struct tuner_setup tun_setup ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_priv_tun_config xc2028_cfg ;
  struct xc2028_ctrl ctl ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_priv_tun_config xc5000_cfg ;
  struct xc5000_config ctl___0 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  {
  v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tuner", (int )((u8 )dev->tuner_addr),
                      (unsigned short const *)0U);
  memset((void *)(& tun_setup), 0, 32UL);
  tun_setup.type = (unsigned int )dev->tuner_type;
  tun_setup.addr = (unsigned short )dev->tuner_addr;
  tun_setup.mode_mask = 0U;
  }
  if ((unsigned int )*((unsigned char *)dev + 324UL) != 0U) {
    tun_setup.mode_mask = tun_setup.mode_mask | 6U;
  } else {
  }
  {
  if (dev->tuner_type == 71) {
    goto case_71;
  } else {
  }
  if (dev->tuner_type == 76) {
    goto case_76;
  } else {
  }
  goto switch_break;
  case_71:
  tun_setup.tuner_callback = & tm6000_tuner_callback;
  goto ldv_37609;
  case_76:
  tun_setup.tuner_callback = & tm6000_xc5000_callback;
  goto ldv_37609;
  switch_break: ;
  }
  ldv_37609:
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_37617;
  ldv_37616: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct tuner_setup * ))0)) {
    {
    (*(((__sd->ops)->tuner)->s_type_addr))(__sd, & tun_setup);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_37617: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_37616;
  } else {
  }
  {
  if (dev->tuner_type == 71) {
    goto case_71___0;
  } else {
  }
  if (dev->tuner_type == 76) {
    goto case_76___0;
  } else {
  }
  goto switch_default___0;
  case_71___0:
  {
  memset((void *)(& xc2028_cfg), 0, 16UL);
  memset((void *)(& ctl), 0, 32UL);
  ctl.demod = 4560U;
  xc2028_cfg.tuner = 71;
  xc2028_cfg.priv = (void *)(& ctl);
  }
  {
  if (dev->model == 9) {
    goto case_9;
  } else {
  }
  if (dev->model == 12) {
    goto case_12;
  } else {
  }
  if (dev->model == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_9: ;
  case_12: ;
  case_13:
  ctl.max_len = 80;
  ctl.fname = (char *)"xc3028L-v36.fw";
  goto ldv_37625;
  switch_default: ;
  if ((unsigned int )dev->dev_type == 2U) {
    ctl.fname = (char *)"xc3028-v27.fw";
  } else {
    ctl.fname = (char *)"xc3028-v24.fw";
  }
  switch_break___1: ;
  }
  ldv_37625:
  {
  printk("\016Setting firmware parameters for xc2028\n");
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  }
  goto ldv_37633;
  ldv_37632: ;
  if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       struct v4l2_priv_tun_config const * ))0)) {
    {
    (*(((__sd___0->ops)->tuner)->s_config))(__sd___0, (struct v4l2_priv_tun_config const *)(& xc2028_cfg));
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_37633: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_37632;
  } else {
  }
  goto ldv_37635;
  case_76___0:
  ctl___0.i2c_address = (unsigned char )dev->tuner_addr;
  ctl___0.if_khz = 4570U;
  ctl___0.radio_input = 3U;
  ctl___0.xtal_khz = (unsigned short)0;
  ctl___0.chip_id = 0;
  xc5000_cfg.tuner = 76;
  xc5000_cfg.priv = (void *)(& ctl___0);
  __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
  goto ldv_37645;
  ldv_37644: ;
  if ((unsigned long )(__sd___1->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___1->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       struct v4l2_priv_tun_config const * ))0)) {
    {
    (*(((__sd___1->ops)->tuner)->s_config))(__sd___1, (struct v4l2_priv_tun_config const *)(& xc5000_cfg));
    }
  } else {
  }
  __mptr___4 = (struct list_head const *)__sd___1->list.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
  ldv_37645: ;
  if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_37644;
  } else {
  }
  goto ldv_37635;
  switch_default___0:
  {
  printk("\016Unknown tuner type. Tuner is not configured.\n");
  }
  goto ldv_37635;
  switch_break___0: ;
  }
  ldv_37635: ;
  return;
}
}
static int fill_board_specific_data(struct tm6000_core *dev )
{
  int rc ;
  int tmp ;
  {
  dev->dev_type = tm6000_boards[dev->model].type;
  dev->tuner_type = tm6000_boards[dev->model].tuner_type;
  dev->tuner_addr = tm6000_boards[dev->model].tuner_addr;
  dev->gpio = tm6000_boards[dev->model].gpio;
  dev->ir_codes = tm6000_boards[dev->model].ir_codes;
  dev->demod_addr = tm6000_boards[dev->model].demod_addr;
  dev->caps = tm6000_boards[dev->model].caps;
  dev->vinput[0] = tm6000_boards[dev->model].vinput[0];
  dev->vinput[1] = tm6000_boards[dev->model].vinput[1];
  dev->vinput[2] = tm6000_boards[dev->model].vinput[2];
  dev->rinput = tm6000_boards[dev->model].rinput;
  {
  if (dev->model == 12) {
    goto case_12;
  } else {
  }
  if (dev->model == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_12: ;
  case_9:
  dev->quirks = dev->quirks | 1UL;
  goto ldv_37654;
  switch_default: ;
  goto ldv_37654;
  switch_break: ;
  }
  ldv_37654:
  {
  rc = tm6000_init(dev);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  {
  tmp = v4l2_device_register(& (dev->udev)->dev, & dev->v4l2_dev);
  }
  return (tmp);
}
}
static void use_alternative_detection_method(struct tm6000_core *dev )
{
  int i ;
  int model ;
  int tmp ;
  {
  model = -1;
  if (dev->eedata_size == 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_37666;
  ldv_37665: ;
  if (tm6000_boards[i].eename_size == 0U) {
    goto ldv_37663;
  } else {
  }
  if (dev->eedata_size < tm6000_boards[i].eename_pos + tm6000_boards[i].eename_size) {
    goto ldv_37663;
  } else {
  }
  {
  tmp = memcmp((void const *)(& dev->eedata) + (unsigned long )tm6000_boards[i].eename_pos,
               (void const *)(& tm6000_boards[i].eename), (size_t )tm6000_boards[i].eename_size);
  }
  if (tmp == 0) {
    model = i;
    goto ldv_37664;
  } else {
  }
  ldv_37663:
  i = i + 1;
  ldv_37666: ;
  if ((unsigned int )i <= 16U) {
    goto ldv_37665;
  } else {
  }
  ldv_37664: ;
  if (model < 0) {
    {
    printk("\016Device has eeprom but is currently unknown\n");
    }
    return;
  } else {
  }
  {
  dev->model = model;
  printk("\016Device identified via eeprom as %s (type = %d)\n", tm6000_boards[model].name,
         model);
  }
  return;
}
}
static void request_module_async(struct work_struct *work )
{
  struct tm6000_core *dev ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffffeb8UL;
  __request_module(1, "tm6000-alsa");
  }
  if ((unsigned int )*((unsigned char *)dev + 324UL) != 0U) {
    {
    __request_module(1, "tm6000-dvb");
    }
  } else {
  }
  return;
}
}
static void request_modules(struct tm6000_core *dev )
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
static void flush_request_modules(struct tm6000_core *dev )
{
  {
  {
  flush_work(& dev->request_module_wk);
  }
  return;
}
}
static int tm6000_init_dev(struct tm6000_core *dev )
{
  struct v4l2_frequency f ;
  int rc ;
  struct lock_class_key __key ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  rc = 0;
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  mutex_lock_nested(& dev->lock, 0U);
  }
  if ((unsigned int )dev->model > 3U) {
    {
    rc = fill_board_specific_data(dev);
    }
    if (rc < 0) {
      goto err;
    } else {
    }
    {
    rc = tm6000_i2c_register(dev);
    }
    if (rc < 0) {
      goto err;
    } else {
    }
  } else {
    {
    rc = tm6000_i2c_register(dev);
    }
    if (rc < 0) {
      goto err;
    } else {
    }
    {
    use_alternative_detection_method(dev);
    rc = fill_board_specific_data(dev);
    }
    if (rc < 0) {
      goto err;
    } else {
    }
  }
  {
  dev->width = 720;
  dev->height = 480;
  dev->norm = 4096ULL;
  tm6000_config_tuner(dev);
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  }
  goto ldv_37694;
  ldv_37693: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_37694: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_37693;
  } else {
  }
  f.tuner = 0U;
  f.type = 2U;
  f.frequency = 3092U;
  dev->freq = (int )f.frequency;
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_37702;
  ldv_37701: ;
  if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_frequency const * ))0)) {
    {
    (*(((__sd___0->ops)->tuner)->s_frequency))(__sd___0, (struct v4l2_frequency const *)(& f));
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_37702: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_37701;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 324UL) != 0U) {
    {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tvaudio", 176, (unsigned short const *)0U);
    }
  } else {
  }
  {
  rc = tm6000_v4l2_register(dev);
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  {
  tm6000_add_into_devlist(dev);
  tm6000_init_extension(dev);
  tm6000_ir_init(dev);
  request_modules(dev);
  mutex_unlock(& dev->lock);
  }
  return (0);
  err:
  {
  mutex_unlock(& dev->lock);
  }
  return (rc);
}
}
static void get_max_endpoint(struct usb_device *udev , struct usb_host_interface *alt ,
                             char *msgtype , struct usb_host_endpoint *curr_e , struct tm6000_endpoint *tm_ep )
{
  u16 tmp ;
  unsigned int size ;
  {
  tmp = curr_e->desc.wMaxPacketSize;
  size = (unsigned int )tmp & 2047U;
  if ((unsigned int )udev->speed == 3U) {
    size = size * (unsigned int )((((int )tmp >> 11) & 3) + 1);
  } else {
  }
  if (size > tm_ep->maxsize) {
    {
    tm_ep->endp = curr_e;
    tm_ep->maxsize = size;
    tm_ep->bInterfaceNumber = alt->desc.bInterfaceNumber;
    tm_ep->bAlternateSetting = alt->desc.bAlternateSetting;
    printk("\016tm6000: %s endpoint: 0x%02x (max size=%u bytes)\n", msgtype, (int )curr_e->desc.bEndpointAddress,
           size);
    }
  } else {
  }
  return;
}
}
static int tm6000_usb_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_device *usbdev ;
  struct tm6000_core *dev ;
  int i ;
  int rc ;
  int nr ;
  char *speed ;
  struct usb_device *tmp ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int ep ;
  struct usb_host_endpoint *e ;
  int dir_out ;
  {
  {
  dev = (struct tm6000_core *)0;
  rc = 0;
  nr = 0;
  tmp = interface_to_usbdev(interface);
  usbdev = usb_get_dev(tmp);
  rc = usb_set_interface(usbdev, 0, 1);
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  {
  tmp___0 = find_first_zero_bit((unsigned long const *)(& tm6000_devused), 16UL);
  nr = (int )tmp___0;
  }
  if (nr > 15) {
    {
    printk("\vtm6000: Supports only %i tm60xx boards.\n", 16);
    usb_put_dev(usbdev);
    }
    return (-12);
  } else {
  }
  {
  tmp___1 = kzalloc(5704UL, 208U);
  dev = (struct tm6000_core *)tmp___1;
  }
  if ((unsigned long )dev == (unsigned long )((struct tm6000_core *)0)) {
    {
    printk("\vtm6000: out of memory!\n");
    usb_put_dev(usbdev);
    }
    return (-12);
  } else {
  }
  {
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.__annonCompField19.rlock, "&(&dev->slock)->rlock",
                       & __key);
  __mutex_init(& dev->usb_lock, "&dev->usb_lock", & __key___0);
  set_bit((long )nr, (unsigned long volatile *)(& tm6000_devused));
  snprintf((char *)(& dev->name), 29UL, "tm6000 #%d", nr);
  dev->model = (int )id->driver_info;
  }
  if (card[nr] <= 16U) {
    dev->model = (int )card[nr];
  } else {
  }
  dev->udev = usbdev;
  dev->devno = nr;
  {
  if ((unsigned int )usbdev->speed == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )usbdev->speed == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )usbdev->speed == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )usbdev->speed == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  speed = (char *)"1.5";
  goto ldv_37729;
  case_0: ;
  case_2:
  speed = (char *)"12";
  goto ldv_37729;
  case_3:
  speed = (char *)"480";
  goto ldv_37729;
  switch_default:
  speed = (char *)"unknown";
  switch_break: ;
  }
  ldv_37729:
  i = 0;
  goto ldv_37745;
  ldv_37744:
  ep = 0;
  goto ldv_37742;
  ldv_37741:
  {
  e = (interface->altsetting + (unsigned long )i)->endpoint + (unsigned long )ep;
  dir_out = (int )((signed char )e->desc.bEndpointAddress) >= 0;
  printk("\016tm6000: alt %d, interface %i, class %i\n", i, (int )(interface->altsetting + (unsigned long )i)->desc.bInterfaceNumber,
         (int )(interface->altsetting + (unsigned long )i)->desc.bInterfaceClass);
  }
  {
  if ((int )e->desc.bmAttributes == 2) {
    goto case_2___0;
  } else {
  }
  if ((int )e->desc.bmAttributes == 1) {
    goto case_1___0;
  } else {
  }
  if ((int )e->desc.bmAttributes == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_break___0;
  case_2___0: ;
  if (dir_out == 0) {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"Bulk IN",
                     e, & dev->bulk_in);
    }
  } else {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"Bulk OUT",
                     e, & dev->bulk_out);
    }
  }
  goto ldv_37738;
  case_1___0: ;
  if (dir_out == 0) {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"ISOC IN",
                     e, & dev->isoc_in);
    }
  } else {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"ISOC OUT",
                     e, & dev->isoc_out);
    }
  }
  goto ldv_37738;
  case_3___0: ;
  if (dir_out == 0) {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"INT IN",
                     e, & dev->int_in);
    }
  } else {
    {
    get_max_endpoint(usbdev, interface->altsetting + (unsigned long )i, (char *)"INT OUT",
                     e, & dev->int_out);
    }
  }
  goto ldv_37738;
  switch_break___0: ;
  }
  ldv_37738:
  ep = ep + 1;
  ldv_37742: ;
  if (ep < (int )(interface->altsetting + (unsigned long )i)->desc.bNumEndpoints) {
    goto ldv_37741;
  } else {
  }
  i = i + 1;
  ldv_37745: ;
  if ((unsigned int )i < interface->num_altsetting) {
    goto ldv_37744;
  } else {
  }
  {
  printk("\016tm6000: New video device @ %s Mbps (%04x:%04x, ifnum %d)\n", speed,
         (int )(dev->udev)->descriptor.idVendor, (int )(dev->udev)->descriptor.idProduct,
         (int )(interface->altsetting)->desc.bInterfaceNumber);
  }
  if ((unsigned long )dev->isoc_in.endp == (unsigned long )((struct usb_host_endpoint *)0)) {
    {
    printk("\vtm6000: probing error: no IN ISOC endpoint!\n");
    rc = -19;
    }
    goto err;
  } else {
  }
  {
  usb_set_intfdata(interface, (void *)dev);
  printk("\016tm6000: Found %s\n", tm6000_boards[dev->model].name);
  rc = tm6000_init_dev(dev);
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  return (0);
  err:
  {
  printk("\vtm6000: Error %d while registering\n", rc);
  clear_bit((long )nr, (unsigned long volatile *)(& tm6000_devused));
  usb_put_dev(usbdev);
  kfree((void const *)dev);
  }
  return (rc);
}
}
static void tm6000_usb_disconnect(struct usb_interface *interface )
{
  struct tm6000_core *dev ;
  void *tmp ;
  {
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct tm6000_core *)tmp;
  usb_set_intfdata(interface, (void *)0);
  }
  if ((unsigned long )dev == (unsigned long )((struct tm6000_core *)0)) {
    return;
  } else {
  }
  {
  printk("\016tm6000: disconnecting %s\n", (char *)(& dev->name));
  flush_request_modules(dev);
  tm6000_ir_fini(dev);
  }
  if (dev->gpio.power_led != 0) {
    {
    if (dev->model == 9) {
      goto case_9;
    } else {
    }
    if (dev->model == 12) {
      goto case_12;
    } else {
    }
    if (dev->model == 13) {
      goto case_13;
    } else {
    }
    if (dev->model == 10) {
      goto case_10;
    } else {
    }
    if (dev->model == 11) {
      goto case_11;
    } else {
    }
    if (dev->model == 14) {
      goto case_14;
    } else {
    }
    if (dev->model == 15) {
      goto case_15;
    } else {
    }
    goto switch_break;
    case_9: ;
    case_12: ;
    case_13:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 1);
    msleep(15U);
    }
    goto ldv_37754;
    case_10: ;
    case_11: ;
    case_14: ;
    case_15:
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.power_led), 0);
    msleep(15U);
    }
    goto ldv_37754;
    switch_break: ;
    }
    ldv_37754: ;
  } else {
  }
  {
  tm6000_v4l2_unregister(dev);
  tm6000_i2c_unregister(dev);
  v4l2_device_unregister(& dev->v4l2_dev);
  dev->state = (enum tm6000_core_state )((unsigned int )dev->state | 2U);
  usb_put_dev(dev->udev);
  tm6000_close_extension(dev);
  tm6000_remove_from_devlist(dev);
  clear_bit((long )dev->devno, (unsigned long volatile *)(& tm6000_devused));
  kfree((void const *)dev);
  }
  return;
}
}
static struct usb_driver tm6000_usb_driver =
     {"tm6000", & tm6000_usb_probe, & tm6000_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& tm6000_id_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    0U, 0U, 0U, 0U};
static int tm6000_usb_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_56(& tm6000_usb_driver, & __this_module, "tm6000");
  }
  return (tmp);
}
}
static void tm6000_usb_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_57(& tm6000_usb_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_tm6000_usb_driver_exit_12_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_tm6000_usb_driver_init_12_17(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_10_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_7_12_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_12_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_12_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_12_7(void) ;
void ldv_dispatch_deregister_io_instance_10_12_8(void) ;
void ldv_dispatch_instance_deregister_5_2(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_deregister_7_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_5_3(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_7_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_11_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_factory_7_12_9(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_12_10(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_12_11(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_12_12(void) ;
void ldv_dispatch_register_io_instance_10_12_13(void) ;
void ldv_dummy_resourceless_instance_callback_0_3(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct i2c_adapter * ,
                                                              struct i2c_msg * , int ) ,
                                                  struct i2c_adapter *arg1 , struct i2c_msg *arg2 ,
                                                  int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 ) ;
void ldv_entry_EMGentry_12(void *arg0 ) ;
int main(void) ;
void ldv_io_instance_callback_8_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_8_19(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_struct_i2c_algorithm_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_timer_dummy_factory_5(void *arg0 ) ;
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_4(void *arg0 ) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_7(void *arg0 ) ;
void ldv_usb_instance_post_6_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_6_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_6_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_6_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_6_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_6(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_8(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_9(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
void ldv_EMGentry_exit_tm6000_usb_driver_exit_12_2(void (*arg0)(void) )
{
  {
  {
  tm6000_usb_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_tm6000_usb_driver_init_12_17(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = tm6000_usb_driver_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_10_1(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_7_12_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_12_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_12_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_12_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_10_12_8(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_5_2(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_7_2(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_5_3(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_timer_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_timer_timer_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_instance_register_7_3(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_6 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_6 = (struct ldv_struct_usb_instance_6 *)tmp;
  cf_arg_6->arg0 = arg0;
  ldv_usb_usb_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_11_2(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_6 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_usb_instance_6 *)tmp;
  cf_arg_7->arg0 = arg0;
  ldv_usb_dummy_factory_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_7_12_9(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_timer_dummy_factory_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_12_10(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_i2c_algorithm_dummy_resourceless_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_4_12_11(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_1 ;
  struct ldv_struct_EMGentry_12 *cf_arg_2 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1((void *)cf_arg_1);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_12 *)tmp___0;
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_12_12(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_10_12_13(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_8 ;
  struct ldv_struct_EMGentry_12 *cf_arg_9 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_v4l2_file_operations_io_instance_8((void *)cf_arg_8);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_12 *)tmp___0;
  ldv_v4l2_file_operations_io_instance_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_entry_EMGentry_12(void *arg0 )
{
  void (*ldv_12_exit_tm6000_usb_driver_exit_default)(void) ;
  int (*ldv_12_init_tm6000_usb_driver_init_default)(void) ;
  int ldv_12_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_12_ret_default = ldv_EMGentry_init_tm6000_usb_driver_init_12_17(ldv_12_init_tm6000_usb_driver_init_default);
  ldv_12_ret_default = ldv_post_init(ldv_12_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_12_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_12_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_io_instance_10_12_13();
      ldv_dispatch_register_dummy_resourceless_instance_5_12_12();
      ldv_dispatch_register_dummy_resourceless_instance_4_12_11();
      ldv_dispatch_register_dummy_resourceless_instance_3_12_10();
      ldv_dispatch_register_dummy_factory_7_12_9();
      ldv_dispatch_deregister_io_instance_10_12_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_12_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_4_12_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_3_12_5();
      ldv_dispatch_deregister_dummy_factory_7_12_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_tm6000_usb_driver_exit_12_2(ldv_12_exit_tm6000_usb_driver_exit_default);
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
  ldv_entry_EMGentry_12((void *)0);
  }
return 0;
}
}
void ldv_io_instance_callback_8_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_19(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_struct_i2c_algorithm_dummy_resourceless_instance_0(void *arg0 )
{
  unsigned int (*ldv_0_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_0_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  struct i2c_adapter *ldv_0_container_struct_i2c_adapter_ptr ;
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
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_master_xfer, ldv_0_container_struct_i2c_adapter_ptr,
                                               ldv_0_container_struct_i2c_msg_ptr,
                                               ldv_0_ldv_param_7_2_default);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_functionality, ldv_0_container_struct_i2c_adapter_ptr);
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
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_s_ctrl)(struct v4l2_ctrl * ) ;
  struct v4l2_ctrl *ldv_1_container_struct_v4l2_ctrl_ptr ;
  int tmp ;
  {
  goto ldv_call_1;
  return;
  ldv_call_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_s_ctrl, ldv_1_container_struct_v4l2_ctrl_ptr);
    }
    goto ldv_call_1;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_s_ctrl)(struct v4l2_ctrl * ) ;
  struct v4l2_ctrl *ldv_2_container_struct_v4l2_ctrl_ptr ;
  int tmp ;
  {
  goto ldv_call_2;
  return;
  ldv_call_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_s_ctrl, ldv_2_container_struct_v4l2_ctrl_ptr);
    }
    goto ldv_call_2;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                    enum v4l2_field ) ;
  void (*ldv_3_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
  void (*ldv_3_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
  int (*ldv_3_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
  enum v4l2_field ldv_3_container_enum_v4l2_field ;
  struct videobuf_buffer *ldv_3_container_struct_videobuf_buffer_ptr ;
  struct videobuf_queue *ldv_3_container_struct_videobuf_queue_ptr ;
  unsigned int *ldv_3_ldv_param_9_1_default ;
  unsigned int *ldv_3_ldv_param_9_2_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
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
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___0 = ldv_xmalloc(4UL);
  ldv_3_ldv_param_9_1_default = (unsigned int *)tmp___0;
  tmp___1 = ldv_xmalloc(4UL);
  ldv_3_ldv_param_9_2_default = (unsigned int *)tmp___1;
  ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_buf_setup, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_ldv_param_9_1_default, ldv_3_ldv_param_9_2_default);
  ldv_free((void *)ldv_3_ldv_param_9_1_default);
  ldv_free((void *)ldv_3_ldv_param_9_2_default);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_3_8(ldv_3_callback_buf_release, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_buf_queue, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_buf_prepare, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr,
                                               ldv_3_container_enum_v4l2_field);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_5: ;
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
void ldv_timer_dummy_factory_5(void *arg0 )
{
  struct timer_list *ldv_5_container_timer_list ;
  {
  {
  ldv_dispatch_instance_register_5_3(ldv_5_container_timer_list);
  ldv_dispatch_instance_deregister_5_2(ldv_5_container_timer_list);
  }
  return;
  return;
}
}
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_4(void *arg0 )
{
  struct timer_list *ldv_4_container_timer_list ;
  struct ldv_struct_timer_instance_4 *data ;
  {
  data = (struct ldv_struct_timer_instance_4 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_4 *)0)) {
    {
    ldv_4_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_4_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_4_2(ldv_4_container_timer_list->function, ldv_4_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_10_usb_driver_usb_driver ;
  {
  {
  ldv_10_usb_driver_usb_driver = arg1;
  ldv_dispatch_deregister_10_1(ldv_10_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_7(void *arg0 )
{
  struct usb_driver *ldv_7_container_usb_driver ;
  struct ldv_struct_usb_instance_6 *data ;
  {
  data = (struct ldv_struct_usb_instance_6 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_6 *)0)) {
    {
    ldv_7_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_dispatch_instance_register_7_3(ldv_7_container_usb_driver);
  ldv_dispatch_instance_deregister_7_2(ldv_7_container_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_instance_post_6_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_6_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_6_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = tm6000_usb_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_6_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  tm6000_usb_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_6_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
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
  struct usb_driver *ldv_11_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_usb_driver_usb_driver = arg1;
    ldv_dispatch_register_11_2(ldv_11_usb_driver_usb_driver);
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
void ldv_usb_usb_instance_6(void *arg0 )
{
  struct usb_driver *ldv_6_container_usb_driver ;
  struct usb_device_id *ldv_6_ldv_param_13_1_default ;
  int ldv_6_probe_retval_default ;
  _Bool ldv_6_reset_flag_default ;
  struct usb_interface *ldv_6_resource_usb_interface ;
  struct usb_device *ldv_6_usb_device_usb_device ;
  struct ldv_struct_usb_instance_6 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_usb_instance_6 *)arg0;
  ldv_6_reset_flag_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_6 *)0)) {
    {
    ldv_6_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_6_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_6_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_6_resource_usb_interface->dev.parent = & ldv_6_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_6_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_6_probe_retval_default = ldv_usb_instance_probe_6_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_6_container_usb_driver->probe,
                                                           ldv_6_resource_usb_interface,
                                                           ldv_6_ldv_param_13_1_default);
  ldv_6_probe_retval_default = ldv_post_probe(ldv_6_probe_retval_default);
  ldv_free((void *)ldv_6_ldv_param_13_1_default);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_6_probe_retval_default == 0);
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
    if ((unsigned long )ldv_6_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_pre_6_10(ldv_6_container_usb_driver->pre_reset, ldv_6_resource_usb_interface);
      }
    } else {
    }
    if ((unsigned long )ldv_6_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_post_6_9(ldv_6_container_usb_driver->post_reset, ldv_6_resource_usb_interface);
      }
    } else {
    }
    goto ldv_38195;
    case_2: ;
    if ((unsigned long )ldv_6_container_usb_driver->resume != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_resume_6_7(ldv_6_container_usb_driver->resume, ldv_6_resource_usb_interface);
      }
    } else {
    }
    goto ldv_38195;
    case_3: ;
    goto ldv_38195;
    case_4: ;
    goto ldv_38195;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_38195:
    {
    ldv_usb_instance_release_6_4(ldv_6_container_usb_driver->disconnect, ldv_6_resource_usb_interface);
    }
  } else {
    {
    ldv_assume(ldv_6_probe_retval_default != 0);
    }
  }
  {
  ldv_free((void *)ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_usb_device_usb_device);
  }
  return;
  return;
}
}
static void *ldv_dev_get_drvdata_38(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_39(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
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
static int ldv_usb_register_driver_56(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
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
static void ldv_usb_deregister_57(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
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
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int tm6000_read_write_usb(struct tm6000_core *dev , u8 req_type , u8 req , u16 value ,
                          u16 index , u8 *buf , u16 len ) ;
int tm6000_get_reg(struct tm6000_core *dev , u8 req , u16 value , u16 index ) ;
int tm6000_get_reg16(struct tm6000_core *dev , u8 req , u16 value , u16 index ) ;
int tm6000_get_reg32(struct tm6000_core *dev , u8 req , u16 value , u16 index ) ;
int tm6000_set_reg_mask(struct tm6000_core *dev , u8 req , u16 value , u16 index ,
                        u16 mask ) ;
int tm6000_init_analog_mode(struct tm6000_core *dev ) ;
int tm6000_init_digital_mode(struct tm6000_core *dev ) ;
int tm6000_set_audio_bitrate(struct tm6000_core *dev , int bitrate ) ;
int tm6000_set_audio_rinput(struct tm6000_core *dev ) ;
int tm6000_tvaudio_set_mute(struct tm6000_core *dev , u8 mute ) ;
void tm6000_set_volume(struct tm6000_core *dev , int vol ) ;
void tm6000_set_fourcc_format(struct tm6000_core *dev ) ;
int tm6000_register_extension(struct tm6000_ops *ops ) ;
void tm6000_unregister_extension(struct tm6000_ops *ops ) ;
int tm6000_call_fillbuf(struct tm6000_core *dev , enum tm6000_ops_type type , char *buf ,
                        int size ) ;
int tm6000_set_standard(struct tm6000_core *dev ) ;
int tm6000_debug ;
int tm6000_read_write_usb(struct tm6000_core *dev , u8 req_type , u8 req , u16 value ,
                          u16 index , u8 *buf , u16 len )
{
  int ret ;
  int i ;
  unsigned int pipe ;
  u8 *data ;
  int delay ;
  void *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tsleep ;
  {
  data = (u8 *)0U;
  delay = 5000;
  if ((unsigned int )len != 0U) {
    {
    tmp = kzalloc((size_t )len, 208U);
    data = (u8 *)tmp;
    }
    if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
  } else {
  }
  {
  mutex_lock_nested(& dev->usb_lock, 0U);
  }
  if ((int )((signed char )req_type) < 0) {
    {
    tmp___0 = __create_pipe(dev->udev, 0U);
    pipe = tmp___0 | 2147483776U;
    }
  } else {
    {
    tmp___1 = __create_pipe(dev->udev, 0U);
    pipe = tmp___1 | 2147483648U;
    memcpy((void *)data, (void const *)buf, (size_t )len);
    }
  }
  if ((tm6000_debug & 8) != 0) {
    {
    printk("\017(dev %p, pipe %08x): ", dev->udev, pipe);
    printk("%s: %02x %02x %02x %02x %02x %02x %02x %02x ", (int )((signed char )req_type) < 0 ? (char *)" IN" : (char *)"OUT",
           (int )req_type, (int )req, (int )value & 255, (int )value >> 8, (int )index & 255,
           (int )index >> 8, (int )len & 255, (int )len >> 8);
    }
    if ((int )((signed char )req_type) >= 0) {
      {
      printk(">>> ");
      i = 0;
      }
      goto ldv_31806;
      ldv_31805:
      {
      printk(" %02x", (int )*(buf + (unsigned long )i));
      i = i + 1;
      }
      ldv_31806: ;
      if (i < (int )len) {
        goto ldv_31805;
      } else {
      }
      {
      printk("\n");
      }
    } else {
    }
  } else {
  }
  {
  ret = usb_control_msg(dev->udev, pipe, (int )req, (int )req_type, (int )value, (int )index,
                        (void *)data, (int )len, 1250);
  }
  if ((int )((signed char )req_type) < 0) {
    {
    memcpy((void *)buf, (void const *)data, (size_t )len);
    }
  } else {
  }
  if ((tm6000_debug & 8) != 0) {
    if (ret < 0) {
      if ((int )((signed char )req_type) < 0) {
        {
        printk("\017<<< (len=%d)\n", (int )len);
        }
      } else {
      }
      {
      printk("%s: Error #%d\n", "tm6000_read_write_usb", ret);
      }
    } else
    if ((int )((signed char )req_type) < 0) {
      {
      printk("<<< ");
      i = 0;
      }
      goto ldv_31810;
      ldv_31809:
      {
      printk(" %02x", (int )*(buf + (unsigned long )i));
      i = i + 1;
      }
      ldv_31810: ;
      if (i < (int )len) {
        goto ldv_31809;
      } else {
      }
      {
      printk("\n");
      }
    } else {
    }
  } else {
  }
  {
  kfree((void const *)data);
  }
  if ((int )dev->quirks & 1) {
    delay = 0;
  } else {
  }
  if ((unsigned int )req == 16U && (int )((signed char )req_type) >= 0) {
    tsleep = (unsigned int )(((int )len + 1) * 200);
    if (tsleep < (unsigned int )delay) {
      tsleep = (unsigned int )delay;
    } else {
    }
    {
    usleep_range((unsigned long )tsleep, (unsigned long )(tsleep + 1000U));
    }
  } else
  if (delay != 0) {
    {
    usleep_range((unsigned long )delay, (unsigned long )(delay + 1000));
    }
  } else {
  }
  {
  mutex_unlock(& dev->usb_lock);
  }
  return (ret);
}
}
int tm6000_set_reg(struct tm6000_core *dev , u8 req , u16 value , u16 index )
{
  int tmp ;
  {
  {
  tmp = tm6000_read_write_usb(dev, 64, (int )req, (int )value, (int )index, (u8 *)0U,
                              0);
  }
  return (tmp);
}
}
static char const __kstrtab_tm6000_set_reg[15U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 's',
        'e', 't', '_', 'r',
        'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_tm6000_set_reg ;
struct kernel_symbol const __ksymtab_tm6000_set_reg = {(unsigned long )(& tm6000_set_reg), (char const *)(& __kstrtab_tm6000_set_reg)};
int tm6000_get_reg(struct tm6000_core *dev , u8 req , u16 value , u16 index )
{
  int rc ;
  u8 buf[1U] ;
  {
  {
  rc = tm6000_read_write_usb(dev, 192, (int )req, (int )value, (int )index, (u8 *)(& buf),
                             1);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return ((int )*((u8 *)(& buf)));
}
}
static char const __kstrtab_tm6000_get_reg[15U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'g',
        'e', 't', '_', 'r',
        'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_tm6000_get_reg ;
struct kernel_symbol const __ksymtab_tm6000_get_reg = {(unsigned long )(& tm6000_get_reg), (char const *)(& __kstrtab_tm6000_get_reg)};
int tm6000_set_reg_mask(struct tm6000_core *dev , u8 req , u16 value , u16 index ,
                        u16 mask )
{
  int rc ;
  u8 buf[1U] ;
  u8 new_index ;
  int tmp ;
  {
  {
  rc = tm6000_read_write_usb(dev, 192, (int )req, (int )value, 0, (u8 *)(& buf), 1);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  new_index = (u8 )(((int )((signed char )buf[0]) & ~ ((int )((signed char )mask))) | (int )((signed char )((int )((unsigned char )index) & (int )((unsigned char )mask))));
  if ((int )new_index == (int )buf[0]) {
    return (0);
  } else {
  }
  {
  tmp = tm6000_read_write_usb(dev, 64, (int )req, (int )value, (int )new_index, (u8 *)0U,
                              0);
  }
  return (tmp);
}
}
static char const __kstrtab_tm6000_set_reg_mask[20U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 's',
        'e', 't', '_', 'r',
        'e', 'g', '_', 'm',
        'a', 's', 'k', '\000'};
struct kernel_symbol const __ksymtab_tm6000_set_reg_mask ;
struct kernel_symbol const __ksymtab_tm6000_set_reg_mask = {(unsigned long )(& tm6000_set_reg_mask), (char const *)(& __kstrtab_tm6000_set_reg_mask)};
int tm6000_get_reg16(struct tm6000_core *dev , u8 req , u16 value , u16 index )
{
  int rc ;
  u8 buf[2U] ;
  {
  {
  rc = tm6000_read_write_usb(dev, 192, (int )req, (int )value, (int )index, (u8 *)(& buf),
                             2);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return ((int )buf[1] | ((int )buf[0] << 8));
}
}
int tm6000_get_reg32(struct tm6000_core *dev , u8 req , u16 value , u16 index )
{
  int rc ;
  u8 buf[4U] ;
  {
  {
  rc = tm6000_read_write_usb(dev, 192, (int )req, (int )value, (int )index, (u8 *)(& buf),
                             4);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return ((((int )buf[3] | ((int )buf[2] << 8)) | ((int )buf[1] << 16)) | ((int )buf[0] << 24));
}
}
int tm6000_i2c_reset(struct tm6000_core *dev , u16 tsleep )
{
  int rc ;
  {
  {
  rc = tm6000_set_reg(dev, 3, 257, 0);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  {
  msleep((unsigned int )tsleep);
  rc = tm6000_set_reg(dev, 3, 257, 1);
  msleep((unsigned int )tsleep);
  }
  return (rc);
}
}
void tm6000_set_fourcc_format(struct tm6000_core *dev )
{
  int val ;
  int tmp ;
  {
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tmp = tm6000_get_reg(dev, 7, 204, 0);
    val = tmp & 252;
    }
    if (dev->fourcc == 1498831189U) {
      {
      tm6000_set_reg(dev, 7, 204, (int )((u16 )val));
      }
    } else {
      {
      tm6000_set_reg(dev, 7, 204, (int )((u16 )((int )((short )val) | 1)));
      }
    }
  } else
  if (dev->fourcc == 1498831189U) {
    {
    tm6000_set_reg(dev, 7, 193, 208);
    }
  } else {
    {
    tm6000_set_reg(dev, 7, 193, 144);
    }
  }
  return;
}
}
static void tm6000_set_vbi(struct tm6000_core *dev )
{
  {
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6000_set_reg(dev, 7, 63, 1);
    tm6000_set_reg(dev, 7, 65, 39);
    tm6000_set_reg(dev, 7, 66, 85);
    tm6000_set_reg(dev, 7, 67, 102);
    tm6000_set_reg(dev, 7, 68, 102);
    tm6000_set_reg(dev, 7, 69, 102);
    tm6000_set_reg(dev, 7, 70, 102);
    tm6000_set_reg(dev, 7, 71, 102);
    tm6000_set_reg(dev, 7, 72, 102);
    tm6000_set_reg(dev, 7, 73, 102);
    tm6000_set_reg(dev, 7, 74, 102);
    tm6000_set_reg(dev, 7, 75, 102);
    tm6000_set_reg(dev, 7, 76, 102);
    tm6000_set_reg(dev, 7, 77, 102);
    tm6000_set_reg(dev, 7, 78, 102);
    tm6000_set_reg(dev, 7, 79, 102);
    tm6000_set_reg(dev, 7, 80, 102);
    tm6000_set_reg(dev, 7, 81, 102);
    tm6000_set_reg(dev, 7, 82, 102);
    tm6000_set_reg(dev, 7, 83, 0);
    tm6000_set_reg(dev, 7, 84, 0);
    tm6000_set_reg(dev, 7, 85, 1);
    tm6000_set_reg(dev, 7, 86, 0);
    tm6000_set_reg(dev, 7, 87, 2);
    tm6000_set_reg(dev, 7, 88, 53);
    tm6000_set_reg(dev, 7, 89, 160);
    tm6000_set_reg(dev, 7, 90, 17);
    tm6000_set_reg(dev, 7, 91, 76);
    tm6000_set_reg(dev, 7, 64, 1);
    tm6000_set_reg(dev, 7, 63, 0);
    }
  } else {
  }
  return;
}
}
int tm6000_init_analog_mode(struct tm6000_core *dev )
{
  struct v4l2_frequency f ;
  u8 active ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned int )dev->dev_type == 2U) {
    active = 64U;
    if ((unsigned int )dev->radio == 0U) {
      active = (u8 )((unsigned int )active | 32U);
    } else {
    }
    {
    tm6000_set_reg_mask(dev, 7, 204, (int )active, 96);
    tm6000_set_reg_mask(dev, 7, 192, 0, 64);
    }
  } else {
    {
    tm6000_set_reg(dev, 7, 63, 1);
    }
    if (dev->scaler != 0) {
      {
      tm6000_set_reg(dev, 7, 192, 32);
      }
    } else {
      {
      tm6000_set_reg(dev, 7, 192, 128);
      }
    }
    {
    tm6000_set_reg(dev, 7, 195, 136);
    tm6000_set_reg(dev, 7, 218, 35);
    tm6000_set_reg(dev, 7, 209, 192);
    tm6000_set_reg(dev, 7, 210, 216);
    tm6000_set_reg(dev, 7, 214, 6);
    tm6000_set_reg(dev, 7, 223, 31);
    tm6000_set_reg(dev, 7, 255, 8);
    tm6000_set_reg(dev, 7, 255, 0);
    tm6000_set_fourcc_format(dev);
    tm6000_set_reg(dev, 7, 63, 0);
    }
  }
  {
  msleep(20U);
  f.frequency = (__u32 )dev->freq;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  }
  goto ldv_31907;
  ldv_31906: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, (struct v4l2_frequency const *)(& f));
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_31907: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_31906;
  } else {
  }
  {
  msleep(100U);
  tm6000_set_standard(dev);
  tm6000_set_vbi(dev);
  tm6000_set_audio_bitrate(dev, 48000);
  }
  if (dev->gpio.dvb_led != 0) {
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.dvb_led), 1);
    }
  } else {
  }
  return (0);
}
}
int tm6000_init_digital_mode(struct tm6000_core *dev )
{
  {
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6000_set_reg_mask(dev, 7, 204, 0, 96);
    tm6000_set_reg_mask(dev, 7, 192, 64, 64);
    tm6000_set_reg(dev, 7, 254, 40);
    tm6000_set_reg(dev, 8, 226, 252);
    tm6000_set_reg(dev, 8, 230, 255);
    }
  } else {
    {
    tm6000_set_reg(dev, 7, 255, 8);
    tm6000_set_reg(dev, 7, 255, 0);
    tm6000_set_reg(dev, 7, 63, 1);
    tm6000_set_reg(dev, 7, 223, 8);
    tm6000_set_reg(dev, 7, 226, 12);
    tm6000_set_reg(dev, 7, 232, 255);
    tm6000_set_reg(dev, 7, 235, 216);
    tm6000_set_reg(dev, 7, 192, 64);
    tm6000_set_reg(dev, 7, 193, 208);
    tm6000_set_reg(dev, 7, 195, 9);
    tm6000_set_reg(dev, 7, 218, 55);
    tm6000_set_reg(dev, 7, 209, 216);
    tm6000_set_reg(dev, 7, 210, 192);
    tm6000_set_reg(dev, 7, 214, 96);
    tm6000_set_reg(dev, 7, 226, 12);
    tm6000_set_reg(dev, 7, 232, 255);
    tm6000_set_reg(dev, 7, 235, 8);
    msleep(50U);
    tm6000_set_reg(dev, 4, 32, 0);
    msleep(50U);
    tm6000_set_reg(dev, 4, 32, 1);
    msleep(50U);
    tm6000_set_reg(dev, 4, 32, 0);
    msleep(100U);
    }
  }
  if (dev->gpio.dvb_led != 0) {
    {
    tm6000_set_reg(dev, 3, (int )((u16 )dev->gpio.dvb_led), 0);
    }
  } else {
  }
  return (0);
}
}
static char const __kstrtab_tm6000_init_digital_mode[25U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'i',
        'n', 'i', 't', '_',
        'd', 'i', 'g', 'i',
        't', 'a', 'l', '_',
        'm', 'o', 'd', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_tm6000_init_digital_mode ;
struct kernel_symbol const __ksymtab_tm6000_init_digital_mode = {(unsigned long )(& tm6000_init_digital_mode), (char const *)(& __kstrtab_tm6000_init_digital_mode)};
static struct reg_init tm6000_init_tab[63U] =
  { {7U, 223U, 31U},
        {7U, 255U, 8U},
        {7U, 255U, 0U},
        {7U, 213U, 79U},
        {7U, 218U, 35U},
        {7U, 219U, 8U},
        {7U, 226U, 0U},
        {7U, 227U, 16U},
        {7U, 229U, 0U},
        {7U, 232U, 0U},
        {7U, 235U, 100U},
        {7U, 238U, 194U},
        {7U, 63U, 1U},
        {7U, 0U, 0U},
        {7U, 1U, 7U},
        {7U, 2U, 95U},
        {7U, 3U, 0U},
        {7U, 5U, 100U},
        {7U, 7U, 1U},
        {7U, 8U, 130U},
        {7U, 9U, 54U},
        {7U, 10U, 80U},
        {7U, 12U, 106U},
        {7U, 17U, 201U},
        {7U, 18U, 7U},
        {7U, 19U, 59U},
        {7U, 20U, 71U},
        {7U, 21U, 111U},
        {7U, 23U, 205U},
        {7U, 24U, 30U},
        {7U, 25U, 139U},
        {7U, 26U, 162U},
        {7U, 27U, 233U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 32U, 60U},
        {7U, 33U, 60U},
        {7U, 45U, 72U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 97U},
        {7U, 50U, 116U},
        {7U, 51U, 28U},
        {7U, 52U, 116U},
        {7U, 53U, 28U},
        {7U, 54U, 122U},
        {7U, 55U, 38U},
        {7U, 56U, 64U},
        {7U, 57U, 10U},
        {7U, 66U, 85U},
        {7U, 81U, 17U},
        {7U, 85U, 1U},
        {7U, 87U, 2U},
        {7U, 88U, 53U},
        {7U, 89U, 160U},
        {7U, 128U, 21U},
        {7U, 130U, 66U},
        {7U, 193U, 208U},
        {7U, 195U, 136U},
        {7U, 63U, 0U},
        {5U, 24U, 0U}};
static struct reg_init tm6010_init_tab[75U] =
  { {7U, 192U, 0U},
        {7U, 196U, 160U},
        {7U, 198U, 64U},
        {7U, 202U, 49U},
        {7U, 204U, 225U},
        {7U, 224U, 3U},
        {7U, 254U, 127U},
        {8U, 226U, 240U},
        {8U, 227U, 244U},
        {8U, 228U, 248U},
        {8U, 230U, 0U},
        {8U, 234U, 242U},
        {8U, 235U, 240U},
        {8U, 236U, 194U},
        {8U, 240U, 96U},
        {8U, 241U, 252U},
        {7U, 63U, 1U},
        {7U, 0U, 0U},
        {7U, 1U, 7U},
        {7U, 2U, 95U},
        {7U, 3U, 0U},
        {7U, 5U, 100U},
        {7U, 7U, 1U},
        {7U, 8U, 130U},
        {7U, 9U, 54U},
        {7U, 10U, 80U},
        {7U, 12U, 106U},
        {7U, 17U, 201U},
        {7U, 18U, 7U},
        {7U, 19U, 59U},
        {7U, 20U, 71U},
        {7U, 21U, 111U},
        {7U, 23U, 205U},
        {7U, 24U, 30U},
        {7U, 25U, 139U},
        {7U, 26U, 162U},
        {7U, 27U, 233U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 32U, 60U},
        {7U, 33U, 60U},
        {7U, 45U, 72U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 97U},
        {7U, 50U, 116U},
        {7U, 51U, 28U},
        {7U, 52U, 116U},
        {7U, 53U, 28U},
        {7U, 54U, 122U},
        {7U, 55U, 38U},
        {7U, 56U, 64U},
        {7U, 57U, 10U},
        {7U, 66U, 85U},
        {7U, 81U, 17U},
        {7U, 85U, 1U},
        {7U, 87U, 2U},
        {7U, 88U, 53U},
        {7U, 89U, 160U},
        {7U, 128U, 21U},
        {7U, 130U, 66U},
        {7U, 193U, 208U},
        {7U, 195U, 136U},
        {7U, 63U, 0U},
        {5U, 24U, 0U},
        {7U, 220U, 170U},
        {7U, 221U, 48U},
        {7U, 222U, 32U},
        {7U, 223U, 208U},
        {4U, 2U, 0U},
        {7U, 216U, 15U},
        {7U, 229U, 254U},
        {7U, 218U, 255U}};
int tm6000_init(struct tm6000_core *dev )
{
  int board ;
  int rc ;
  int i ;
  int size ;
  struct reg_init *tab ;
  {
  {
  rc = 0;
  board = tm6000_get_reg32(dev, 40, 0, 0);
  }
  if (board >= 0) {
    {
    if ((board & 255) == 243) {
      goto case_243;
    } else {
    }
    if ((board & 255) == 244) {
      goto case_244;
    } else {
    }
    goto switch_default;
    case_243:
    {
    printk("\016Found tm6000\n");
    }
    if ((unsigned int )dev->dev_type != 0U) {
      dev->dev_type = 0;
    } else {
    }
    goto ldv_31934;
    case_244:
    {
    printk("\016Found tm6010\n");
    }
    if ((unsigned int )dev->dev_type != 2U) {
      dev->dev_type = 2;
    } else {
    }
    goto ldv_31934;
    switch_default:
    {
    printk("\016Unknown board version = 0x%08x\n", board);
    }
    switch_break: ;
    }
    ldv_31934: ;
  } else {
    {
    printk("\vError %i while retrieving board version\n", board);
    }
  }
  if ((unsigned int )dev->dev_type == 2U) {
    tab = (struct reg_init *)(& tm6010_init_tab);
    size = 75;
  } else {
    tab = (struct reg_init *)(& tm6000_init_tab);
    size = 63;
  }
  i = 0;
  goto ldv_31942;
  ldv_31941:
  {
  rc = tm6000_set_reg(dev, (int )(tab + (unsigned long )i)->req, (int )(tab + (unsigned long )i)->reg,
                      (int )(tab + (unsigned long )i)->val);
  }
  if (rc < 0) {
    {
    printk("\vError %i while setting req %d, reg %d to value %d\n", rc, (int )(tab + (unsigned long )i)->req,
           (int )(tab + (unsigned long )i)->reg, (int )(tab + (unsigned long )i)->val);
    }
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_31942: ;
  if (i < size) {
    goto ldv_31941;
  } else {
  }
  {
  msleep(5U);
  rc = tm6000_cards_setup(dev);
  }
  return (rc);
}
}
int tm6000_set_audio_bitrate(struct tm6000_core *dev , int bitrate )
{
  int val ;
  u8 areg_f0 ;
  u8 areg_0a ;
  {
  val = 0;
  areg_f0 = 96U;
  areg_0a = 145U;
  {
  if (bitrate == 48000) {
    goto case_48000;
  } else {
  }
  if (bitrate == 32000) {
    goto case_32000;
  } else {
  }
  goto switch_default;
  case_48000:
  areg_f0 = 96U;
  areg_0a = 145U;
  dev->audio_bitrate = bitrate;
  goto ldv_31952;
  case_32000:
  areg_f0 = 0U;
  areg_0a = 144U;
  dev->audio_bitrate = bitrate;
  goto ldv_31952;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_31952: ;
  if ((unsigned int )dev->dev_type == 2U) {
    {
    val = tm6000_set_reg(dev, 8, 10, (int )areg_0a);
    }
    if (val < 0) {
      return (val);
    } else {
    }
    {
    val = tm6000_set_reg_mask(dev, 8, 240, (int )areg_f0, 240);
    }
    if (val < 0) {
      return (val);
    } else {
    }
  } else {
    {
    val = tm6000_set_reg_mask(dev, 7, 235, (int )areg_f0, 240);
    }
    if (val < 0) {
      return (val);
    } else {
    }
  }
  return (0);
}
}
static char const __kstrtab_tm6000_set_audio_bitrate[25U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 's',
        'e', 't', '_', 'a',
        'u', 'd', 'i', 'o',
        '_', 'b', 'i', 't',
        'r', 'a', 't', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_tm6000_set_audio_bitrate ;
struct kernel_symbol const __ksymtab_tm6000_set_audio_bitrate = {(unsigned long )(& tm6000_set_audio_bitrate), (char const *)(& __kstrtab_tm6000_set_audio_bitrate)};
int tm6000_set_audio_rinput(struct tm6000_core *dev )
{
  u8 areg_f0 ;
  u8 areg_07 ;
  u8 areg_eb ;
  {
  if ((unsigned int )dev->dev_type == 2U) {
    areg_07 = 16U;
    {
    if ((unsigned int )dev->rinput.amux == 6U) {
      goto case_6;
    } else {
    }
    if ((unsigned int )dev->rinput.amux == 7U) {
      goto case_7;
    } else {
    }
    if ((unsigned int )dev->rinput.amux == 4U) {
      goto case_4;
    } else {
    }
    if ((unsigned int )dev->rinput.amux == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )dev->rinput.amux == 8U) {
      goto case_8;
    } else {
    }
    goto switch_default;
    case_6: ;
    case_7:
    areg_f0 = 3U;
    areg_07 = 48U;
    goto ldv_31970;
    case_4:
    areg_f0 = 0U;
    goto ldv_31970;
    case_5:
    areg_f0 = 8U;
    goto ldv_31970;
    case_8:
    areg_f0 = 4U;
    goto ldv_31970;
    switch_default:
    {
    printk("\016%s: audio input dosn\'t support\n", (char *)(& dev->name));
    }
    return (0);
    switch_break: ;
    }
    ldv_31970:
    {
    tm6000_set_reg_mask(dev, 8, 240, (int )areg_f0, 15);
    tm6000_set_reg_mask(dev, 7, 7, (int )areg_07, 240);
    }
  } else {
    {
    if ((unsigned int )dev->rinput.amux == 4U) {
      goto case_4___0;
    } else {
    }
    if ((unsigned int )dev->rinput.amux == 5U) {
      goto case_5___0;
    } else {
    }
    goto switch_default___0;
    case_4___0:
    areg_eb = 0U;
    goto ldv_31977;
    case_5___0:
    areg_eb = 4U;
    goto ldv_31977;
    switch_default___0:
    {
    printk("\016%s: audio input dosn\'t support\n", (char *)(& dev->name));
    }
    return (0);
    switch_break___0: ;
    }
    ldv_31977:
    {
    tm6000_set_reg_mask(dev, 7, 235, (int )areg_eb, 15);
    }
  }
  return (0);
}
}
static void tm6010_set_mute_sif(struct tm6000_core *dev , u8 mute )
{
  u8 mute_reg ;
  {
  mute_reg = 0U;
  if ((unsigned int )mute != 0U) {
    mute_reg = 8U;
  } else {
  }
  {
  tm6000_set_reg_mask(dev, 8, 10, (int )mute_reg, 8);
  }
  return;
}
}
static void tm6010_set_mute_adc(struct tm6000_core *dev , u8 mute )
{
  u8 mute_reg ;
  {
  mute_reg = 0U;
  if ((unsigned int )mute != 0U) {
    mute_reg = 32U;
  } else {
  }
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6000_set_reg_mask(dev, 8, 242, (int )mute_reg, 32);
    tm6000_set_reg_mask(dev, 8, 243, (int )mute_reg, 32);
    }
  } else {
    {
    tm6000_set_reg_mask(dev, 7, 236, (int )mute_reg, 32);
    tm6000_set_reg_mask(dev, 7, 237, (int )mute_reg, 32);
    }
  }
  return;
}
}
int tm6000_tvaudio_set_mute(struct tm6000_core *dev , u8 mute )
{
  enum tm6000_mux mux ;
  {
  if ((unsigned int )dev->radio != 0U) {
    mux = dev->rinput.amux;
  } else {
    mux = dev->vinput[dev->input].amux;
  }
  {
  if ((unsigned int )mux == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )mux == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )mux == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )mux == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_7: ;
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6010_set_mute_sif(dev, (int )mute);
    }
  } else {
    {
    printk("\016ERROR: TM5600 and TM6000 don\'t has SIF audio inputs. Please check the %s configuration.\n",
           (char *)(& dev->name));
    }
    return (-22);
  }
  goto ldv_31997;
  case_4: ;
  case_5:
  {
  tm6010_set_mute_adc(dev, (int )mute);
  }
  goto ldv_31997;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_31997: ;
  return (0);
}
}
static void tm6010_set_volume_sif(struct tm6000_core *dev , int vol )
{
  u8 vol_reg ;
  {
  vol_reg = (unsigned int )((u8 )vol) & 15U;
  if (vol < 0) {
    vol_reg = (u8 )((unsigned int )vol_reg | 64U);
  } else {
  }
  {
  tm6000_set_reg(dev, 8, 7, (int )vol_reg);
  tm6000_set_reg(dev, 8, 8, (int )vol_reg);
  }
  return;
}
}
static void tm6010_set_volume_adc(struct tm6000_core *dev , int vol )
{
  u8 vol_reg ;
  {
  vol_reg = (unsigned int )((u8 )((unsigned int )((unsigned char )vol) + 16U)) & 31U;
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6000_set_reg(dev, 8, 242, (int )vol_reg);
    tm6000_set_reg(dev, 8, 243, (int )vol_reg);
    }
  } else {
    {
    tm6000_set_reg(dev, 7, 236, (int )vol_reg);
    tm6000_set_reg(dev, 7, 237, (int )vol_reg);
    }
  }
  return;
}
}
void tm6000_set_volume(struct tm6000_core *dev , int vol )
{
  enum tm6000_mux mux ;
  {
  if ((unsigned int )dev->radio != 0U) {
    mux = dev->rinput.amux;
    vol = vol + 8;
  } else {
    mux = dev->vinput[dev->input].amux;
  }
  {
  if ((unsigned int )mux == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )mux == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )mux == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )mux == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_7: ;
  if ((unsigned int )dev->dev_type == 2U) {
    {
    tm6010_set_volume_sif(dev, vol);
    }
  } else {
    {
    printk("\016ERROR: TM5600 and TM6000 don\'t has SIF audio inputs. Please check the %s configuration.\n",
           (char *)(& dev->name));
    }
  }
  goto ldv_32018;
  case_4: ;
  case_5:
  {
  tm6010_set_volume_adc(dev, vol);
  }
  goto ldv_32018;
  switch_default: ;
  goto ldv_32018;
  switch_break: ;
  }
  ldv_32018: ;
  return;
}
}
static struct list_head tm6000_devlist = {& tm6000_devlist, & tm6000_devlist};
static struct mutex tm6000_devlist_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "tm6000_devlist_mutex.wait_lock",
                                                           0, 0UL}}}}, {& tm6000_devlist_mutex.wait_list,
                                                                        & tm6000_devlist_mutex.wait_list},
    0, 0, (void *)(& tm6000_devlist_mutex), {0, {0, 0}, "tm6000_devlist_mutex", 0,
                                             0UL}};
void tm6000_remove_from_devlist(struct tm6000_core *dev )
{
  {
  {
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  list_del(& dev->devlist);
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return;
}
}
void tm6000_add_into_devlist(struct tm6000_core *dev )
{
  {
  {
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  list_add_tail(& dev->devlist, & tm6000_devlist);
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return;
}
}
static struct list_head tm6000_extension_devlist = {& tm6000_extension_devlist, & tm6000_extension_devlist};
int tm6000_call_fillbuf(struct tm6000_core *dev , enum tm6000_ops_type type , char *buf ,
                        int size )
{
  struct tm6000_ops *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  {
  ops = (struct tm6000_ops *)0;
  tmp = list_empty((struct list_head const *)(& tm6000_extension_devlist));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)tm6000_extension_devlist.next;
    ops = (struct tm6000_ops *)__mptr;
    goto ldv_32044;
    ldv_32043: ;
    if ((unsigned long )ops->fillbuf != (unsigned long )((int (*)(struct tm6000_core * ,
                                                                  char * , int ))0) && (unsigned int )ops->type == (unsigned int )type) {
      {
      (*(ops->fillbuf))(dev, buf, size);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)ops->next.next;
    ops = (struct tm6000_ops *)__mptr___0;
    ldv_32044: ;
    if ((unsigned long )(& ops->next) != (unsigned long )(& tm6000_extension_devlist)) {
      goto ldv_32043;
    } else {
    }
  } else {
  }
  return (0);
}
}
int tm6000_register_extension(struct tm6000_ops *ops )
{
  struct tm6000_core *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = (struct tm6000_core *)0;
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  list_add_tail(& ops->next, & tm6000_extension_devlist);
  __mptr = (struct list_head const *)tm6000_devlist.next;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff118UL;
  }
  goto ldv_32055;
  ldv_32054:
  {
  (*(ops->init))(dev);
  printk("\016%s: Initialized (%s) extension\n", (char *)(& dev->name), ops->name);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct tm6000_core *)__mptr___0 + 0xfffffffffffff118UL;
  }
  ldv_32055: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& tm6000_devlist)) {
    goto ldv_32054;
  } else {
  }
  {
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return (0);
}
}
static char const __kstrtab_tm6000_register_extension[26U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'e', 'x', 't', 'e',
        'n', 's', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_tm6000_register_extension ;
struct kernel_symbol const __ksymtab_tm6000_register_extension = {(unsigned long )(& tm6000_register_extension), (char const *)(& __kstrtab_tm6000_register_extension)};
void tm6000_unregister_extension(struct tm6000_ops *ops )
{
  struct tm6000_core *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = (struct tm6000_core *)0;
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  __mptr = (struct list_head const *)tm6000_devlist.next;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff118UL;
  }
  goto ldv_32073;
  ldv_32072:
  {
  (*(ops->fini))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct tm6000_core *)__mptr___0 + 0xfffffffffffff118UL;
  }
  ldv_32073: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& tm6000_devlist)) {
    goto ldv_32072;
  } else {
  }
  {
  printk("\016tm6000: Remove (%s) extension\n", ops->name);
  list_del(& ops->next);
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return;
}
}
static char const __kstrtab_tm6000_unregister_extension[28U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'e', 'x',
        't', 'e', 'n', 's',
        'i', 'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_tm6000_unregister_extension ;
struct kernel_symbol const __ksymtab_tm6000_unregister_extension = {(unsigned long )(& tm6000_unregister_extension), (char const *)(& __kstrtab_tm6000_unregister_extension)};
void tm6000_init_extension(struct tm6000_core *dev )
{
  struct tm6000_ops *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  {
  ops = (struct tm6000_ops *)0;
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& tm6000_extension_devlist));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)tm6000_extension_devlist.next;
    ops = (struct tm6000_ops *)__mptr;
    goto ldv_32091;
    ldv_32090: ;
    if ((unsigned long )ops->init != (unsigned long )((int (*)(struct tm6000_core * ))0)) {
      {
      (*(ops->init))(dev);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)ops->next.next;
    ops = (struct tm6000_ops *)__mptr___0;
    ldv_32091: ;
    if ((unsigned long )(& ops->next) != (unsigned long )(& tm6000_extension_devlist)) {
      goto ldv_32090;
    } else {
    }
  } else {
  }
  {
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return;
}
}
void tm6000_close_extension(struct tm6000_core *dev )
{
  struct tm6000_ops *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  {
  ops = (struct tm6000_ops *)0;
  mutex_lock_nested(& tm6000_devlist_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& tm6000_extension_devlist));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)tm6000_extension_devlist.next;
    ops = (struct tm6000_ops *)__mptr;
    goto ldv_32102;
    ldv_32101: ;
    if ((unsigned long )ops->fini != (unsigned long )((int (*)(struct tm6000_core * ))0)) {
      {
      (*(ops->fini))(dev);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)ops->next.next;
    ops = (struct tm6000_ops *)__mptr___0;
    ldv_32102: ;
    if ((unsigned long )(& ops->next) != (unsigned long )(& tm6000_extension_devlist)) {
      goto ldv_32101;
    } else {
    }
  } else {
  }
  {
  mutex_unlock(& tm6000_devlist_mutex);
  }
  return;
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
static int ldv_dev_set_drvdata_43(struct device *dev , void *data ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_43(& dev->dev, data);
  }
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
static unsigned int i2c_debug ;
static int tm6000_i2c_send_regs(struct tm6000_core *dev , unsigned char addr , __u8 reg ,
                                char *buf , int len )
{
  int rc ;
  unsigned int i2c_packet_limit ;
  {
  i2c_packet_limit = 16U;
  if ((unsigned int )dev->dev_type == 2U) {
    i2c_packet_limit = 80U;
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-1);
  } else {
  }
  if (len <= 0 || (unsigned int )len > i2c_packet_limit) {
    {
    printk("\vIncorrect length of i2c packet = %d, limit set to %d\n", len, i2c_packet_limit);
    }
    return (-1);
  } else {
  }
  {
  rc = tm6000_read_write_usb(dev, 64, 16, (int )((u16 )((int )((short )addr) | (int )((short )((int )reg << 8)))),
                             0, (u8 *)buf, (int )((u16 )len));
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (rc);
}
}
static int tm6000_i2c_recv_regs(struct tm6000_core *dev , unsigned char addr , __u8 reg ,
                                char *buf , int len )
{
  int rc ;
  u8 b[2U] ;
  unsigned int i2c_packet_limit ;
  {
  i2c_packet_limit = 16U;
  if ((unsigned int )dev->dev_type == 2U) {
    i2c_packet_limit = 64U;
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-1);
  } else {
  }
  if (len <= 0 || (unsigned int )len > i2c_packet_limit) {
    {
    printk("\vIncorrect length of i2c packet = %d, limit set to %d\n", len, i2c_packet_limit);
    }
    return (-1);
  } else {
  }
  if (((unsigned int )*((unsigned char *)dev + 324UL) != 0U && dev->demod_addr << 1 == (int )addr) && ((unsigned int )reg & 1U) == 0U) {
    {
    reg = (unsigned int )reg + 255U;
    len = len + 1;
    rc = tm6000_read_write_usb(dev, 192, 16, (int )((u16 )((int )((short )addr) | (int )((short )((int )reg << 8)))),
                               0, (u8 *)(& b), (int )((u16 )len));
    *buf = (char )b[1];
    }
  } else {
    {
    rc = tm6000_read_write_usb(dev, 192, 16, (int )((u16 )((int )((short )addr) | (int )((short )((int )reg << 8)))),
                               0, (u8 *)buf, (int )((u16 )len));
    }
  }
  return (rc);
}
}
static int tm6000_i2c_recv_regs16(struct tm6000_core *dev , unsigned char addr , __u16 reg ,
                                  char *buf , int len )
{
  int rc ;
  unsigned char ureg ;
  {
  if ((unsigned long )buf == (unsigned long )((char *)0) || len != 2) {
    return (-1);
  } else {
  }
  if ((unsigned int )dev->dev_type == 2U) {
    {
    ureg = (unsigned char )reg;
    rc = tm6000_read_write_usb(dev, 64, 16, (int )((u16 )((int )((short )addr) | ((int )((short )reg) & -256))),
                               0, & ureg, 1);
    }
    if (rc < 0) {
      return (rc);
    } else {
    }
    {
    rc = tm6000_read_write_usb(dev, 192, 35, (int )reg, 0, (u8 *)buf, (int )((u16 )len));
    }
  } else {
    {
    rc = tm6000_read_write_usb(dev, 192, 14, (int )addr, (int )reg, (u8 *)buf, (int )((u16 )len));
    }
  }
  return (rc);
}
}
static int tm6000_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct tm6000_core *dev ;
  int addr ;
  int rc ;
  int i ;
  int byte ;
  {
  dev = (struct tm6000_core *)i2c_adap->algo_data;
  if (num <= 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_31878;
  ldv_31877:
  addr = ((int )(msgs + (unsigned long )i)->addr << 1) & 255;
  if (i2c_debug > 1U) {
    {
    printk("\017%s at %s: %s %s addr=0x%x len=%d:", (char *)(& dev->name), "tm6000_i2c_xfer",
           (int )(msgs + (unsigned long )i)->flags & 1 ? (char *)"read" : (char *)"write",
           i == num + -1 ? (char *)"stop" : (char *)"nonstop", addr, (int )(msgs + (unsigned long )i)->len);
    }
  } else {
  }
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    if (i2c_debug > 1U) {
      {
      printk("\017%s at %s:  read without preceding write not supported", (char *)(& dev->name),
             "tm6000_i2c_xfer");
      }
    } else {
    }
    rc = -95;
    goto err;
  } else
  if (((i + 1 < num && (unsigned int )(msgs + (unsigned long )i)->len <= 2U) && (int )(msgs + ((unsigned long )i + 1UL))->flags & 1) && (int )(msgs + (unsigned long )i)->addr == (int )(msgs + ((unsigned long )i + 1UL))->addr) {
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_31869;
      ldv_31868:
      {
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      }
      ldv_31869: ;
      if (byte < (int )(msgs + (unsigned long )i)->len) {
        goto ldv_31868;
      } else {
      }
    } else {
    }
    if (i2c_debug > 1U) {
      {
      printk("\017%s at %s: ; joined to read %s len=%d:", (char *)(& dev->name), "tm6000_i2c_xfer",
             i == num + -2 ? (char *)"stop" : (char *)"nonstop", (int )(msgs + ((unsigned long )i + 1UL))->len);
      }
    } else {
    }
    if ((unsigned int )(msgs + (unsigned long )i)->len == 2U) {
      {
      rc = tm6000_i2c_recv_regs16(dev, (int )((unsigned char )addr), (int )((__u16 )((int )((short )((int )*((msgs + (unsigned long )i)->buf) << 8)) | (int )((short )*((msgs + (unsigned long )i)->buf + 1UL)))),
                                  (char *)(msgs + ((unsigned long )i + 1UL))->buf,
                                  (int )(msgs + ((unsigned long )i + 1UL))->len);
      }
    } else {
      {
      rc = tm6000_i2c_recv_regs(dev, (int )((unsigned char )addr), (int )*((msgs + (unsigned long )i)->buf),
                                (char *)(msgs + ((unsigned long )i + 1UL))->buf, (int )(msgs + ((unsigned long )i + 1UL))->len);
      }
    }
    i = i + 1;
    if (addr == dev->tuner_addr << 1) {
      {
      tm6000_set_reg(dev, 50, 0, 0);
      tm6000_set_reg(dev, 51, 0, 0);
      }
    } else {
    }
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_31872;
      ldv_31871:
      {
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      }
      ldv_31872: ;
      if (byte < (int )(msgs + (unsigned long )i)->len) {
        goto ldv_31871;
      } else {
      }
    } else {
    }
  } else {
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_31875;
      ldv_31874:
      {
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      }
      ldv_31875: ;
      if (byte < (int )(msgs + (unsigned long )i)->len) {
        goto ldv_31874;
      } else {
      }
    } else {
    }
    {
    rc = tm6000_i2c_send_regs(dev, (int )((unsigned char )addr), (int )*((msgs + (unsigned long )i)->buf),
                              (char *)(msgs + (unsigned long )i)->buf + 1U, (int )(msgs + (unsigned long )i)->len + -1);
    }
  }
  if (i2c_debug > 1U) {
    {
    printk("\n");
    }
  } else {
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_31878: ;
  if (i < num) {
    goto ldv_31877;
  } else {
  }
  return (num);
  err: ;
  if (i2c_debug > 1U) {
    {
    printk("\017%s at %s:  ERROR: %i\n", (char *)(& dev->name), "tm6000_i2c_xfer",
           rc);
    }
  } else {
  }
  return (rc);
}
}
static int tm6000_i2c_eeprom(struct tm6000_core *dev )
{
  int i ;
  int rc ;
  unsigned char *p ;
  unsigned char bytes[17U] ;
  {
  p = (unsigned char *)(& dev->eedata);
  dev->i2c_client.addr = 80U;
  dev->eedata_size = 0U;
  bytes[16] = 0U;
  i = 0;
  goto ldv_31889;
  ldv_31888:
  {
  *p = (unsigned char )i;
  rc = tm6000_i2c_recv_regs(dev, 160, (int )((__u8 )i), (char *)p, 1);
  }
  if (rc <= 0) {
    if ((unsigned long )p == (unsigned long )((unsigned char *)(& dev->eedata))) {
      goto noeeprom;
    } else {
      {
      printk("\f%s: i2c eeprom read error (err=%d)\n", (char *)(& dev->name), rc);
      }
    }
    return (-22);
  } else {
  }
  dev->eedata_size = dev->eedata_size + 1U;
  p = p + 1;
  if (((unsigned int )i & 15U) == 0U) {
    {
    printk("\016%s: i2c eeprom %02x:", (char *)(& dev->name), i);
    }
  } else {
  }
  {
  printk(" %02x", (int )dev->eedata[i]);
  }
  if ((unsigned int )dev->eedata[i] - 32U <= 90U) {
    bytes[i % 16] = dev->eedata[i];
  } else {
    bytes[i % 16] = 46U;
  }
  i = i + 1;
  if (((unsigned int )i & 15U) == 0U) {
    {
    bytes[16] = 0U;
    printk("  %s\n", (unsigned char *)(& bytes));
    }
  } else {
  }
  ldv_31889: ;
  if ((unsigned int )i <= 255U) {
    goto ldv_31888;
  } else {
  }
  if (((unsigned int )i & 15U) != 0U) {
    bytes[i % 16] = 0U;
    i = i % 16;
    goto ldv_31892;
    ldv_31891:
    {
    printk("   ");
    i = i + 1;
    }
    ldv_31892: ;
    if (i <= 15) {
      goto ldv_31891;
    } else {
    }
    {
    printk("  %s\n", (unsigned char *)(& bytes));
    }
  } else {
  }
  return (0);
  noeeprom:
  {
  printk("\016%s: Huh, no eeprom present (err=%d)?\n", (char *)(& dev->name), rc);
  }
  return (-22);
}
}
static u32 functionality(struct i2c_adapter *adap )
{
  {
  return (251592712U);
}
}
static struct i2c_algorithm const tm6000_algo = {& tm6000_i2c_xfer, 0, & functionality};
int tm6000_i2c_register(struct tm6000_core *dev )
{
  int rc ;
  {
  {
  dev->i2c_adap.owner = & __this_module;
  dev->i2c_adap.algo = & tm6000_algo;
  dev->i2c_adap.dev.parent = & (dev->udev)->dev;
  strlcpy((char *)(& dev->i2c_adap.name), (char const *)(& dev->name), 48UL);
  dev->i2c_adap.algo_data = (void *)dev;
  i2c_set_adapdata(& dev->i2c_adap, (void *)(& dev->v4l2_dev));
  rc = i2c_add_adapter(& dev->i2c_adap);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  dev->i2c_client.adapter = & dev->i2c_adap;
  strlcpy((char *)(& dev->i2c_client.name), "tm6000 internal", 20UL);
  tm6000_i2c_eeprom(dev);
  }
  return (0);
}
}
int tm6000_i2c_unregister(struct tm6000_core *dev )
{
  {
  {
  i2c_del_adapter(& dev->i2c_adap);
  }
  return (0);
}
}
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
  tm6000_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
static int ldv_dev_set_drvdata_43(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
long ldv__builtin_expect(long exp , long c ) ;
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
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )*p);
  }
  return (tmp);
}
}
__inline static void __swab16s(__u16 *p )
{
  {
  {
  *p = __swab16p((__u16 const *)p);
  }
  return;
}
}
extern void __bad_percpu_size(void) ;
extern char *strcpy(char * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_slock_of_tm6000_core(void) ;
void ldv_spin_unlock_slock_of_tm6000_core(void) ;
int ldv_filter_err_code(int ret_val ) ;
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
  goto ldv_6329;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6329;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6329;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6329;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6329: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_52(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_53(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_55(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_42(struct device const *dev ) ;
static int ldv_dev_set_drvdata_43___0(struct device *dev , void *data ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  }
  return (actual < (int )size ? actual : -1);
}
}
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
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_reset_configuration(struct usb_device * ) ;
__inline static __u16 usb_maxpacket(struct usb_device *udev , int pipe , int is_out )
{
  struct usb_host_endpoint *ep ;
  unsigned int epnum ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  epnum = (unsigned int )(pipe >> 15) & 15U;
  if (is_out != 0) {
    {
    __ret_warn_on = (pipe & 128) != 0;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/linux/usb.h", 1808);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    ep = udev->ep_out[epnum];
    }
  } else {
    {
    __ret_warn_on___0 = (pipe & 128) == 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("include/linux/usb.h", 1811);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    ep = udev->ep_in[epnum];
    }
  }
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (0U);
  } else {
  }
  {
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  }
  return ((__u16 )tmp___1);
}
}
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
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
extern char const *v4l2_type_names[] ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_pending(struct v4l2_fh * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_42((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_43___0(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  }
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  }
  return (tmp);
}
}
extern void v4l2_get_timestamp(struct timeval * ) ;
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern void videobuf_queue_vmalloc_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                        struct device * , spinlock_t * , enum v4l2_buf_type ,
                                        enum v4l2_field , unsigned int , void * ,
                                        struct mutex * ) ;
extern void *videobuf_to_vmalloc(struct videobuf_buffer * ) ;
extern void videobuf_vmalloc_free(struct videobuf_buffer * ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler * , struct v4l2_ctrl_handler * ,
                                 bool (*)(struct v4l2_ctrl const * ) ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
int tm6000_v4l2_exit(void) ;
void tm6000_get_std_res(struct tm6000_core *dev ) ;
int tm6000_ir_int_start(struct tm6000_core *dev ) ;
void tm6000_ir_int_stop(struct tm6000_core *dev ) ;
int tm6000_debug ;
static unsigned int vid_limit = 16U;
static int video_nr = -1;
static int radio_nr = -1;
static bool keep_urb ;
static char const __kstrtab_tm6000_debug[13U] =
  { 't', 'm', '6', '0',
        '0', '0', '_', 'd',
        'e', 'b', 'u', 'g',
        '\000'};
struct kernel_symbol const __ksymtab_tm6000_debug ;
struct kernel_symbol const __ksymtab_tm6000_debug = {(unsigned long )(& tm6000_debug), (char const *)(& __kstrtab_tm6000_debug)};
static struct tm6000_fmt format[3U] = { {(char *)"4:2:2, packed, YVY2", 1448695129U, 16},
        {(char *)"4:2:2, packed, UYVY", 1498831189U, 16},
        {(char *)"A/V + VBI mux packet", 808865108U, 16}};
__inline static void get_next_buf(struct tm6000_dmaqueue *dma_q , struct tm6000_buffer **buf )
{
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  {
  __mptr = (struct tm6000_dmaqueue const *)dma_q;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff0e0UL;
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  }
  if (tmp != 0) {
    if ((tm6000_debug & 16) != 0) {
      {
      printk("\016(%lu) %s %s :No active queue to serve\n", jiffies, (char *)(& dev->name),
             "get_next_buf");
      }
    } else {
    }
    *buf = (struct tm6000_buffer *)0;
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)dma_q->active.next;
  *buf = (struct tm6000_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
  return;
}
}
__inline static void buffer_filled(struct tm6000_core *dev , struct tm6000_dmaqueue *dma_q ,
                                   struct tm6000_buffer *buf )
{
  {
  if ((tm6000_debug & 32) != 0) {
    {
    printk("\016(%lu) %s %s :[%p/%d] wakeup\n", jiffies, (char *)(& dev->name), "buffer_filled",
           buf, buf->vb.i);
    }
  } else {
  }
  {
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  v4l2_get_timestamp(& buf->vb.ts);
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  }
  return;
}
}
static int copy_streams(u8 *data , unsigned long len , struct urb *urb )
{
  struct tm6000_dmaqueue *dma_q ;
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue const *__mptr ;
  u8 *ptr ;
  u8 *endp ;
  unsigned long header ;
  int rc ;
  unsigned int cmd ;
  unsigned int cpysize ;
  unsigned int pktsize ;
  unsigned int size ;
  unsigned int field ;
  unsigned int block ;
  unsigned int line ;
  unsigned int pos ;
  struct tm6000_buffer *vbuf ;
  char *voutp ;
  unsigned int linewidth ;
  void *tmp ;
  void *tmp___0 ;
  int i ;
  u32 pts ;
  {
  dma_q = (struct tm6000_dmaqueue *)urb->context;
  __mptr = (struct tm6000_dmaqueue const *)dma_q;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff0e0UL;
  ptr = data;
  endp = data + len;
  header = 0UL;
  rc = 0;
  pos = 0U;
  vbuf = (struct tm6000_buffer *)0;
  voutp = (char *)0;
  if ((unsigned int )dev->radio == 0U) {
    {
    get_next_buf(dma_q, & vbuf);
    }
    if ((unsigned long )vbuf == (unsigned long )((struct tm6000_buffer *)0)) {
      return (rc);
    } else {
    }
    {
    tmp = videobuf_to_vmalloc(& vbuf->vb);
    voutp = (char *)tmp;
    }
    if ((unsigned long )voutp == (unsigned long )((char *)0)) {
      return (0);
    } else {
    }
  } else {
  }
  ptr = data;
  goto ldv_35510;
  ldv_35509: ;
  if ((unsigned int )dev->isoc_ctl.cmd == 0U) {
    if (dev->isoc_ctl.tmp_buf_len > 0) {
      header = (unsigned long )dev->isoc_ctl.tmp_buf;
      if (4 - dev->isoc_ctl.tmp_buf_len > 0) {
        {
        memcpy((void *)(& header) + (unsigned long )dev->isoc_ctl.tmp_buf_len, (void const *)ptr,
               (size_t )(4 - dev->isoc_ctl.tmp_buf_len));
        ptr = ptr + (unsigned long )(4 - dev->isoc_ctl.tmp_buf_len);
        }
      } else {
      }
      dev->isoc_ctl.tmp_buf_len = 0;
    } else {
      if ((unsigned long )(ptr + 3UL) >= (unsigned long )endp) {
        {
        dev->isoc_ctl.tmp_buf_len = (int )((unsigned int )((long )endp) - (unsigned int )((long )ptr));
        memcpy((void *)(& dev->isoc_ctl.tmp_buf), (void const *)ptr, (size_t )dev->isoc_ctl.tmp_buf_len);
        }
        return (rc);
      } else {
      }
      goto ldv_35492;
      ldv_35491: ;
      if ((unsigned int )*(ptr + 3UL) == 71U) {
        goto ldv_35490;
      } else {
      }
      ptr = ptr + 1;
      ldv_35492: ;
      if ((unsigned long )ptr < (unsigned long )(endp + 0xfffffffffffffffdUL)) {
        goto ldv_35491;
      } else {
      }
      ldv_35490:
      header = *((unsigned long *)ptr);
      ptr = ptr + 4UL;
    }
    size = ((unsigned int )header & 126U) << 1U;
    if (size != 0U) {
      size = size - 4U;
    } else {
    }
    block = (unsigned int )(header >> 7) & 15U;
    field = (unsigned int )(header >> 11) & 1U;
    line = (unsigned int )(header >> 12) & 511U;
    cmd = (unsigned int )(header >> 21) & 7U;
    if (size > 180U) {
      size = 180U;
    } else {
    }
    pktsize = 180U;
    {
    if (cmd == 1U) {
      goto case_1;
    } else {
    }
    if (cmd == 3U) {
      goto case_3;
    } else {
    }
    if (cmd == 2U) {
      goto case_2;
    } else {
    }
    if (cmd == 4U) {
      goto case_4;
    } else {
    }
    goto switch_break;
    case_1: ;
    if ((unsigned int )dev->radio == 0U) {
      if ((unsigned int )dev->isoc_ctl.vfield != field && field == 1U) {
        {
        buffer_filled(dev, dma_q, vbuf);
        }
        if ((tm6000_debug & 32) != 0) {
          {
          printk("\016(%lu) %s %s :new buffer filled\n", jiffies, (char *)(& dev->name),
                 "copy_streams");
          }
        } else {
        }
        {
        get_next_buf(dma_q, & vbuf);
        }
        if ((unsigned long )vbuf == (unsigned long )((struct tm6000_buffer *)0)) {
          return (rc);
        } else {
        }
        {
        tmp___0 = videobuf_to_vmalloc(& vbuf->vb);
        voutp = (char *)tmp___0;
        }
        if ((unsigned long )voutp == (unsigned long )((char *)0)) {
          return (rc);
        } else {
        }
        {
        memset((void *)voutp, 0, vbuf->vb.size);
        }
      } else {
      }
      linewidth = vbuf->vb.width << 1;
      pos = (((line << 1) - field) - 1U) * linewidth + block * 180U;
      if ((unsigned long )(pos + size) > vbuf->vb.size) {
        cmd = 5U;
      } else {
      }
      dev->isoc_ctl.vfield = (int )field;
    } else {
    }
    goto ldv_35495;
    case_3: ;
    goto ldv_35495;
    case_2: ;
    case_4:
    size = pktsize;
    goto ldv_35495;
    switch_break: ;
    }
    ldv_35495: ;
  } else {
    cmd = (unsigned int )dev->isoc_ctl.cmd;
    size = (unsigned int )dev->isoc_ctl.size;
    pos = (unsigned int )dev->isoc_ctl.pos;
    pktsize = (unsigned int )dev->isoc_ctl.pktsize;
    field = (unsigned int )dev->isoc_ctl.field;
  }
  cpysize = (unsigned int )((long )size < (long )endp - (long )ptr ? (long )size : (long )endp - (long )ptr);
  if (cpysize != 0U) {
    {
    if (cmd == 1U) {
      goto case_1___0;
    } else {
    }
    if (cmd == 2U) {
      goto case_2___0;
    } else {
    }
    if (cmd == 3U) {
      goto case_3___0;
    } else {
    }
    if (cmd == 4U) {
      goto case_4___0;
    } else {
    }
    goto switch_break___0;
    case_1___0: ;
    if ((unsigned long )vbuf != (unsigned long )((struct tm6000_buffer *)0)) {
      {
      memcpy((void *)voutp + (unsigned long )pos, (void const *)ptr, (size_t )cpysize);
      }
    } else {
    }
    goto ldv_35500;
    case_2___0:
    i = 0;
    goto ldv_35504;
    ldv_35503:
    {
    __swab16s((__u16 *)ptr + (unsigned long )i);
    i = i + 2;
    }
    ldv_35504: ;
    if ((unsigned int )i < cpysize) {
      goto ldv_35503;
    } else {
    }
    {
    tm6000_call_fillbuf(dev, 16, (char *)ptr, (int )cpysize);
    }
    goto ldv_35500;
    case_3___0: ;
    goto ldv_35500;
    case_4___0:
    pts = *((u32 *)ptr);
    if ((tm6000_debug & 32) != 0) {
      {
      printk("\016(%lu) %s %s :field %d, PTS %x", jiffies, (char *)(& dev->name),
             "copy_streams", field, pts);
      }
    } else {
    }
    goto ldv_35500;
    switch_break___0: ;
    }
    ldv_35500: ;
  } else {
  }
  if ((unsigned long )(ptr + (unsigned long )pktsize) > (unsigned long )endp) {
    dev->isoc_ctl.pos = (int )(pos + cpysize);
    dev->isoc_ctl.size = (int )(size - cpysize);
    dev->isoc_ctl.cmd = (u8 )cmd;
    dev->isoc_ctl.field = (int )field;
    dev->isoc_ctl.pktsize = (int )(pktsize + ((unsigned int )((long )ptr) - (unsigned int )((long )endp)));
    ptr = ptr + (unsigned long )((long )endp - (long )ptr);
  } else {
    dev->isoc_ctl.cmd = 0U;
    ptr = ptr + (unsigned long )pktsize;
  }
  ldv_35510: ;
  if ((unsigned long )ptr < (unsigned long )endp) {
    goto ldv_35509;
  } else {
  }
  return (0);
}
}
static int copy_multiplexed(u8 *ptr , unsigned long len , struct urb *urb )
{
  struct tm6000_dmaqueue *dma_q ;
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue const *__mptr ;
  unsigned int pos ;
  unsigned int cpysize ;
  int rc ;
  struct tm6000_buffer *buf ;
  char *outp ;
  void *tmp ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  void *tmp___0 ;
  {
  {
  dma_q = (struct tm6000_dmaqueue *)urb->context;
  __mptr = (struct tm6000_dmaqueue const *)dma_q;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff0e0UL;
  pos = (unsigned int )dev->isoc_ctl.pos;
  rc = 1;
  outp = (char *)0;
  get_next_buf(dma_q, & buf);
  }
  if ((unsigned long )buf != (unsigned long )((struct tm6000_buffer *)0)) {
    {
    tmp = videobuf_to_vmalloc(& buf->vb);
    outp = (char *)tmp;
    }
  } else {
  }
  if ((unsigned long )outp == (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  goto ldv_35532;
  ldv_35531:
  {
  _min1 = len;
  _min2 = buf->vb.size - (unsigned long )pos;
  cpysize = (unsigned int )(_min1 < _min2 ? _min1 : _min2);
  memcpy((void *)outp + (unsigned long )pos, (void const *)ptr, (size_t )cpysize);
  pos = pos + cpysize;
  ptr = ptr + (unsigned long )cpysize;
  len = len - (unsigned long )cpysize;
  }
  if ((unsigned long )pos >= buf->vb.size) {
    {
    pos = 0U;
    buffer_filled(dev, dma_q, buf);
    }
    if ((tm6000_debug & 32) != 0) {
      {
      printk("\016(%lu) %s %s :new buffer filled\n", jiffies, (char *)(& dev->name),
             "copy_multiplexed");
      }
    } else {
    }
    {
    get_next_buf(dma_q, & buf);
    }
    if ((unsigned long )buf == (unsigned long )((struct tm6000_buffer *)0)) {
      goto ldv_35530;
    } else {
    }
    {
    tmp___0 = videobuf_to_vmalloc(& buf->vb);
    outp = (char *)tmp___0;
    }
    if ((unsigned long )outp == (unsigned long )((char *)0)) {
      return (rc);
    } else {
    }
    pos = 0U;
  } else {
  }
  ldv_35532: ;
  if (len != 0UL) {
    goto ldv_35531;
  } else {
  }
  ldv_35530:
  dev->isoc_ctl.pos = (int )pos;
  return (rc);
}
}
__inline static void print_err_status(struct tm6000_core *dev , int packet , int status )
{
  char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  {
  if (status == -2) {
    goto case_neg_2;
  } else {
  }
  if (status == -104) {
    goto case_neg_104;
  } else {
  }
  if (status == -63) {
    goto case_neg_63;
  } else {
  }
  if (status == -32) {
    goto case_neg_32;
  } else {
  }
  if (status == -75) {
    goto case_neg_75;
  } else {
  }
  if (status == -71) {
    goto case_neg_71;
  } else {
  }
  if (status == -84) {
    goto case_neg_84;
  } else {
  }
  if (status == -62) {
    goto case_neg_62;
  } else {
  }
  goto switch_break;
  case_neg_2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_35540;
  case_neg_104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_35540;
  case_neg_63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_35540;
  case_neg_32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_35540;
  case_neg_75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_35540;
  case_neg_71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_35540;
  case_neg_84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_35540;
  case_neg_62:
  errmsg = (char *)"Device does not respond";
  goto ldv_35540;
  switch_break: ;
  }
  ldv_35540: ;
  if (packet < 0) {
    if ((tm6000_debug & 16) != 0) {
      {
      printk("\016(%lu) %s %s :URB status %d [%s].\n", jiffies, (char *)(& dev->name),
             "print_err_status", status, errmsg);
      }
    } else {
    }
  } else
  if ((tm6000_debug & 16) != 0) {
    {
    printk("\016(%lu) %s %s :URB packet %d, status %d [%s].\n", jiffies, (char *)(& dev->name),
           "print_err_status", packet, status, errmsg);
    }
  } else {
  }
  return;
}
}
__inline static int tm6000_isoc_copy(struct urb *urb )
{
  struct tm6000_dmaqueue *dma_q ;
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue const *__mptr ;
  int i ;
  int len ;
  int rc ;
  int status ;
  char *p ;
  {
  dma_q = (struct tm6000_dmaqueue *)urb->context;
  __mptr = (struct tm6000_dmaqueue const *)dma_q;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff0e0UL;
  len = 0;
  rc = 1;
  if (urb->status < 0) {
    {
    print_err_status(dev, -1, urb->status);
    }
    return (0);
  } else {
  }
  i = 0;
  goto ldv_35563;
  ldv_35562:
  status = urb->iso_frame_desc[i].status;
  if (status < 0) {
    {
    print_err_status(dev, i, status);
    }
    goto ldv_35561;
  } else {
  }
  len = (int )urb->iso_frame_desc[i].actual_length;
  if (len > 0) {
    p = (char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
    if (urb->iso_frame_desc[i].status == 0) {
      if (dev->fourcc == 808865108U) {
        {
        rc = copy_multiplexed((u8 *)p, (unsigned long )len, urb);
        }
        if (rc <= 0) {
          return (rc);
        } else {
        }
      } else {
        {
        copy_streams((u8 *)p, (unsigned long )len, urb);
        }
      }
    } else {
    }
  } else {
  }
  ldv_35561:
  i = i + 1;
  ldv_35563: ;
  if (i < urb->number_of_packets) {
    goto ldv_35562;
  } else {
  }
  return (rc);
}
}
static void tm6000_irq_callback(struct urb *urb )
{
  struct tm6000_dmaqueue *dma_q ;
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue const *__mptr ;
  int i ;
  {
  dma_q = (struct tm6000_dmaqueue *)urb->context;
  __mptr = (struct tm6000_dmaqueue const *)dma_q;
  dev = (struct tm6000_core *)__mptr + 0xfffffffffffff0e0UL;
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
  goto ldv_35575;
  case_neg_104: ;
  case_neg_2: ;
  case_neg_108: ;
  return;
  switch_default:
  {
  printk("\vtm6000 %s :urb completion error %d.\n", "tm6000_irq_callback", urb->status);
  }
  goto ldv_35575;
  switch_break: ;
  }
  ldv_35575:
  {
  ldv_spin_lock_52(& dev->slock);
  tm6000_isoc_copy(urb);
  ldv_spin_unlock_53(& dev->slock);
  i = 0;
  }
  goto ldv_35582;
  ldv_35581:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_35582: ;
  if (i < urb->number_of_packets) {
    goto ldv_35581;
  } else {
  }
  {
  urb->status = usb_submit_urb(urb, 32U);
  }
  if (urb->status != 0) {
    {
    printk("\vtm6000 %s :urb resubmit failed (error=%i)\n", "tm6000_irq_callback",
           urb->status);
    }
  } else {
  }
  return;
}
}
static int tm6000_alloc_urb_buffers(struct tm6000_core *dev )
{
  int num_bufs ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  num_bufs = 8;
  if ((unsigned long )dev->urb_buffer != (unsigned long )((char **)0)) {
    return (0);
  } else {
  }
  {
  tmp = kmalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->urb_buffer = (char **)tmp;
  }
  if ((unsigned long )dev->urb_buffer == (unsigned long )((char **)0)) {
    {
    printk("\vtm6000 %s :cannot allocate memory for urb buffers\n", "tm6000_alloc_urb_buffers");
    }
    return (-12);
  } else {
  }
  {
  tmp___0 = kmalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->urb_dma = (dma_addr_t *)tmp___0;
  }
  if ((unsigned long )dev->urb_dma == (unsigned long )((dma_addr_t *)0ULL)) {
    {
    printk("\vtm6000 %s :cannot allocate memory for urb dma pointers\n", "tm6000_alloc_urb_buffers");
    }
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35591;
  ldv_35590:
  {
  tmp___1 = usb_alloc_coherent(dev->udev, (size_t )dev->urb_size, 208U, dev->urb_dma + (unsigned long )i);
  *(dev->urb_buffer + (unsigned long )i) = (char *)tmp___1;
  }
  if ((unsigned long )*(dev->urb_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    {
    printk("\vtm6000 %s :unable to allocate %i bytes for transfer buffer %i\n", "tm6000_alloc_urb_buffers",
           dev->urb_size, i);
    }
    return (-12);
  } else {
  }
  {
  memset((void *)*(dev->urb_buffer + (unsigned long )i), 0, (size_t )dev->urb_size);
  i = i + 1;
  }
  ldv_35591: ;
  if (i < num_bufs) {
    goto ldv_35590;
  } else {
  }
  return (0);
}
}
static int tm6000_free_urb_buffers(struct tm6000_core *dev )
{
  int i ;
  {
  if ((unsigned long )dev->urb_buffer == (unsigned long )((char **)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_35598;
  ldv_35597: ;
  if ((unsigned long )*(dev->urb_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
    {
    usb_free_coherent(dev->udev, (size_t )dev->urb_size, (void *)*(dev->urb_buffer + (unsigned long )i),
                      *(dev->urb_dma + (unsigned long )i));
    *(dev->urb_buffer + (unsigned long )i) = (char *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_35598: ;
  if (i <= 7) {
    goto ldv_35597;
  } else {
  }
  {
  kfree((void const *)dev->urb_buffer);
  kfree((void const *)dev->urb_dma);
  dev->urb_buffer = (char **)0;
  dev->urb_dma = (dma_addr_t *)0ULL;
  }
  return (0);
}
}
static void tm6000_uninit_isoc(struct tm6000_core *dev )
{
  struct urb *urb ;
  int i ;
  {
  dev->isoc_ctl.buf = (struct tm6000_buffer *)0;
  i = 0;
  goto ldv_35606;
  ldv_35605:
  urb = *(dev->isoc_ctl.urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    usb_kill_urb(urb);
    usb_unlink_urb(urb);
    usb_free_urb(urb);
    *(dev->isoc_ctl.urb + (unsigned long )i) = (struct urb *)0;
    }
  } else {
  }
  *(dev->isoc_ctl.transfer_buffer + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_35606: ;
  if (i < dev->isoc_ctl.num_bufs) {
    goto ldv_35605;
  } else {
  }
  if (! keep_urb) {
    {
    tm6000_free_urb_buffers(dev);
    }
  } else {
  }
  {
  kfree((void const *)dev->isoc_ctl.urb);
  kfree((void const *)dev->isoc_ctl.transfer_buffer);
  dev->isoc_ctl.urb = (struct urb **)0;
  dev->isoc_ctl.transfer_buffer = (char **)0;
  dev->isoc_ctl.num_bufs = 0;
  }
  return;
}
}
static int tm6000_prepare_isoc(struct tm6000_core *dev )
{
  struct tm6000_dmaqueue *dma_q ;
  int i ;
  int j ;
  int sb_size ;
  int pipe ;
  int size ;
  int max_packets ;
  int num_bufs ;
  struct urb *urb ;
  unsigned int tmp ;
  __u16 tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  dma_q = & dev->vidq;
  num_bufs = 8;
  tm6000_uninit_isoc(dev);
  tm6000_ir_int_stop(dev);
  usb_set_interface(dev->udev, (int )dev->isoc_in.bInterfaceNumber, (int )dev->isoc_in.bAlternateSetting);
  tm6000_ir_int_start(dev);
  tmp = __create_pipe(dev->udev, (unsigned int )(dev->isoc_in.endp)->desc.bEndpointAddress & 15U);
  pipe = (int )(tmp | 128U);
  tmp___0 = usb_maxpacket(dev->udev, pipe, (pipe & 128) == 0);
  size = (int )tmp___0;
  }
  if ((unsigned int )size > dev->isoc_in.maxsize) {
    size = (int )dev->isoc_in.maxsize;
  } else {
  }
  {
  dev->isoc_ctl.max_pkt_size = size;
  max_packets = 46;
  sb_size = max_packets * size;
  dev->urb_size = (unsigned int )sb_size;
  dev->isoc_ctl.num_bufs = num_bufs;
  tmp___1 = kmalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->isoc_ctl.urb = (struct urb **)tmp___1;
  }
  if ((unsigned long )dev->isoc_ctl.urb == (unsigned long )((struct urb **)0)) {
    {
    printk("\vtm6000 %s :cannot alloc memory for usb buffers\n", "tm6000_prepare_isoc");
    }
    return (-12);
  } else {
  }
  {
  tmp___2 = kmalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->isoc_ctl.transfer_buffer = (char **)tmp___2;
  }
  if ((unsigned long )dev->isoc_ctl.transfer_buffer == (unsigned long )((char **)0)) {
    {
    printk("\vtm6000 %s :cannot allocate memory for usbtransfer\n", "tm6000_prepare_isoc");
    kfree((void const *)dev->isoc_ctl.urb);
    }
    return (-12);
  } else {
  }
  if ((tm6000_debug & 16) != 0) {
    {
    printk("\016(%lu) %s %s :Allocating %d x %d packets (%d bytes) of %d bytes each to handle %u size\n",
           jiffies, (char *)(& dev->name), "tm6000_prepare_isoc", max_packets, num_bufs,
           sb_size, dev->isoc_in.maxsize, size);
    }
  } else {
  }
  if ((unsigned long )dev->urb_buffer == (unsigned long )((char **)0)) {
    {
    tmp___3 = tm6000_alloc_urb_buffers(dev);
    }
    if (tmp___3 < 0) {
      {
      printk("\vtm6000 %s :cannot allocate memory for urb buffers\n", "tm6000_prepare_isoc");
      tm6000_free_urb_buffers(dev);
      kfree((void const *)dev->isoc_ctl.urb);
      kfree((void const *)dev->isoc_ctl.transfer_buffer);
      }
      return (-12);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_35625;
  ldv_35624:
  {
  urb = usb_alloc_urb(max_packets, 208U);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    {
    printk("\vtm6000 %s :cannot alloc isoc_ctl.urb %i\n", "tm6000_prepare_isoc", i);
    tm6000_uninit_isoc(dev);
    usb_free_urb(urb);
    }
    return (-12);
  } else {
  }
  {
  *(dev->isoc_ctl.urb + (unsigned long )i) = urb;
  urb->transfer_dma = *(dev->urb_dma + (unsigned long )i);
  *(dev->isoc_ctl.transfer_buffer + (unsigned long )i) = *(dev->urb_buffer + (unsigned long )i);
  usb_fill_bulk_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(dev->isoc_ctl.transfer_buffer + (unsigned long )i),
                    sb_size, & tm6000_irq_callback, (void *)dma_q);
  urb->interval = (int )(dev->isoc_in.endp)->desc.bInterval;
  urb->number_of_packets = max_packets;
  urb->transfer_flags = 6U;
  j = 0;
  }
  goto ldv_35622;
  ldv_35621:
  urb->iso_frame_desc[j].offset = (unsigned int )(size * j);
  urb->iso_frame_desc[j].length = (unsigned int )size;
  j = j + 1;
  ldv_35622: ;
  if (j < max_packets) {
    goto ldv_35621;
  } else {
  }
  i = i + 1;
  ldv_35625: ;
  if (i < dev->isoc_ctl.num_bufs) {
    goto ldv_35624;
  } else {
  }
  return (0);
}
}
static int tm6000_start_thread(struct tm6000_core *dev )
{
  struct tm6000_dmaqueue *dma_q ;
  int i ;
  struct lock_class_key __key ;
  int rc ;
  int tmp ;
  {
  {
  dma_q = & dev->vidq;
  dma_q->frame = 0;
  dma_q->ini_jiffies = (int )jiffies;
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  i = 0;
  }
  goto ldv_35636;
  ldv_35635:
  {
  tmp = usb_submit_urb(*(dev->isoc_ctl.urb + (unsigned long )i), 32U);
  rc = tmp;
  }
  if (rc != 0) {
    {
    printk("\vtm6000 %s :submit of urb %i failed (error=%i)\n", "tm6000_start_thread",
           i, rc);
    tm6000_uninit_isoc(dev);
    }
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_35636: ;
  if (i < dev->isoc_ctl.num_bufs) {
    goto ldv_35635;
  } else {
  }
  return (0);
}
}
static int buffer_setup(struct videobuf_queue *vq , unsigned int *count , unsigned int *size )
{
  struct tm6000_fh *fh ;
  {
  fh = (struct tm6000_fh *)vq->priv_data;
  *size = ((unsigned int )(fh->fmt)->depth * fh->width) * fh->height >> 3;
  if (*count == 0U) {
    *count = 8U;
  } else {
  }
  if (*count <= 3U) {
    *count = 4U;
  } else {
  }
  goto ldv_35645;
  ldv_35644:
  *count = *count - 1U;
  ldv_35645: ;
  if (*size * *count > vid_limit * 1048576U) {
    goto ldv_35644;
  } else {
  }
  return (0);
}
}
static void free_buffer(struct videobuf_queue *vq , struct tm6000_buffer *buf )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  unsigned long flags ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)vq->priv_data;
  dev = fh->dev;
  tmp = preempt_count();
  }
  if (((unsigned long )tmp & 2096896UL) != 0UL) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/tm6000/tm6000-video.c"),
                         "i" (718), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_54(& dev->slock);
  }
  if ((unsigned long )dev->isoc_ctl.buf == (unsigned long )buf) {
    dev->isoc_ctl.buf = (struct tm6000_buffer *)0;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_55(& dev->slock, flags);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  }
  return;
}
}
static int buffer_prepare(struct videobuf_queue *vq , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct tm6000_fh *fh ;
  struct tm6000_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct tm6000_core *dev ;
  int rc ;
  long tmp ;
  {
  {
  fh = (struct tm6000_fh *)vq->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct tm6000_buffer *)__mptr;
  dev = fh->dev;
  rc = 0;
  tmp = ldv__builtin_expect((unsigned long )fh->fmt == (unsigned long )((struct tm6000_fmt *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/usb/tm6000/tm6000-video.c"),
                         "i" (747), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  buf->vb.size = (unsigned long )(((unsigned int )(fh->fmt)->depth * fh->width) * fh->height >> 3);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  if (((unsigned long )buf->fmt != (unsigned long )fh->fmt || *((unsigned long *)buf + 1UL) != *((unsigned long *)fh + 25UL)) || (unsigned int )buf->vb.field != (unsigned int )field) {
    buf->fmt = fh->fmt;
    buf->vb.width = fh->width;
    buf->vb.height = fh->height;
    buf->vb.field = field;
    buf->vb.state = 0;
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    rc = videobuf_iolock(vq, & buf->vb, (struct v4l2_framebuffer *)0);
    }
    if (rc != 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if (dev->isoc_ctl.num_bufs == 0) {
    {
    rc = tm6000_prepare_isoc(dev);
    }
    if (rc < 0) {
      goto fail;
    } else {
    }
    {
    rc = tm6000_start_thread(dev);
    }
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  {
  free_buffer(vq, buf);
  }
  return (rc);
}
}
static void buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct tm6000_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct tm6000_dmaqueue *vidq ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct tm6000_buffer *)__mptr;
  fh = (struct tm6000_fh *)vq->priv_data;
  dev = fh->dev;
  vidq = & dev->vidq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vidq->active);
  }
  return;
}
}
static void buffer_release(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct tm6000_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct tm6000_buffer *)__mptr;
  free_buffer(vq, buf);
  }
  return;
}
}
static struct videobuf_queue_ops tm6000_video_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
static bool is_res_read(struct tm6000_core *dev , struct tm6000_fh *fh )
{
  {
  if ((unsigned long )dev->resources == (unsigned long )fh && (int )dev->is_res_read) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool is_res_streaming(struct tm6000_core *dev , struct tm6000_fh *fh )
{
  {
  if ((unsigned long )dev->resources == (unsigned long )fh) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool res_get(struct tm6000_core *dev , struct tm6000_fh *fh , bool is_res_read___0 )
{
  {
  if ((unsigned long )dev->resources == (unsigned long )fh && (int )dev->is_res_read == (int )is_res_read___0) {
    return (1);
  } else {
  }
  if ((unsigned long )dev->resources != (unsigned long )((struct tm6000_fh *)0)) {
    return (0);
  } else {
  }
  dev->resources = fh;
  dev->is_res_read = is_res_read___0;
  if ((tm6000_debug & 64) != 0) {
    {
    printk("\016(%lu) %s %s :res: get\n", jiffies, (char *)(& dev->name), "res_get");
    }
  } else {
  }
  return (1);
}
}
static void res_free(struct tm6000_core *dev , struct tm6000_fh *fh )
{
  {
  if ((unsigned long )dev->resources != (unsigned long )fh) {
    return;
  } else {
  }
  dev->resources = (struct tm6000_fh *)0;
  if ((tm6000_debug & 64) != 0) {
    {
    printk("\016(%lu) %s %s :res: put\n", jiffies, (char *)(& dev->name), "res_free");
    }
  } else {
  }
  return;
}
}
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct tm6000_core *dev ;
  struct video_device *vdev ;
  struct video_device *tmp ;
  {
  {
  dev = ((struct tm6000_fh *)priv)->dev;
  tmp = video_devdata(file);
  vdev = tmp;
  strlcpy((char *)(& cap->driver), "tm6000", 16UL);
  strlcpy((char *)(& cap->card), "Trident TVMaster TM5600/6000/6010", 32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  }
  if (dev->tuner_type != 4) {
    cap->device_caps = cap->device_caps | 65536U;
  } else {
  }
  if (vdev->vfl_type == 0) {
    cap->device_caps = cap->device_caps | 83886081U;
  } else {
    cap->device_caps = cap->device_caps | 262144U;
  }
  cap->capabilities = cap->device_caps | 2164523009U;
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  {
  if (f->index > 2U) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), (char const *)format[f->index].name, 32UL);
  f->pixelformat = format[f->index].fourcc;
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct tm6000_fh *fh ;
  {
  fh = (struct tm6000_fh *)priv;
  f->fmt.pix.width = fh->width;
  f->fmt.pix.height = fh->height;
  f->fmt.pix.field = (__u32 )fh->vb_vidq.field;
  f->fmt.pix.pixelformat = (fh->fmt)->fourcc;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )(fh->fmt)->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.priv = 0U;
  return (0);
}
}
static struct tm6000_fmt *format_by_fourcc(unsigned int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_35730;
  ldv_35729: ;
  if (format[i].fourcc == fourcc) {
    return ((struct tm6000_fmt *)(& format) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_35730: ;
  if (i <= 2U) {
    goto ldv_35729;
  } else {
  }
  return ((struct tm6000_fmt *)0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct tm6000_core *dev ;
  struct tm6000_fmt *fmt ;
  enum v4l2_field field ;
  {
  {
  dev = ((struct tm6000_fh *)priv)->dev;
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct tm6000_fmt *)0)) {
    if ((tm6000_debug & 2) != 0) {
      {
      printk("\016(%lu) %s %s :Fourcc format (0x%08x) invalid.\n", jiffies, (char *)(& dev->name),
             "vidioc_try_fmt_vid_cap", f->fmt.pix.pixelformat);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  field = (enum v4l2_field )f->fmt.pix.field;
  field = 4;
  tm6000_get_std_res(dev);
  f->fmt.pix.width = (__u32 )dev->width;
  f->fmt.pix.height = (__u32 )dev->height;
  f->fmt.pix.width = f->fmt.pix.width & 4294967294U;
  f->fmt.pix.field = (__u32 )field;
  f->fmt.pix.priv = 0U;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )fmt->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  int ret ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  tmp = vidioc_try_fmt_vid_cap(file, (void *)fh, f);
  ret = tmp;
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  fh->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  fh->width = f->fmt.pix.width;
  fh->height = f->fmt.pix.height;
  fh->vb_vidq.field = (enum v4l2_field )f->fmt.pix.field;
  fh->type = (enum v4l2_buf_type )f->type;
  dev->fourcc = f->fmt.pix.pixelformat;
  tm6000_set_fourcc_format(dev);
  }
  return (0);
}
}
static int vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *p )
{
  struct tm6000_fh *fh ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)priv;
  tmp = videobuf_reqbufs(& fh->vb_vidq, p);
  }
  return (tmp);
}
}
static int vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct tm6000_fh *fh ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)priv;
  tmp = videobuf_querybuf(& fh->vb_vidq, p);
  }
  return (tmp);
}
}
static int vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct tm6000_fh *fh ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)priv;
  tmp = videobuf_qbuf(& fh->vb_vidq, p);
  }
  return (tmp);
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct tm6000_fh *fh ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)priv;
  tmp = videobuf_dqbuf(& fh->vb_vidq, p, (int )file->f_flags & 2048);
  }
  return (tmp);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )fh->type != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )i != (unsigned int )fh->type) {
    return (-22);
  } else {
  }
  {
  tmp = res_get(dev, fh, 0);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-16);
  } else {
  }
  {
  tmp___1 = videobuf_streamon(& fh->vb_vidq);
  }
  return (tmp___1);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )fh->type != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )i != (unsigned int )fh->type) {
    return (-22);
  } else {
  }
  {
  videobuf_streamoff(& fh->vb_vidq);
  res_free(dev, fh);
  }
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id norm )
{
  int rc ;
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  rc = 0;
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  dev->norm = norm;
  rc = tm6000_init_analog_mode(dev);
  fh->width = (unsigned int )dev->width;
  fh->height = (unsigned int )dev->height;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35801;
  ldv_35800: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35801: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35800;
  } else {
  }
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *norm )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  *norm = dev->norm;
  return (0);
}
}
static char const *iname[5U] = { 0, "Television", "Composite 1", "Composite 2",
        "S-Video"};
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  unsigned int n ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  n = i->index;
  if (n > 2U) {
    return (-22);
  } else {
  }
  if ((unsigned int )dev->vinput[n].type == 0U) {
    return (-22);
  } else {
  }
  i->index = n;
  if ((unsigned int )dev->vinput[n].type == 1U) {
    i->type = 1U;
  } else {
    i->type = 2U;
  }
  {
  strcpy((char *)(& i->name), iname[(unsigned int )dev->vinput[n].type]);
  i->std = 16728063ULL;
  }
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  *i = (unsigned int )dev->input;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  int rc ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  rc = 0;
  if (i > 2U) {
    return (-22);
  } else {
  }
  if ((unsigned int )dev->vinput[i].type == 0U) {
    return (-22);
  } else {
  }
  {
  dev->input = (int )i;
  rc = vidioc_s_std(file, priv, dev->norm);
  }
  return (rc);
}
}
static int tm6000_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct tm6000_core *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  u8 val ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct tm6000_core *)__mptr + 0xffffffffffffeef0UL;
  val = (u8 )ctrl->__annonCompField83.val;
  {
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctrl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  goto switch_break;
  case_9963777:
  {
  tm6000_set_reg(dev, 7, 8, (int )val);
  }
  return (0);
  case_9963776:
  {
  tm6000_set_reg(dev, 7, 9, (int )val);
  }
  return (0);
  case_9963778:
  {
  tm6000_set_reg(dev, 7, 10, (int )val);
  }
  return (0);
  case_9963779:
  {
  tm6000_set_reg(dev, 7, 11, (int )val);
  }
  return (0);
  switch_break: ;
  }
  return (-22);
}
}
static struct v4l2_ctrl_ops const tm6000_ctrl_ops = {0, 0, & tm6000_s_ctrl};
static int tm6000_radio_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct tm6000_core *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  u8 val ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct tm6000_core *)__mptr + 0xffffffffffffedf8UL;
  val = (u8 )ctrl->__annonCompField83.val;
  {
  if (ctrl->id == 9963785U) {
    goto case_9963785;
  } else {
  }
  if (ctrl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  goto switch_break;
  case_9963785:
  {
  dev->ctl_mute = (int )val;
  tm6000_tvaudio_set_mute(dev, (int )val);
  }
  return (0);
  case_9963781:
  {
  dev->ctl_volume = (int )val;
  tm6000_set_volume(dev, (int )val);
  }
  return (0);
  switch_break: ;
  }
  return (-22);
}
}
static struct v4l2_ctrl_ops const tm6000_radio_ctrl_ops = {0, 0, & tm6000_radio_s_ctrl};
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if (dev->tuner_type == -1) {
    return (-25);
  } else {
  }
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& t->name), "Television");
  t->type = 2U;
  t->capability = 18U;
  t->rangehigh = 4294967295U;
  t->rxsubchans = 2U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  }
  goto ldv_35869;
  ldv_35868: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35869: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35868;
  } else {
  }
  t->audmode = (__u32 )dev->amode;
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if (dev->tuner_type == -1) {
    return (-25);
  } else {
  }
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )t->audmode > 1U) {
    dev->amode = 1;
  } else {
    dev->amode = (int )t->audmode;
  }
  if ((tm6000_debug & 3) != 0) {
    {
    printk("\016(%lu) %s %s :audio mode: %x\n", jiffies, (char *)(& dev->name), "vidioc_s_tuner",
           t->audmode);
    }
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35885;
  ldv_35884: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35885: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35884;
  } else {
  }
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if (dev->tuner_type == -1) {
    return (-25);
  } else {
  }
  if (f->tuner != 0U) {
    return (-22);
  } else {
  }
  f->frequency = (__u32 )dev->freq;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35900;
  ldv_35899: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency * ))0)) {
    {
    (*(((__sd->ops)->tuner)->g_frequency))(__sd, f);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35900: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35899;
  } else {
  }
  return (0);
}
}
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)priv;
  dev = fh->dev;
  if (dev->tuner_type == -1) {
    return (-25);
  } else {
  }
  if ((unsigned int )f->tuner != 0U) {
    return (-22);
  } else {
  }
  dev->freq = (int )f->frequency;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35915;
  ldv_35914: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, f);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35915: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35914;
  } else {
  }
  return (0);
}
}
static int radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  {
  memset((void *)t, 0, 84UL);
  strcpy((char *)(& t->name), "Radio");
  t->type = 1U;
  t->capability = 17U;
  t->rxsubchans = 2U;
  t->audmode = 1U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  }
  goto ldv_35930;
  ldv_35929: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35930: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35929;
  } else {
  }
  return (0);
}
}
static int radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35945;
  ldv_35944: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35945: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35944;
  } else {
  }
  return (0);
}
}
static int __tm6000_open(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct tm6000_core *dev ;
  void *tmp___0 ;
  struct tm6000_fh *fh ;
  enum v4l2_buf_type type ;
  int rc ;
  int radio ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  tmp___0 = video_drvdata(file);
  dev = (struct tm6000_core *)tmp___0;
  type = 1;
  radio = 0;
  }
  if ((tm6000_debug & 128) != 0) {
    {
    tmp___1 = video_device_node_name(vdev);
    printk("\016(%lu) %s %s :tm6000: open called (dev=%s)\n", jiffies, (char *)(& dev->name),
           "__tm6000_open", tmp___1);
    }
  } else {
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  if (vdev->vfl_type == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  type = 1;
  goto ldv_35958;
  case_1:
  type = 4;
  goto ldv_35958;
  case_2:
  radio = 1;
  goto ldv_35958;
  switch_break: ;
  }
  ldv_35958:
  dev->users = dev->users + 1;
  if ((tm6000_debug & 128) != 0) {
    {
    tmp___2 = video_device_node_name(vdev);
    printk("\016(%lu) %s %s :open dev=%s type=%s users=%d\n", jiffies, (char *)(& dev->name),
           "__tm6000_open", tmp___2, v4l2_type_names[(unsigned int )type], dev->users);
    }
  } else {
  }
  {
  tmp___3 = kzalloc(832UL, 208U);
  fh = (struct tm6000_fh *)tmp___3;
  }
  if ((unsigned long )fh == (unsigned long )((struct tm6000_fh *)0)) {
    dev->users = dev->users - 1;
    return (-12);
  } else {
  }
  {
  v4l2_fh_init(& fh->fh, vdev);
  file->private_data = (void *)fh;
  fh->dev = dev;
  fh->radio = (unsigned int )radio;
  dev->radio = (__u8 )radio;
  fh->type = type;
  dev->fourcc = format[0].fourcc;
  fh->fmt = format_by_fourcc(dev->fourcc);
  tm6000_get_std_res(dev);
  fh->width = (unsigned int )dev->width;
  fh->height = (unsigned int )dev->height;
  }
  if ((tm6000_debug & 128) != 0) {
    {
    printk("\016(%lu) %s %s :Open: fh=0x%08lx, dev=0x%08lx, dev->vidq=0x%08lx\n",
           jiffies, (char *)(& dev->name), "__tm6000_open", (unsigned long )fh, (unsigned long )dev,
           (unsigned long )(& dev->vidq));
    }
  } else {
  }
  if ((tm6000_debug & 128) != 0) {
    {
    tmp___4 = list_empty((struct list_head const *)(& dev->vidq.queued));
    printk("\016(%lu) %s %s :Open: list_empty queued=%d\n", jiffies, (char *)(& dev->name),
           "__tm6000_open", tmp___4);
    }
  } else {
  }
  if ((tm6000_debug & 128) != 0) {
    {
    tmp___5 = list_empty((struct list_head const *)(& dev->vidq.active));
    printk("\016(%lu) %s %s :Open: list_empty active=%d\n", jiffies, (char *)(& dev->name),
           "__tm6000_open", tmp___5);
    }
  } else {
  }
  {
  rc = tm6000_init_analog_mode(dev);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  dev->mode = 1;
  if (fh->radio == 0U) {
    {
    videobuf_queue_vmalloc_init(& fh->vb_vidq, (struct videobuf_queue_ops const *)(& tm6000_video_qops),
                                (struct device *)0, & dev->slock, fh->type, 4, 248U,
                                (void *)fh, & dev->lock);
    }
  } else {
    if ((tm6000_debug & 128) != 0) {
      {
      printk("\016(%lu) %s %s :video_open: setting radio device\n", jiffies, (char *)(& dev->name),
             "__tm6000_open");
      }
    } else {
    }
    {
    tm6000_set_audio_rinput(dev);
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    }
    goto ldv_35967;
    ldv_35966: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      {
      (*(((__sd->ops)->tuner)->s_radio))(__sd);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_35967: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35966;
    } else {
    }
    {
    tm6000_prepare_isoc(dev);
    tm6000_start_thread(dev);
    }
  }
  {
  v4l2_fh_add(& fh->fh);
  }
  return (0);
}
}
static int tm6000_open(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  int res ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  mutex_lock_nested(vdev->lock, 0U);
  res = __tm6000_open(file);
  mutex_unlock(vdev->lock);
  }
  return (res);
}
}
static ssize_t tm6000_read(struct file *file , char *data , size_t count , loff_t *pos )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  int res ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  if ((unsigned int )fh->type == 1U) {
    {
    tmp = res_get(fh->dev, fh, 1);
    }
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (-16L);
    } else {
    }
    {
    tmp___1 = mutex_lock_interruptible_nested(& dev->lock, 0U);
    }
    if (tmp___1 != 0) {
      return (-512L);
    } else {
    }
    {
    tmp___2 = videobuf_read_stream(& fh->vb_vidq, data, count, pos, 0, (int )file->f_flags & 2048);
    res = (int )tmp___2;
    mutex_unlock(& dev->lock);
    }
    return ((ssize_t )res);
  } else {
  }
  return (0L);
}
}
static unsigned int __tm6000_poll(struct file *file , struct poll_table_struct *wait )
{
  unsigned long req_events ;
  unsigned long tmp ;
  struct tm6000_fh *fh ;
  struct tm6000_buffer *buf ;
  int res ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  unsigned int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = poll_requested_events((poll_table const *)wait);
  req_events = tmp;
  fh = (struct tm6000_fh *)file->private_data;
  res = 0;
  tmp___0 = v4l2_event_pending(& fh->fh);
  }
  if (tmp___0 != 0) {
    res = 2;
  } else
  if ((req_events & 2UL) != 0UL) {
    {
    poll_wait(file, & fh->fh.wait, wait);
    }
  } else {
  }
  if ((unsigned int )fh->type != 1U) {
    return ((unsigned int )(res | 8));
  } else {
  }
  {
  tmp___1 = is_res_streaming(fh->dev, fh);
  }
  if ((int )tmp___1) {
    return ((unsigned int )(res | 8));
  } else {
  }
  {
  tmp___4 = is_res_read(fh->dev, fh);
  }
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    {
    tmp___2 = list_empty((struct list_head const *)(& fh->vb_vidq.stream));
    }
    if (tmp___2 != 0) {
      return ((unsigned int )(res | 8));
    } else {
    }
    {
    __mptr = (struct list_head const *)fh->vb_vidq.stream.next;
    buf = (struct tm6000_buffer *)__mptr + 0xffffffffffffffd8UL;
    poll_wait(file, & buf->vb.done, wait);
    }
    if ((unsigned int )buf->vb.state - 4U <= 1U) {
      return ((unsigned int )(res | 65));
    } else {
    }
  } else
  if ((req_events & 65UL) != 0UL) {
    {
    tmp___3 = videobuf_poll_stream(file, & fh->vb_vidq, wait);
    }
    return ((unsigned int )res | tmp___3);
  } else {
  }
  return ((unsigned int )res);
}
}
static unsigned int tm6000_poll(struct file *file , struct poll_table_struct *wait )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  unsigned int res ;
  {
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  mutex_lock_nested(& dev->lock, 0U);
  res = __tm6000_poll(file, wait);
  mutex_unlock(& dev->lock);
  }
  return (res);
}
}
static int tm6000_release(struct file *file )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  struct video_device *vdev ;
  struct video_device *tmp ;
  char const *tmp___0 ;
  {
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  tmp = video_devdata(file);
  vdev = tmp;
  }
  if ((tm6000_debug & 128) != 0) {
    {
    tmp___0 = video_device_node_name(vdev);
    printk("\016(%lu) %s %s :tm6000: close called (dev=%s, users=%d)\n", jiffies,
           (char *)(& dev->name), "tm6000_release", tmp___0, dev->users);
    }
  } else {
  }
  {
  mutex_lock_nested(& dev->lock, 0U);
  dev->users = dev->users - 1;
  res_free(dev, fh);
  }
  if (dev->users == 0) {
    {
    tm6000_uninit_isoc(dev);
    tm6000_ir_int_stop(dev);
    usb_reset_configuration(dev->udev);
    }
    if ((unsigned long )dev->int_in.endp != (unsigned long )((struct usb_host_endpoint *)0)) {
      {
      usb_set_interface(dev->udev, (int )dev->isoc_in.bInterfaceNumber, 2);
      }
    } else {
      {
      usb_set_interface(dev->udev, (int )dev->isoc_in.bInterfaceNumber, 0);
      }
    }
    {
    tm6000_ir_int_start(dev);
    }
    if (fh->radio == 0U) {
      {
      videobuf_mmap_free(& fh->vb_vidq);
      }
    } else {
    }
  } else {
  }
  {
  v4l2_fh_del(& fh->fh);
  v4l2_fh_exit(& fh->fh);
  kfree((void const *)fh);
  mutex_unlock(& dev->lock);
  }
  return (0);
}
}
static int tm6000_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct tm6000_fh *fh ;
  struct tm6000_core *dev ;
  int res ;
  int tmp ;
  {
  {
  fh = (struct tm6000_fh *)file->private_data;
  dev = fh->dev;
  tmp = mutex_lock_interruptible_nested(& dev->lock, 0U);
  }
  if (tmp != 0) {
    return (-512);
  } else {
  }
  {
  res = videobuf_mmap_mapper(& fh->vb_vidq, vma);
  mutex_unlock(& dev->lock);
  }
  return (res);
}
}
static struct v4l2_file_operations tm6000_fops =
     {& __this_module, & tm6000_read, 0, & tm6000_poll, 0, & video_ioctl2, 0, 0, & tm6000_mmap,
    & tm6000_open, & tm6000_release};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf,
    & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff,
    & vidioc_g_std, & vidioc_s_std, 0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & vidioc_g_tuner, & vidioc_s_tuner, & vidioc_g_frequency, & vidioc_s_frequency,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
static struct video_device tm6000_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, (struct v4l2_file_operations const *)(& tm6000_fops),
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
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
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, 0U, 0U,
            0U, 0U, 0U}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                {0, 0}, 0, 0, 0, {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0,
     {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
      {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, 0U, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0,
     0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
     {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0,
    {'t', 'm', '6', '0', '0', '0', '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
    {0, 0}, 0, 16728063ULL, & video_device_release, & video_ioctl_ops, {0UL, 0UL,
                                                                        0UL}, {0UL,
                                                                               0UL,
                                                                               0UL},
    0};
static struct v4l2_file_operations const radio_fops =
     {& __this_module, 0, 0, & v4l2_ctrl_poll, 0, & video_ioctl2, 0, 0, 0, & tm6000_open,
    & tm6000_release};
static struct v4l2_ioctl_ops const radio_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & radio_g_tuner, & radio_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, 0};
static struct video_device tm6000_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & radio_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
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
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
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
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
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
                                                                                   {0U,
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
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
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
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
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
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
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
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {'t', 'm', '6', '0', '0', '0', '\000'}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0ULL, 0, & radio_ioctl_ops,
    {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct video_device *vdev_init(struct tm6000_core *dev , struct video_device const *template ,
                                      char const *type_name )
{
  struct video_device *vfd ;
  {
  {
  vfd = video_device_alloc();
  }
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return ((struct video_device *)0);
  } else {
  }
  {
  *vfd = *template;
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->release = & video_device_release;
  vfd->debug = tm6000_debug;
  vfd->lock = & dev->lock;
  set_bit(2L, (unsigned long volatile *)(& vfd->flags));
  snprintf((char *)(& vfd->name), 32UL, "%s %s", (char *)(& dev->name), type_name);
  video_set_drvdata(vfd, (void *)dev);
  }
  return (vfd);
}
}
int tm6000_v4l2_register(struct tm6000_core *dev )
{
  int ret ;
  struct lock_class_key _key ;
  struct lock_class_key _key___0 ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  {
  ret = 0;
  v4l2_ctrl_handler_init_class(& dev->ctrl_handler, 6U, & _key, "tm6000_video:1641:(&dev->ctrl_handler)->_lock");
  v4l2_ctrl_handler_init_class(& dev->radio_ctrl_handler, 2U, & _key___0, "tm6000_video:1642:(&dev->radio_ctrl_handler)->_lock");
  v4l2_ctrl_new_std(& dev->radio_ctrl_handler, & tm6000_radio_ctrl_ops, 9963785U,
                    0, 1, 1U, 0);
  v4l2_ctrl_new_std(& dev->radio_ctrl_handler, & tm6000_radio_ctrl_ops, 9963781U,
                    -15, 15, 1U, 0);
  v4l2_ctrl_new_std(& dev->ctrl_handler, & tm6000_ctrl_ops, 9963776U, 0, 255, 1U,
                    54);
  v4l2_ctrl_new_std(& dev->ctrl_handler, & tm6000_ctrl_ops, 9963777U, 0, 255, 1U,
                    119);
  v4l2_ctrl_new_std(& dev->ctrl_handler, & tm6000_ctrl_ops, 9963778U, 0, 255, 1U,
                    112);
  v4l2_ctrl_new_std(& dev->ctrl_handler, & tm6000_ctrl_ops, 9963779U, -128, 127, 1U,
                    0);
  v4l2_ctrl_add_handler(& dev->ctrl_handler, & dev->radio_ctrl_handler, (bool (*)(struct v4l2_ctrl const * ))0);
  }
  if (dev->radio_ctrl_handler.error != 0) {
    ret = dev->radio_ctrl_handler.error;
  } else {
  }
  if (ret == 0 && dev->ctrl_handler.error != 0) {
    ret = dev->ctrl_handler.error;
  } else {
  }
  if (ret != 0) {
    goto free_ctrl;
  } else {
  }
  {
  dev->vfd = vdev_init(dev, (struct video_device const *)(& tm6000_template), "video");
  }
  if ((unsigned long )dev->vfd == (unsigned long )((struct video_device *)0)) {
    {
    printk("\016%s: can\'t register video device\n", (char *)(& dev->name));
    ret = -12;
    }
    goto free_ctrl;
  } else {
  }
  {
  (dev->vfd)->ctrl_handler = & dev->ctrl_handler;
  INIT_LIST_HEAD(& dev->vidq.active);
  INIT_LIST_HEAD(& dev->vidq.queued);
  ret = video_register_device(dev->vfd, 0, video_nr);
  }
  if (ret < 0) {
    {
    printk("\016%s: can\'t register video device\n", (char *)(& dev->name));
    video_device_release(dev->vfd);
    dev->vfd = (struct video_device *)0;
    }
    goto free_ctrl;
  } else {
  }
  {
  tmp = video_device_node_name(dev->vfd);
  printk("\016%s: registered device %s\n", (char *)(& dev->name), tmp);
  }
  if ((unsigned int )*((unsigned char *)dev + 324UL) != 0U) {
    {
    dev->radio_dev = vdev_init(dev, (struct video_device const *)(& tm6000_radio_template),
                               "radio");
    }
    if ((unsigned long )dev->radio_dev == (unsigned long )((struct video_device *)0)) {
      {
      printk("\016%s: can\'t register radio device\n", (char *)(& dev->name));
      ret = -6;
      }
      goto unreg_video;
    } else {
    }
    {
    (dev->radio_dev)->ctrl_handler = & dev->radio_ctrl_handler;
    ret = video_register_device(dev->radio_dev, 2, radio_nr);
    }
    if (ret < 0) {
      {
      printk("\016%s: can\'t register radio device\n", (char *)(& dev->name));
      video_device_release(dev->radio_dev);
      }
      goto unreg_video;
    } else {
    }
    {
    tmp___0 = video_device_node_name(dev->radio_dev);
    printk("\016%s: registered device %s\n", (char *)(& dev->name), tmp___0);
    }
  } else {
  }
  {
  printk("\016Trident TVMaster TM5600/TM6000/TM6010 USB2 board (Load status: %d)\n",
         ret);
  }
  return (ret);
  unreg_video:
  {
  video_unregister_device(dev->vfd);
  }
  free_ctrl:
  {
  v4l2_ctrl_handler_free(& dev->ctrl_handler);
  v4l2_ctrl_handler_free(& dev->radio_ctrl_handler);
  }
  return (ret);
}
}
int tm6000_v4l2_unregister(struct tm6000_core *dev )
{
  int tmp ;
  {
  {
  video_unregister_device(dev->vfd);
  tm6000_free_urb_buffers(dev);
  }
  if ((unsigned long )dev->radio_dev != (unsigned long )((struct video_device *)0)) {
    {
    tmp = video_is_registered(dev->radio_dev);
    }
    if (tmp != 0) {
      {
      video_unregister_device(dev->radio_dev);
      }
    } else {
      {
      video_device_release(dev->radio_dev);
      }
    }
    dev->radio_dev = (struct video_device *)0;
  } else {
  }
  return (0);
}
}
int tm6000_v4l2_exit(void)
{
  {
  return (0);
}
}
void ldv_io_instance_callback_8_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_8_22(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_8_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_8_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_8_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_8_36(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_8_37(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_8_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_8_40(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_8_41(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_8_43(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_8_46(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_8_50(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_51(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_52(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_53(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_54(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_9_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_9_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_9_19(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_9_22(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_9_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_9_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_9_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_9_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_9_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_9_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_9_33(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_9_36(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_9_37(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_9_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_9_39(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_9_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_9_40(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_9_41(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_9_42(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_9_43(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_9_46(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_9_49(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_9_50(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_9_51(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_9_52(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_9_53(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_9_54(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_9_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_9_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  tm6000_radio_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  tm6000_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 )
{
  {
  {
  buffer_prepare(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 )
{
  {
  {
  buffer_setup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  v4l2_ctrl_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_22(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_36(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_37(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_8_40(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_41(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_43(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_46(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_50(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_51(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_52(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_53(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_54(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  tm6000_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  tm6000_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_19(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  tm6000_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_9_22(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_33(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_36(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_37(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_39(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_9_40(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_41(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_42(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_43(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_46(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_49(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_50(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_51(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_52(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_53(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_54(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = tm6000_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_9_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = tm6000_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  tm6000_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_9_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  tm6000_release(arg1);
  }
  return;
}
}
void ldv_v4l2_file_operations_io_instance_8(void *arg0 )
{
  void (*ldv_8_callback_func_1_ptr)(struct video_device * ) ;
  int (*ldv_8_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_8_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_8_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_8_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_8_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_8_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
  int (*ldv_8_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
  int (*ldv_8_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_8_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
  int (*ldv_8_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
  int (*ldv_8_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
  int (*ldv_8_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
  int (*ldv_8_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_8_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_8_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
  int (*ldv_8_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
  int (*ldv_8_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_8_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
  int (*ldv_8_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
  int (*ldv_8_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
  int (*ldv_8_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
  int (*ldv_8_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_8_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_8_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  int (*ldv_8_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_8_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  struct v4l2_file_operations *ldv_8_container_v4l2_file_operations ;
  char *ldv_8_ldv_param_19_1_default ;
  unsigned long ldv_8_ldv_param_19_2_default ;
  long long *ldv_8_ldv_param_19_3_default ;
  unsigned int ldv_8_ldv_param_22_1_default ;
  unsigned long ldv_8_ldv_param_22_2_default ;
  unsigned int *ldv_8_ldv_param_30_2_default ;
  unsigned long long *ldv_8_ldv_param_33_2_default ;
  unsigned int ldv_8_ldv_param_43_2_default ;
  unsigned long long ldv_8_ldv_param_46_2_default ;
  enum v4l2_buf_type ldv_8_resource_enum_v4l2_buf_type ;
  struct file *ldv_8_resource_file ;
  struct poll_table_struct *ldv_8_resource_struct_poll_table_struct_ptr ;
  struct v4l2_buffer *ldv_8_resource_struct_v4l2_buffer_ptr ;
  struct v4l2_capability *ldv_8_resource_struct_v4l2_capability_ptr ;
  struct v4l2_event_subscription *ldv_8_resource_struct_v4l2_event_subscription_ptr ;
  struct v4l2_fh *ldv_8_resource_struct_v4l2_fh_ptr ;
  struct v4l2_fmtdesc *ldv_8_resource_struct_v4l2_fmtdesc_ptr ;
  struct v4l2_format *ldv_8_resource_struct_v4l2_format_ptr ;
  struct v4l2_frequency *ldv_8_resource_struct_v4l2_frequency_ptr ;
  struct v4l2_input *ldv_8_resource_struct_v4l2_input_ptr ;
  struct v4l2_requestbuffers *ldv_8_resource_struct_v4l2_requestbuffers_ptr ;
  struct v4l2_tuner *ldv_8_resource_struct_v4l2_tuner_ptr ;
  struct video_device *ldv_8_resource_struct_video_device ;
  struct vm_area_struct *ldv_8_resource_struct_vm_area_struct_ptr ;
  int ldv_8_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  {
  {
  ldv_8_ret_default = 1;
  tmp = ldv_xmalloc(520UL);
  ldv_8_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(16UL);
  ldv_8_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___0;
  tmp___1 = ldv_xmalloc(88UL);
  ldv_8_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___1;
  tmp___2 = ldv_xmalloc(104UL);
  ldv_8_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_8_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___3;
  tmp___4 = ldv_xmalloc(176UL);
  ldv_8_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___4;
  tmp___5 = ldv_xmalloc(64UL);
  ldv_8_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___5;
  tmp___6 = ldv_xmalloc(208UL);
  ldv_8_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___6;
  tmp___7 = ldv_xmalloc(44UL);
  ldv_8_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___7;
  tmp___8 = ldv_xmalloc(80UL);
  ldv_8_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___8;
  tmp___9 = ldv_xmalloc(20UL);
  ldv_8_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___9;
  tmp___10 = ldv_xmalloc(84UL);
  ldv_8_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___10;
  tmp___11 = ldv_xmalloc(1808UL);
  ldv_8_resource_struct_video_device = (struct video_device *)tmp___11;
  tmp___12 = ldv_xmalloc(184UL);
  ldv_8_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___12;
  }
  goto ldv_main_8;
  return;
  ldv_main_8:
  {
  tmp___14 = ldv_undef_int();
  }
  if (tmp___14 != 0) {
    {
    ldv_8_ret_default = ldv_io_instance_probe_8_11(ldv_8_container_v4l2_file_operations->open,
                                                   ldv_8_resource_file);
    ldv_8_ret_default = ldv_filter_err_code(ldv_8_ret_default);
    tmp___13 = ldv_undef_int();
    }
    if (tmp___13 != 0) {
      {
      ldv_assume(ldv_8_ret_default == 0);
      }
      goto ldv_call_8;
    } else {
      {
      ldv_assume(ldv_8_ret_default != 0);
      }
      goto ldv_main_8;
    }
  } else {
    {
    ldv_free((void *)ldv_8_resource_file);
    ldv_free((void *)ldv_8_resource_struct_poll_table_struct_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_buffer_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_capability_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_event_subscription_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_fh_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_fmtdesc_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_format_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_frequency_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_input_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_requestbuffers_ptr);
    ldv_free((void *)ldv_8_resource_struct_v4l2_tuner_ptr);
    ldv_free((void *)ldv_8_resource_struct_video_device);
    ldv_free((void *)ldv_8_resource_struct_vm_area_struct_ptr);
    }
    return;
  }
  return;
  ldv_call_8:
  {
  tmp___15 = ldv_undef_int();
  }
  {
  if (tmp___15 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___15 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___15 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___15 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___15 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___15 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___15 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___15 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___15 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___15 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___15 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___15 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___15 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___15 == 14) {
    goto case_14;
  } else {
  }
  if (tmp___15 == 15) {
    goto case_15;
  } else {
  }
  if (tmp___15 == 16) {
    goto case_16;
  } else {
  }
  if (tmp___15 == 17) {
    goto case_17;
  } else {
  }
  if (tmp___15 == 18) {
    goto case_18;
  } else {
  }
  if (tmp___15 == 19) {
    goto case_19;
  } else {
  }
  if (tmp___15 == 20) {
    goto case_20;
  } else {
  }
  if (tmp___15 == 21) {
    goto case_21;
  } else {
  }
  if (tmp___15 == 22) {
    goto case_22;
  } else {
  }
  if (tmp___15 == 23) {
    goto case_23;
  } else {
  }
  if (tmp___15 == 24) {
    goto case_24;
  } else {
  }
  if (tmp___15 == 25) {
    goto case_25;
  } else {
  }
  if (tmp___15 == 26) {
    goto case_26;
  } else {
  }
  if (tmp___15 == 27) {
    goto case_27;
  } else {
  }
  if (tmp___15 == 28) {
    goto case_28;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_8_54(ldv_8_callback_vidioc_unsubscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_8;
  case_2:
  {
  ldv_io_instance_callback_8_53(ldv_8_callback_vidioc_try_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  case_3:
  {
  ldv_io_instance_callback_8_52(ldv_8_callback_vidioc_subscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_4:
  {
  ldv_io_instance_callback_8_51(ldv_8_callback_vidioc_streamon, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_enum_v4l2_buf_type);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_5:
  {
  ldv_io_instance_callback_8_50(ldv_8_callback_vidioc_streamoff, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_enum_v4l2_buf_type);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_6:
  {
  ldv_io_instance_callback_8_49(ldv_8_callback_vidioc_s_tuner, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_tuner_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_7:
  {
  ldv_io_instance_callback_8_46(ldv_8_callback_vidioc_s_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_46_2_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_8:
  {
  ldv_io_instance_callback_8_43(ldv_8_callback_vidioc_s_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_43_2_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_9:
  {
  ldv_io_instance_callback_8_42(ldv_8_callback_vidioc_s_frequency, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_frequency_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_10:
  {
  ldv_io_instance_callback_8_41(ldv_8_callback_vidioc_s_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_11:
  {
  ldv_io_instance_callback_8_40(ldv_8_callback_vidioc_reqbufs, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_requestbuffers_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_12:
  {
  ldv_io_instance_callback_8_39(ldv_8_callback_vidioc_querycap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_capability_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_13:
  {
  ldv_io_instance_callback_8_38(ldv_8_callback_vidioc_querybuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_14:
  {
  ldv_io_instance_callback_8_37(ldv_8_callback_vidioc_qbuf, ldv_8_resource_file, (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_15:
  {
  ldv_io_instance_callback_8_36(ldv_8_callback_vidioc_g_tuner, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_tuner_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_16:
  {
  tmp___16 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_33_2_default = (unsigned long long *)tmp___16;
  ldv_io_instance_callback_8_33(ldv_8_callback_vidioc_g_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_33_2_default);
  ldv_free((void *)ldv_8_ldv_param_33_2_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_17:
  {
  tmp___17 = ldv_xmalloc(4UL);
  ldv_8_ldv_param_30_2_default = (unsigned int *)tmp___17;
  ldv_io_instance_callback_8_30(ldv_8_callback_vidioc_g_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_30_2_default);
  ldv_free((void *)ldv_8_ldv_param_30_2_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_18:
  {
  ldv_io_instance_callback_8_29(ldv_8_callback_vidioc_g_frequency, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_frequency_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_19:
  {
  ldv_io_instance_callback_8_28(ldv_8_callback_vidioc_g_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_20:
  {
  ldv_io_instance_callback_8_27(ldv_8_callback_vidioc_enum_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_input_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_21:
  {
  ldv_io_instance_callback_8_26(ldv_8_callback_vidioc_enum_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_22:
  {
  ldv_io_instance_callback_8_25(ldv_8_callback_vidioc_dqbuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_23:
  {
  ldv_io_instance_callback_8_22(ldv_8_callback_unlocked_ioctl, ldv_8_resource_file,
                                ldv_8_ldv_param_22_1_default, ldv_8_ldv_param_22_2_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_24:
  {
  tmp___18 = ldv_xmalloc(1UL);
  ldv_8_ldv_param_19_1_default = (char *)tmp___18;
  tmp___19 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_19_3_default = (long long *)tmp___19;
  }
  if ((unsigned long )ldv_8_callback_read != (unsigned long )((long (*)(struct file * ,
                                                                        char * , unsigned long ,
                                                                        long long * ))0)) {
    {
    ldv_io_instance_callback_8_19(ldv_8_callback_read, ldv_8_resource_file, ldv_8_ldv_param_19_1_default,
                                  ldv_8_ldv_param_19_2_default, ldv_8_ldv_param_19_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_8_ldv_param_19_1_default);
  ldv_free((void *)ldv_8_ldv_param_19_3_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_25:
  {
  ldv_io_instance_callback_8_18(ldv_8_callback_poll, ldv_8_resource_file, ldv_8_resource_struct_poll_table_struct_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_26: ;
  if ((unsigned long )ldv_8_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_io_instance_callback_8_17(ldv_8_callback_mmap, ldv_8_resource_file, ldv_8_resource_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_27:
  {
  ldv_io_instance_callback_8_4(ldv_8_callback_func_1_ptr, ldv_8_resource_struct_video_device);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_28:
  {
  ldv_io_instance_release_8_2(ldv_8_container_v4l2_file_operations->release, ldv_8_resource_file);
  }
  goto ldv_main_8;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_v4l2_file_operations_io_instance_9(void *arg0 )
{
  void (*ldv_9_callback_func_1_ptr)(struct video_device * ) ;
  int (*ldv_9_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_9_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_9_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_9_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_9_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_9_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
  int (*ldv_9_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
  int (*ldv_9_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_9_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
  int (*ldv_9_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
  int (*ldv_9_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
  int (*ldv_9_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
  int (*ldv_9_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_9_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_9_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
  int (*ldv_9_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
  int (*ldv_9_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_9_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
  int (*ldv_9_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
  int (*ldv_9_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
  int (*ldv_9_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
  int (*ldv_9_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_9_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_9_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  int (*ldv_9_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_9_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  struct v4l2_file_operations *ldv_9_container_v4l2_file_operations ;
  char *ldv_9_ldv_param_19_1_default ;
  unsigned long ldv_9_ldv_param_19_2_default ;
  long long *ldv_9_ldv_param_19_3_default ;
  unsigned int ldv_9_ldv_param_22_1_default ;
  unsigned long ldv_9_ldv_param_22_2_default ;
  unsigned int *ldv_9_ldv_param_30_2_default ;
  unsigned long long *ldv_9_ldv_param_33_2_default ;
  unsigned int ldv_9_ldv_param_43_2_default ;
  unsigned long long ldv_9_ldv_param_46_2_default ;
  enum v4l2_buf_type ldv_9_resource_enum_v4l2_buf_type ;
  struct file *ldv_9_resource_file ;
  struct poll_table_struct *ldv_9_resource_struct_poll_table_struct_ptr ;
  struct v4l2_buffer *ldv_9_resource_struct_v4l2_buffer_ptr ;
  struct v4l2_capability *ldv_9_resource_struct_v4l2_capability_ptr ;
  struct v4l2_event_subscription *ldv_9_resource_struct_v4l2_event_subscription_ptr ;
  struct v4l2_fh *ldv_9_resource_struct_v4l2_fh_ptr ;
  struct v4l2_fmtdesc *ldv_9_resource_struct_v4l2_fmtdesc_ptr ;
  struct v4l2_format *ldv_9_resource_struct_v4l2_format_ptr ;
  struct v4l2_frequency *ldv_9_resource_struct_v4l2_frequency_ptr ;
  struct v4l2_input *ldv_9_resource_struct_v4l2_input_ptr ;
  struct v4l2_requestbuffers *ldv_9_resource_struct_v4l2_requestbuffers_ptr ;
  struct v4l2_tuner *ldv_9_resource_struct_v4l2_tuner_ptr ;
  struct video_device *ldv_9_resource_struct_video_device ;
  struct vm_area_struct *ldv_9_resource_struct_vm_area_struct_ptr ;
  int ldv_9_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  {
  {
  ldv_9_ret_default = 1;
  tmp = ldv_xmalloc(520UL);
  ldv_9_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(16UL);
  ldv_9_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___0;
  tmp___1 = ldv_xmalloc(88UL);
  ldv_9_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___1;
  tmp___2 = ldv_xmalloc(104UL);
  ldv_9_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_9_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___3;
  tmp___4 = ldv_xmalloc(176UL);
  ldv_9_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___4;
  tmp___5 = ldv_xmalloc(64UL);
  ldv_9_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___5;
  tmp___6 = ldv_xmalloc(208UL);
  ldv_9_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___6;
  tmp___7 = ldv_xmalloc(44UL);
  ldv_9_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___7;
  tmp___8 = ldv_xmalloc(80UL);
  ldv_9_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___8;
  tmp___9 = ldv_xmalloc(20UL);
  ldv_9_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___9;
  tmp___10 = ldv_xmalloc(84UL);
  ldv_9_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___10;
  tmp___11 = ldv_xmalloc(1808UL);
  ldv_9_resource_struct_video_device = (struct video_device *)tmp___11;
  tmp___12 = ldv_xmalloc(184UL);
  ldv_9_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___12;
  }
  goto ldv_main_9;
  return;
  ldv_main_9:
  {
  tmp___14 = ldv_undef_int();
  }
  if (tmp___14 != 0) {
    {
    ldv_9_ret_default = ldv_io_instance_probe_9_11(ldv_9_container_v4l2_file_operations->open,
                                                   ldv_9_resource_file);
    ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
    tmp___13 = ldv_undef_int();
    }
    if (tmp___13 != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      }
      goto ldv_call_9;
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
      goto ldv_main_9;
    }
  } else {
    {
    ldv_free((void *)ldv_9_resource_file);
    ldv_free((void *)ldv_9_resource_struct_poll_table_struct_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_buffer_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_capability_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_event_subscription_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_fh_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_fmtdesc_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_format_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_frequency_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_input_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_requestbuffers_ptr);
    ldv_free((void *)ldv_9_resource_struct_v4l2_tuner_ptr);
    ldv_free((void *)ldv_9_resource_struct_video_device);
    ldv_free((void *)ldv_9_resource_struct_vm_area_struct_ptr);
    }
    return;
  }
  return;
  ldv_call_9:
  {
  tmp___15 = ldv_undef_int();
  }
  {
  if (tmp___15 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___15 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___15 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___15 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___15 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___15 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___15 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___15 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___15 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___15 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___15 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___15 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___15 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___15 == 14) {
    goto case_14;
  } else {
  }
  if (tmp___15 == 15) {
    goto case_15;
  } else {
  }
  if (tmp___15 == 16) {
    goto case_16;
  } else {
  }
  if (tmp___15 == 17) {
    goto case_17;
  } else {
  }
  if (tmp___15 == 18) {
    goto case_18;
  } else {
  }
  if (tmp___15 == 19) {
    goto case_19;
  } else {
  }
  if (tmp___15 == 20) {
    goto case_20;
  } else {
  }
  if (tmp___15 == 21) {
    goto case_21;
  } else {
  }
  if (tmp___15 == 22) {
    goto case_22;
  } else {
  }
  if (tmp___15 == 23) {
    goto case_23;
  } else {
  }
  if (tmp___15 == 24) {
    goto case_24;
  } else {
  }
  if (tmp___15 == 25) {
    goto case_25;
  } else {
  }
  if (tmp___15 == 26) {
    goto case_26;
  } else {
  }
  if (tmp___15 == 27) {
    goto case_27;
  } else {
  }
  if (tmp___15 == 28) {
    goto case_28;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_9_54(ldv_9_callback_vidioc_unsubscribe_event, ldv_9_resource_struct_v4l2_fh_ptr,
                                ldv_9_resource_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_9;
  case_2:
  {
  ldv_io_instance_callback_9_53(ldv_9_callback_vidioc_try_fmt_vid_cap, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  case_3:
  {
  ldv_io_instance_callback_9_52(ldv_9_callback_vidioc_subscribe_event, ldv_9_resource_struct_v4l2_fh_ptr,
                                ldv_9_resource_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_4:
  {
  ldv_io_instance_callback_9_51(ldv_9_callback_vidioc_streamon, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_enum_v4l2_buf_type);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_5:
  {
  ldv_io_instance_callback_9_50(ldv_9_callback_vidioc_streamoff, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_enum_v4l2_buf_type);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_6:
  {
  ldv_io_instance_callback_9_49(ldv_9_callback_vidioc_s_tuner, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_tuner_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_7:
  {
  ldv_io_instance_callback_9_46(ldv_9_callback_vidioc_s_std, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_ldv_param_46_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_8:
  {
  ldv_io_instance_callback_9_43(ldv_9_callback_vidioc_s_input, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_ldv_param_43_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_9:
  {
  ldv_io_instance_callback_9_42(ldv_9_callback_vidioc_s_frequency, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_frequency_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_10:
  {
  ldv_io_instance_callback_9_41(ldv_9_callback_vidioc_s_fmt_vid_cap, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_11:
  {
  ldv_io_instance_callback_9_40(ldv_9_callback_vidioc_reqbufs, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_requestbuffers_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_12:
  {
  ldv_io_instance_callback_9_39(ldv_9_callback_vidioc_querycap, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_capability_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_13:
  {
  ldv_io_instance_callback_9_38(ldv_9_callback_vidioc_querybuf, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_14:
  {
  ldv_io_instance_callback_9_37(ldv_9_callback_vidioc_qbuf, ldv_9_resource_file, (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_15:
  {
  ldv_io_instance_callback_9_36(ldv_9_callback_vidioc_g_tuner, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_tuner_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_16:
  {
  tmp___16 = ldv_xmalloc(8UL);
  ldv_9_ldv_param_33_2_default = (unsigned long long *)tmp___16;
  ldv_io_instance_callback_9_33(ldv_9_callback_vidioc_g_std, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_ldv_param_33_2_default);
  ldv_free((void *)ldv_9_ldv_param_33_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_17:
  {
  tmp___17 = ldv_xmalloc(4UL);
  ldv_9_ldv_param_30_2_default = (unsigned int *)tmp___17;
  ldv_io_instance_callback_9_30(ldv_9_callback_vidioc_g_input, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_ldv_param_30_2_default);
  ldv_free((void *)ldv_9_ldv_param_30_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_18:
  {
  ldv_io_instance_callback_9_29(ldv_9_callback_vidioc_g_frequency, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_frequency_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_19:
  {
  ldv_io_instance_callback_9_28(ldv_9_callback_vidioc_g_fmt_vid_cap, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_format_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_20:
  {
  ldv_io_instance_callback_9_27(ldv_9_callback_vidioc_enum_input, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_input_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_21:
  {
  ldv_io_instance_callback_9_26(ldv_9_callback_vidioc_enum_fmt_vid_cap, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_fmtdesc_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_22:
  {
  ldv_io_instance_callback_9_25(ldv_9_callback_vidioc_dqbuf, ldv_9_resource_file,
                                (void *)ldv_9_resource_struct_poll_table_struct_ptr,
                                ldv_9_resource_struct_v4l2_buffer_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_23:
  {
  ldv_io_instance_callback_9_22(ldv_9_callback_unlocked_ioctl, ldv_9_resource_file,
                                ldv_9_ldv_param_22_1_default, ldv_9_ldv_param_22_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_24:
  {
  tmp___18 = ldv_xmalloc(1UL);
  ldv_9_ldv_param_19_1_default = (char *)tmp___18;
  tmp___19 = ldv_xmalloc(8UL);
  ldv_9_ldv_param_19_3_default = (long long *)tmp___19;
  ldv_io_instance_callback_9_19(ldv_9_callback_read, ldv_9_resource_file, ldv_9_ldv_param_19_1_default,
                                ldv_9_ldv_param_19_2_default, ldv_9_ldv_param_19_3_default);
  ldv_free((void *)ldv_9_ldv_param_19_1_default);
  ldv_free((void *)ldv_9_ldv_param_19_3_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_25:
  {
  ldv_io_instance_callback_9_18(ldv_9_callback_poll, ldv_9_resource_file, ldv_9_resource_struct_poll_table_struct_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_26:
  {
  ldv_io_instance_callback_9_17(ldv_9_callback_mmap, ldv_9_resource_file, ldv_9_resource_struct_vm_area_struct_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_27:
  {
  ldv_io_instance_callback_9_4(ldv_9_callback_func_1_ptr, ldv_9_resource_struct_video_device);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_28:
  {
  ldv_io_instance_release_9_2(ldv_9_container_v4l2_file_operations->release, ldv_9_resource_file);
  }
  goto ldv_main_9;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
static void *ldv_dev_get_drvdata_42(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_43___0(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_52(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_slock_of_tm6000_core();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_53(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_slock_of_tm6000_core();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_slock_of_tm6000_core();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_55(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_slock_of_tm6000_core();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static unsigned int tm6010_a_mode ;
static struct tm6000_reg_settings composite_pal_m[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 4U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 0U},
        {7U, 7U, 49U},
        {7U, 24U, 30U},
        {7U, 25U, 131U},
        {7U, 26U, 10U},
        {7U, 27U, 224U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 136U},
        {7U, 48U, 32U},
        {7U, 49U, 97U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings composite_pal_nc[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 54U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 2U},
        {7U, 7U, 49U},
        {7U, 24U, 30U},
        {7U, 25U, 145U},
        {7U, 26U, 31U},
        {7U, 27U, 12U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 140U},
        {7U, 48U, 44U},
        {7U, 49U, 193U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings composite_pal[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 50U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 2U},
        {7U, 7U, 49U},
        {7U, 24U, 37U},
        {7U, 25U, 213U},
        {7U, 26U, 99U},
        {7U, 27U, 80U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 140U},
        {7U, 48U, 44U},
        {7U, 49U, 193U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings composite_secam[24U] =
  { {7U, 63U, 1U},
        {7U, 0U, 56U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 2U},
        {7U, 7U, 49U},
        {7U, 24U, 36U},
        {7U, 25U, 146U},
        {7U, 26U, 232U},
        {7U, 27U, 237U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 140U},
        {7U, 48U, 44U},
        {7U, 49U, 193U},
        {7U, 51U, 44U},
        {7U, 53U, 24U},
        {7U, 130U, 66U},
        {7U, 131U, 255U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings composite_ntsc[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 0U},
        {7U, 1U, 15U},
        {7U, 2U, 95U},
        {7U, 3U, 0U},
        {7U, 7U, 49U},
        {7U, 24U, 30U},
        {7U, 25U, 139U},
        {7U, 26U, 162U},
        {7U, 27U, 233U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 97U},
        {7U, 51U, 28U},
        {7U, 53U, 28U},
        {7U, 130U, 66U},
        {7U, 131U, 111U},
        {7U, 4U, 221U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_std_settings composite_stds[5U] = { {256ULL, (struct tm6000_reg_settings *)(& composite_pal_m)},
        {1024ULL, (struct tm6000_reg_settings *)(& composite_pal_nc)},
        {255ULL, (struct tm6000_reg_settings *)(& composite_pal)},
        {16711680ULL, (struct tm6000_reg_settings *)(& composite_secam)},
        {45056ULL, (struct tm6000_reg_settings *)(& composite_ntsc)}};
static struct tm6000_reg_settings svideo_pal_m[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 5U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 4U},
        {7U, 7U, 49U},
        {7U, 24U, 30U},
        {7U, 25U, 131U},
        {7U, 26U, 10U},
        {7U, 27U, 224U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 97U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings svideo_pal_nc[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 55U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 4U},
        {7U, 7U, 49U},
        {7U, 24U, 30U},
        {7U, 25U, 145U},
        {7U, 26U, 31U},
        {7U, 27U, 12U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 193U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings svideo_pal[25U] =
  { {7U, 63U, 1U},
        {7U, 0U, 51U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 4U},
        {7U, 7U, 48U},
        {7U, 24U, 37U},
        {7U, 25U, 213U},
        {7U, 26U, 99U},
        {7U, 27U, 80U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 140U},
        {7U, 48U, 42U},
        {7U, 49U, 193U},
        {7U, 51U, 12U},
        {7U, 53U, 28U},
        {7U, 130U, 82U},
        {7U, 131U, 111U},
        {7U, 4U, 220U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings svideo_secam[24U] =
  { {7U, 63U, 1U},
        {7U, 0U, 57U},
        {7U, 1U, 14U},
        {7U, 2U, 95U},
        {7U, 3U, 3U},
        {7U, 7U, 49U},
        {7U, 24U, 36U},
        {7U, 25U, 146U},
        {7U, 26U, 232U},
        {7U, 27U, 237U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 140U},
        {7U, 48U, 42U},
        {7U, 49U, 193U},
        {7U, 51U, 44U},
        {7U, 53U, 24U},
        {7U, 130U, 66U},
        {7U, 131U, 255U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_reg_settings svideo_ntsc[26U] =
  { {7U, 63U, 1U},
        {7U, 0U, 1U},
        {7U, 1U, 15U},
        {7U, 2U, 95U},
        {7U, 3U, 3U},
        {7U, 7U, 48U},
        {7U, 23U, 139U},
        {7U, 24U, 30U},
        {7U, 25U, 139U},
        {7U, 26U, 162U},
        {7U, 27U, 233U},
        {7U, 28U, 28U},
        {7U, 29U, 204U},
        {7U, 30U, 204U},
        {7U, 31U, 205U},
        {7U, 46U, 136U},
        {7U, 48U, 34U},
        {7U, 49U, 97U},
        {7U, 51U, 28U},
        {7U, 53U, 28U},
        {7U, 130U, 66U},
        {7U, 131U, 111U},
        {7U, 4U, 221U},
        {7U, 13U, 7U},
        {7U, 63U, 0U},
        {0U, 0U, 0U}};
static struct tm6000_std_settings svideo_stds[5U] = { {256ULL, (struct tm6000_reg_settings *)(& svideo_pal_m)},
        {1024ULL, (struct tm6000_reg_settings *)(& svideo_pal_nc)},
        {255ULL, (struct tm6000_reg_settings *)(& svideo_pal)},
        {16711680ULL, (struct tm6000_reg_settings *)(& svideo_secam)},
        {45056ULL, (struct tm6000_reg_settings *)(& svideo_ntsc)}};
static int tm6000_set_audio_std(struct tm6000_core *dev )
{
  uint8_t areg_02 ;
  uint8_t areg_05 ;
  uint8_t areg_06 ;
  {
  areg_02 = 4U;
  areg_05 = 1U;
  areg_06 = 2U;
  if ((unsigned int )dev->radio != 0U) {
    {
    tm6000_set_reg(dev, 8, 1, 0);
    tm6000_set_reg(dev, 8, 2, 4);
    tm6000_set_reg(dev, 8, 3, 0);
    tm6000_set_reg(dev, 8, 4, 128);
    tm6000_set_reg(dev, 8, 5, 12);
    }
    if (dev->amode == 0) {
      {
      tm6000_set_reg(dev, 8, 6, 0);
      }
    } else
    if (dev->amode == 1) {
      {
      tm6000_set_reg(dev, 8, 6, 2);
      }
    } else {
    }
    {
    tm6000_set_reg(dev, 8, 9, 24);
    tm6000_set_reg(dev, 8, 12, 10);
    tm6000_set_reg(dev, 8, 13, 64);
    tm6000_set_reg(dev, 8, 241, 254);
    tm6000_set_reg(dev, 8, 30, 19);
    tm6000_set_reg(dev, 8, 1, 128);
    tm6000_set_reg(dev, 7, 254, 255);
    }
    return (0);
  } else {
  }
  if ((dev->norm & 45056ULL) == 32768ULL) {
    areg_05 = (uint8_t )((unsigned int )areg_05 | 4U);
  } else
  if ((dev->norm & 45056ULL) == 8192ULL) {
    areg_05 = (uint8_t )((unsigned int )areg_05 | 67U);
  } else
  if ((dev->norm & 46848ULL) != 0ULL) {
    areg_05 = (uint8_t )((unsigned int )areg_05 | 34U);
  } else {
    {
    if (tm6010_a_mode == 0U) {
      goto case_0;
    } else {
    }
    if (tm6010_a_mode == 1U) {
      goto case_1;
    } else {
    }
    if (tm6010_a_mode == 2U) {
      goto case_2;
    } else {
    }
    if (tm6010_a_mode == 3U) {
      goto case_3;
    } else {
    }
    goto switch_break;
    case_0: ;
    if ((dev->norm & 16711680ULL) == 4194304ULL) {
      areg_05 = areg_05;
    } else {
      areg_05 = (uint8_t )((unsigned int )areg_05 | 16U);
    }
    goto ldv_31818;
    case_1: ;
    if ((dev->norm & 3277024ULL) != 0ULL) {
      areg_05 = 9U;
    } else {
      areg_05 = 5U;
    }
    goto ldv_31818;
    case_2: ;
    if ((dev->norm & 3277024ULL) != 0ULL) {
      areg_05 = 6U;
    } else
    if ((dev->norm & 16ULL) != 0ULL) {
      areg_05 = 8U;
    } else
    if ((dev->norm & 4194304ULL) != 0ULL) {
      areg_05 = 10U;
      areg_02 = 2U;
    } else {
      areg_05 = 7U;
    }
    goto ldv_31818;
    case_3: ;
    if ((dev->norm & 3277024ULL) != 0ULL) {
      areg_05 = 11U;
    } else {
      areg_05 = 2U;
    }
    goto ldv_31818;
    switch_break: ;
    }
    ldv_31818: ;
  }
  {
  tm6000_set_reg(dev, 8, 1, 0);
  tm6000_set_reg(dev, 8, 2, (int )areg_02);
  tm6000_set_reg(dev, 8, 3, 0);
  tm6000_set_reg(dev, 8, 4, 160);
  tm6000_set_reg(dev, 8, 5, (int )areg_05);
  tm6000_set_reg(dev, 8, 6, (int )areg_06);
  tm6000_set_reg(dev, 8, 7, 0);
  tm6000_set_reg(dev, 8, 8, 0);
  tm6000_set_reg(dev, 8, 9, 8);
  tm6000_set_reg(dev, 8, 10, 145);
  tm6000_set_reg(dev, 8, 11, 32);
  tm6000_set_reg(dev, 8, 12, 18);
  tm6000_set_reg(dev, 8, 13, 32);
  tm6000_set_reg(dev, 8, 14, 240);
  tm6000_set_reg(dev, 8, 15, 128);
  tm6000_set_reg(dev, 8, 16, 192);
  tm6000_set_reg(dev, 8, 17, 128);
  tm6000_set_reg(dev, 8, 18, 18);
  tm6000_set_reg(dev, 8, 19, 254);
  tm6000_set_reg(dev, 8, 20, 32);
  tm6000_set_reg(dev, 8, 21, 20);
  tm6000_set_reg(dev, 8, 22, 254);
  tm6000_set_reg(dev, 8, 23, 1);
  tm6000_set_reg(dev, 8, 24, 160);
  tm6000_set_reg(dev, 8, 25, 50);
  tm6000_set_reg(dev, 8, 26, 100);
  tm6000_set_reg(dev, 8, 27, 32);
  tm6000_set_reg(dev, 8, 28, 0);
  tm6000_set_reg(dev, 8, 29, 0);
  tm6000_set_reg(dev, 8, 30, 19);
  tm6000_set_reg(dev, 8, 31, 0);
  tm6000_set_reg(dev, 8, 32, 0);
  tm6000_set_reg(dev, 8, 1, 128);
  }
  return (0);
}
}
void tm6000_get_std_res(struct tm6000_core *dev )
{
  {
  if ((dev->norm & 63744ULL) != 0ULL) {
    dev->height = 480;
  } else {
    dev->height = 576;
  }
  dev->width = 720;
  return;
}
}
static int tm6000_load_std(struct tm6000_core *dev , struct tm6000_reg_settings *set )
{
  int i ;
  int rc ;
  {
  i = 0;
  goto ldv_31832;
  ldv_31831:
  {
  rc = tm6000_set_reg(dev, (int )(set + (unsigned long )i)->req, (int )(set + (unsigned long )i)->reg,
                      (int )(set + (unsigned long )i)->value);
  }
  if (rc < 0) {
    {
    printk("\vError %i while setting req %d, reg %d to value %d\n", rc, (int )(set + (unsigned long )i)->req,
           (int )(set + (unsigned long )i)->reg, (int )(set + (unsigned long )i)->value);
    }
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_31832: ;
  if ((unsigned int )(set + (unsigned long )i)->req != 0U) {
    goto ldv_31831;
  } else {
  }
  return (0);
}
}
int tm6000_set_standard(struct tm6000_core *dev )
{
  struct tm6000_input *input ;
  int i ;
  int rc ;
  u8 reg_07_fe ;
  u8 reg_08_f1 ;
  u8 reg_08_e2 ;
  u8 reg_08_e6 ;
  {
  {
  rc = 0;
  reg_07_fe = 138U;
  reg_08_f1 = 252U;
  reg_08_e2 = 240U;
  reg_08_e6 = 15U;
  tm6000_get_std_res(dev);
  }
  if ((unsigned int )dev->radio == 0U) {
    input = (struct tm6000_input *)(& dev->vinput) + (unsigned long )dev->input;
  } else {
    input = & dev->rinput;
  }
  if ((unsigned int )dev->dev_type == 2U) {
    {
    if ((unsigned int )input->vmux == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )input->vmux == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )input->vmux == 3U) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    tm6000_set_reg(dev, 8, 227, 244);
    tm6000_set_reg(dev, 8, 234, 241);
    tm6000_set_reg(dev, 8, 235, 224);
    tm6000_set_reg(dev, 8, 236, 194);
    tm6000_set_reg(dev, 8, 237, 232);
    reg_07_fe = (u8 )((unsigned int )reg_07_fe | 1U);
    }
    goto ldv_31845;
    case_2:
    {
    tm6000_set_reg(dev, 8, 227, 248);
    tm6000_set_reg(dev, 8, 234, 241);
    tm6000_set_reg(dev, 8, 235, 224);
    tm6000_set_reg(dev, 8, 236, 194);
    tm6000_set_reg(dev, 8, 237, 232);
    reg_07_fe = (u8 )((unsigned int )reg_07_fe | 1U);
    }
    goto ldv_31845;
    case_3:
    {
    tm6000_set_reg(dev, 8, 227, 252);
    tm6000_set_reg(dev, 8, 228, 248);
    reg_08_e6 = 0U;
    tm6000_set_reg(dev, 8, 234, 242);
    tm6000_set_reg(dev, 8, 235, 240);
    tm6000_set_reg(dev, 8, 236, 194);
    tm6000_set_reg(dev, 8, 237, 224);
    }
    goto ldv_31845;
    switch_default: ;
    goto ldv_31845;
    switch_break: ;
    }
    ldv_31845: ;
    {
    if ((unsigned int )input->amux == 4U) {
      goto case_4;
    } else {
    }
    if ((unsigned int )input->amux == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )input->amux == 6U) {
      goto case_6;
    } else {
    }
    if ((unsigned int )input->amux == 7U) {
      goto case_7;
    } else {
    }
    goto switch_default___0;
    case_4:
    {
    tm6000_set_reg_mask(dev, 8, 240, 0, 15);
    tm6000_set_reg_mask(dev, 7, 7, 16, 240);
    }
    goto ldv_31850;
    case_5:
    {
    tm6000_set_reg_mask(dev, 8, 240, 8, 15);
    tm6000_set_reg_mask(dev, 7, 7, 16, 240);
    }
    goto ldv_31850;
    case_6:
    {
    reg_08_e2 = (u8 )((unsigned int )reg_08_e2 | 2U);
    reg_08_e6 = 8U;
    reg_07_fe = (u8 )((unsigned int )reg_07_fe | 64U);
    reg_08_f1 = (u8 )((unsigned int )reg_08_f1 | 2U);
    tm6000_set_reg(dev, 8, 228, 243);
    tm6000_set_reg_mask(dev, 8, 240, 2, 15);
    tm6000_set_reg_mask(dev, 7, 7, 48, 240);
    }
    goto ldv_31850;
    case_7:
    {
    reg_08_e2 = (u8 )((unsigned int )reg_08_e2 | 2U);
    reg_08_e6 = 8U;
    reg_07_fe = (u8 )((unsigned int )reg_07_fe | 64U);
    reg_08_f1 = (u8 )((unsigned int )reg_08_f1 | 2U);
    tm6000_set_reg(dev, 8, 228, 247);
    tm6000_set_reg_mask(dev, 8, 240, 2, 15);
    tm6000_set_reg_mask(dev, 7, 7, 48, 240);
    }
    goto ldv_31850;
    switch_default___0: ;
    goto ldv_31850;
    switch_break___0: ;
    }
    ldv_31850:
    {
    tm6000_set_reg(dev, 8, 226, (int )reg_08_e2);
    tm6000_set_reg(dev, 8, 230, (int )reg_08_e6);
    tm6000_set_reg(dev, 8, 241, (int )reg_08_f1);
    tm6000_set_reg(dev, 7, 254, (int )reg_07_fe);
    }
  } else {
    {
    if ((unsigned int )input->vmux == 1U) {
      goto case_1___0;
    } else {
    }
    if ((unsigned int )input->vmux == 2U) {
      goto case_2___0;
    } else {
    }
    if ((unsigned int )input->vmux == 3U) {
      goto case_3___0;
    } else {
    }
    goto switch_default___1;
    case_1___0:
    {
    tm6000_set_reg(dev, 7, 227, 16);
    tm6000_set_reg(dev, 7, 229, 0);
    tm6000_set_reg(dev, 7, 232, 15);
    tm6000_set_reg(dev, 3, (int )((u16 )input->v_gpio), 0);
    }
    goto ldv_31856;
    case_2___0:
    {
    tm6000_set_reg(dev, 7, 227, 0);
    tm6000_set_reg(dev, 7, 229, 0);
    tm6000_set_reg(dev, 7, 232, 15);
    tm6000_set_reg(dev, 3, (int )((u16 )input->v_gpio), 0);
    }
    goto ldv_31856;
    case_3___0:
    {
    tm6000_set_reg(dev, 7, 227, 16);
    tm6000_set_reg(dev, 7, 229, 16);
    tm6000_set_reg(dev, 7, 232, 0);
    tm6000_set_reg(dev, 3, (int )((u16 )input->v_gpio), 1);
    }
    goto ldv_31856;
    switch_default___1: ;
    goto ldv_31856;
    switch_break___1: ;
    }
    ldv_31856: ;
    {
    if ((unsigned int )input->amux == 4U) {
      goto case_4___0;
    } else {
    }
    if ((unsigned int )input->amux == 5U) {
      goto case_5___0;
    } else {
    }
    goto switch_default___2;
    case_4___0:
    {
    tm6000_set_reg_mask(dev, 7, 235, 0, 15);
    }
    goto ldv_31861;
    case_5___0:
    {
    tm6000_set_reg_mask(dev, 7, 235, 4, 15);
    }
    goto ldv_31861;
    switch_default___2: ;
    goto ldv_31861;
    switch_break___2: ;
    }
    ldv_31861: ;
  }
  if ((unsigned int )input->type == 4U) {
    i = 0;
    goto ldv_31868;
    ldv_31867: ;
    if ((dev->norm & svideo_stds[i].id) != 0ULL) {
      {
      rc = tm6000_load_std(dev, svideo_stds[i].common);
      }
      goto ret;
    } else {
    }
    i = i + 1;
    ldv_31868: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_31867;
    } else {
    }
    return (-22);
  } else {
    i = 0;
    goto ldv_31873;
    ldv_31872: ;
    if ((dev->norm & composite_stds[i].id) != 0ULL) {
      {
      rc = tm6000_load_std(dev, composite_stds[i].common);
      }
      goto ret;
    } else {
    }
    i = i + 1;
    ldv_31873: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_31872;
    } else {
    }
    return (-22);
  }
  ret: ;
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->dev_type == 2U && (unsigned int )input->amux - 6U <= 1U) {
    {
    tm6000_set_audio_std(dev);
    }
  } else {
  }
  {
  msleep(40U);
  }
  return (0);
}
}
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern size_t strlcat(char * , char const * , __kernel_size_t ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
  }
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  }
  return (tmp);
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
extern struct rc_dev *rc_allocate_device(void) ;
extern void rc_free_device(struct rc_dev * ) ;
extern int rc_register_device(struct rc_dev * ) ;
extern void rc_unregister_device(struct rc_dev * ) ;
extern void rc_keydown(struct rc_dev * , int , u8 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static unsigned int ir_debug ;
static unsigned int enable_ir = 1U;
static unsigned int ir_clock_mhz = 12U;
void tm6000_ir_wait(struct tm6000_core *dev , u8 state )
{
  struct tm6000_IR *ir ;
  {
  ir = dev->ir;
  if ((unsigned long )dev->ir == (unsigned long )((struct tm6000_IR *)0)) {
    return;
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s: %i\n", (char *)(& ir->name), "tm6000_ir_wait", (int )ir->wait);
    }
  } else {
  }
  if ((unsigned int )state != 0U) {
    ir->wait = 1U;
  } else {
    ir->wait = 0U;
  }
  return;
}
}
static int tm6000_ir_config(struct tm6000_IR *ir )
{
  struct tm6000_core *dev ;
  u32 pulse ;
  u32 leader ;
  {
  dev = ir->dev;
  pulse = 0U;
  leader = 0U;
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_config");
    }
  } else {
  }
  {
  if (ir->rc_type == 1024ULL) {
    goto case_1024;
  } else {
  }
  if (ir->rc_type == 8ULL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1024:
  leader = 900U;
  pulse = 700U;
  goto ldv_35444;
  switch_default: ;
  case_8:
  leader = 900U;
  pulse = 1780U;
  goto ldv_35444;
  switch_break: ;
  }
  ldv_35444:
  pulse = ir_clock_mhz * pulse;
  leader = ir_clock_mhz * leader;
  if (ir->rc_type == 1024ULL) {
    leader = leader | 32768U;
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s: %s, %d MHz, leader = 0x%04x, pulse = 0x%06x \n", (char *)(& ir->name),
           "tm6000_ir_config", ir->rc_type == 1024ULL ? (char *)"NEC" : (char *)"RC-5",
           ir_clock_mhz, leader, pulse);
    }
  } else {
  }
  {
  tm6000_set_reg(dev, 7, 229, 254);
  tm6000_set_reg(dev, 7, 216, 47);
  tm6000_set_reg(dev, 7, 218, 255);
  tm6000_set_reg(dev, 7, 219, 255);
  tm6000_set_reg(dev, 7, 220, (int )((u16 )(leader >> 8)));
  tm6000_set_reg(dev, 7, 221, (int )((u16 )leader));
  tm6000_set_reg(dev, 7, 222, (int )((u16 )(pulse >> 8)));
  tm6000_set_reg(dev, 7, 223, (int )((u16 )pulse));
  }
  if (ir->polling == 0) {
    {
    tm6000_set_reg(dev, 4, 2, 0);
    }
  } else {
    {
    tm6000_set_reg(dev, 4, 2, 1);
    }
  }
  {
  msleep(10U);
  tm6000_flash_led(dev, 0);
  msleep(100U);
  tm6000_flash_led(dev, 1);
  ir->pwled = 1U;
  }
  return (0);
}
}
static void tm6000_ir_urb_received(struct urb *urb )
{
  struct tm6000_core *dev ;
  struct tm6000_IR *ir ;
  struct tm6000_ir_poll_result poll_result ;
  char *buf ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  dev = (struct tm6000_core *)urb->context;
  ir = dev->ir;
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_urb_received");
    }
  } else {
  }
  if (urb->status < 0 || urb->actual_length == 0U) {
    {
    printk("\016tm6000: IR URB failure: status: %i, length %i\n", urb->status, urb->actual_length);
    ir->submit_urb = 1U;
    tmp = msecs_to_jiffies(100U);
    schedule_delayed_work(& ir->work, tmp);
    }
    return;
  } else {
  }
  buf = (char *)urb->transfer_buffer;
  if (ir_debug != 0U) {
    {
    print_hex_dump("\017", "tm6000: IR data: ", 2, 16, 1, (void const *)buf, (size_t )urb->actual_length,
                   0);
    }
  } else {
  }
  poll_result.rc_data = (u16 )*buf;
  if (urb->actual_length > 1U) {
    poll_result.rc_data = (u16 )((int )((short )poll_result.rc_data) | (int )((short )((int )*(buf + 1UL) << 8)));
  } else {
  }
  if (ir_debug != 0U) {
    {
    printk("\017%s/ir: %s, scancode: 0x%04x\n", (char *)(& ir->name), "tm6000_ir_urb_received",
           (int )poll_result.rc_data);
    }
  } else {
  }
  {
  rc_keydown(ir->rc, (int )poll_result.rc_data, 0);
  usb_submit_urb(urb, 32U);
  ir->pwled = 2U;
  tmp___0 = msecs_to_jiffies(10U);
  schedule_delayed_work(& ir->work, tmp___0);
  }
  return;
}
}
static void tm6000_ir_handle_key(struct work_struct *work )
{
  struct tm6000_IR *ir ;
  struct work_struct const *__mptr ;
  struct tm6000_core *dev ;
  struct tm6000_ir_poll_result poll_result ;
  int rc ;
  u8 buf[2U] ;
  unsigned long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  ir = (struct tm6000_IR *)__mptr + 0xffffffffffffffa8UL;
  dev = ir->dev;
  if ((unsigned int )*((unsigned char *)ir + 312UL) != 0U) {
    return;
  } else {
  }
  if (ir_debug > 2U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_handle_key");
    }
  } else {
  }
  {
  rc = tm6000_read_write_usb(dev, 192, 2, 0, 0, (u8 *)(& buf), 2);
  }
  if (rc < 0) {
    return;
  } else {
  }
  if (rc > 1) {
    poll_result.rc_data = (u16 )((int )((short )buf[0]) | (int )((short )((int )buf[1] << 8)));
  } else {
    poll_result.rc_data = (u16 )buf[0];
  }
  if (((int )poll_result.rc_data & 255) == 255) {
    if ((unsigned int )*((unsigned char *)ir + 312UL) == 0U) {
      {
      tm6000_flash_led(dev, 1);
      ir->pwled = 1U;
      }
    } else {
    }
    return;
  } else {
  }
  if (ir_debug != 0U) {
    {
    printk("\017%s/ir: %s, scancode: 0x%04x\n", (char *)(& ir->name), "tm6000_ir_handle_key",
           (int )poll_result.rc_data);
    }
  } else {
  }
  {
  rc_keydown(ir->rc, (int )poll_result.rc_data, 0);
  tm6000_flash_led(dev, 0);
  ir->pwled = 0U;
  tmp = msecs_to_jiffies((unsigned int const )ir->polling);
  schedule_delayed_work(& ir->work, tmp);
  }
  return;
}
}
static void tm6000_ir_int_work(struct work_struct *work )
{
  struct tm6000_IR *ir ;
  struct work_struct const *__mptr ;
  struct tm6000_core *dev ;
  int rc ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  ir = (struct tm6000_IR *)__mptr + 0xffffffffffffffa8UL;
  dev = ir->dev;
  if (ir_debug > 2U) {
    {
    printk("\017%s/ir: %s, submit_urb = %d, pwled = %d\n", (char *)(& ir->name), "tm6000_ir_int_work",
           (int )ir->submit_urb, (int )ir->pwled);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)ir + 312UL) != 0U) {
    if (ir_debug > 2U) {
      {
      printk("\017%s/ir: Resubmit urb\n", (char *)(& ir->name));
      }
    } else {
    }
    {
    tm6000_set_reg(dev, 4, 2, 0);
    rc = usb_submit_urb(ir->int_urb, 32U);
    }
    if (rc < 0) {
      {
      printk("\vtm6000: Can\'t submit an IR interrupt. Error %i\n", rc);
      tmp = msecs_to_jiffies(100U);
      schedule_delayed_work(& ir->work, tmp);
      }
      return;
    } else {
    }
    ir->submit_urb = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ir + 312UL) == 4U) {
    {
    tm6000_flash_led(dev, 0);
    ir->pwled = 0U;
    tmp___0 = msecs_to_jiffies(100U);
    schedule_delayed_work(& ir->work, tmp___0);
    }
  } else
  if ((unsigned int )*((unsigned char *)ir + 312UL) == 0U) {
    {
    tm6000_flash_led(dev, 1);
    ir->pwled = 1U;
    }
  } else {
  }
  return;
}
}
static int tm6000_ir_start(struct rc_dev *rc )
{
  struct tm6000_IR *ir ;
  {
  ir = (struct tm6000_IR *)rc->priv;
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_start");
    }
  } else {
  }
  {
  schedule_delayed_work(& ir->work, 0UL);
  }
  return (0);
}
}
static void tm6000_ir_stop(struct rc_dev *rc )
{
  struct tm6000_IR *ir ;
  {
  ir = (struct tm6000_IR *)rc->priv;
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_stop");
    }
  } else {
  }
  {
  cancel_delayed_work_sync(& ir->work);
  }
  return;
}
}
static int tm6000_ir_change_protocol(struct rc_dev *rc , u64 *rc_type )
{
  struct tm6000_IR *ir ;
  {
  ir = (struct tm6000_IR *)rc->priv;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0)) {
    return (0);
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_change_protocol");
    }
  } else {
  }
  if ((unsigned long )rc->rc_map.scan != (unsigned long )((struct rc_map_table *)0) && *rc_type == 1024ULL) {
    ir->key_addr = (u16 )((rc->rc_map.scan)->scancode >> 8);
  } else {
  }
  {
  ir->rc_type = *rc_type;
  tm6000_ir_config(ir);
  }
  return (0);
}
}
static int __tm6000_ir_int_start(struct rc_dev *rc )
{
  struct tm6000_IR *ir ;
  struct tm6000_core *dev ;
  int pipe ;
  int size ;
  int err ;
  unsigned int tmp ;
  __u16 tmp___0 ;
  unsigned long tmp___1 ;
  {
  ir = (struct tm6000_IR *)rc->priv;
  err = -12;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0)) {
    return (-19);
  } else {
  }
  dev = ir->dev;
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "__tm6000_ir_int_start");
    }
  } else {
  }
  {
  ir->int_urb = usb_alloc_urb(0, 32U);
  }
  if ((unsigned long )ir->int_urb == (unsigned long )((struct urb *)0)) {
    return (-12);
  } else {
  }
  {
  tmp = __create_pipe(dev->udev, (unsigned int )(dev->int_in.endp)->desc.bEndpointAddress & 15U);
  pipe = (int )(tmp | 1073741952U);
  tmp___0 = usb_maxpacket(dev->udev, pipe, (pipe & 128) == 0);
  size = (int )tmp___0;
  }
  if (ir_debug != 0U) {
    {
    printk("\017%s/ir: IR max size: %d\n", (char *)(& ir->name), size);
    }
  } else {
  }
  {
  (ir->int_urb)->transfer_buffer = kzalloc((size_t )size, 32U);
  }
  if ((unsigned long )(ir->int_urb)->transfer_buffer == (unsigned long )((void *)0)) {
    {
    usb_free_urb(ir->int_urb);
    }
    return (err);
  } else {
  }
  if (ir_debug != 0U) {
    {
    printk("\017%s/ir: int interval: %d\n", (char *)(& ir->name), (int )(dev->int_in.endp)->desc.bInterval);
    }
  } else {
  }
  {
  usb_fill_int_urb(ir->int_urb, dev->udev, (unsigned int )pipe, (ir->int_urb)->transfer_buffer,
                   size, & tm6000_ir_urb_received, (void *)dev, (int )(dev->int_in.endp)->desc.bInterval);
  ir->submit_urb = 1U;
  tmp___1 = msecs_to_jiffies(100U);
  schedule_delayed_work(& ir->work, tmp___1);
  }
  return (0);
}
}
static void __tm6000_ir_int_stop(struct rc_dev *rc )
{
  struct tm6000_IR *ir ;
  {
  ir = (struct tm6000_IR *)rc->priv;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0) || (unsigned long )ir->int_urb == (unsigned long )((struct urb *)0)) {
    return;
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "__tm6000_ir_int_stop");
    }
  } else {
  }
  {
  usb_kill_urb(ir->int_urb);
  kfree((void const *)(ir->int_urb)->transfer_buffer);
  usb_free_urb(ir->int_urb);
  ir->int_urb = (struct urb *)0;
  }
  return;
}
}
int tm6000_ir_int_start(struct tm6000_core *dev )
{
  struct tm6000_IR *ir ;
  int tmp ;
  {
  ir = dev->ir;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0)) {
    return (0);
  } else {
  }
  {
  tmp = __tm6000_ir_int_start(ir->rc);
  }
  return (tmp);
}
}
void tm6000_ir_int_stop(struct tm6000_core *dev )
{
  struct tm6000_IR *ir ;
  {
  ir = dev->ir;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0) || (unsigned long )ir->rc == (unsigned long )((struct rc_dev *)0)) {
    return;
  } else {
  }
  {
  __tm6000_ir_int_stop(ir->rc);
  }
  return;
}
}
int tm6000_ir_init(struct tm6000_core *dev )
{
  struct tm6000_IR *ir ;
  struct rc_dev *rc ;
  int err ;
  u64 rc_type ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___2 ;
  {
  err = -12;
  if (enable_ir == 0U) {
    return (-19);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 324UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned long )dev->ir_codes == (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  {
  tmp = kzalloc(336UL, 32U);
  ir = (struct tm6000_IR *)tmp;
  rc = rc_allocate_device();
  }
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0) || (unsigned long )rc == (unsigned long )((struct rc_dev *)0)) {
    goto out;
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_init");
    }
  } else {
  }
  ir->dev = dev;
  dev->ir = ir;
  ir->rc = rc;
  rc->allowed_protos = 1032ULL;
  rc->scanmask = 65535U;
  rc->priv = (void *)ir;
  rc->change_protocol = & tm6000_ir_change_protocol;
  if ((unsigned long )dev->int_in.endp != (unsigned long )((struct usb_host_endpoint *)0)) {
    {
    rc->open = & __tm6000_ir_int_start;
    rc->close = & __tm6000_ir_int_stop;
    __init_work(& ir->work.work, 0);
    __constr_expr_0.counter = 137438953408L;
    ir->work.work.data = __constr_expr_0;
    lockdep_init_map(& ir->work.work.lockdep_map, "(&(&ir->work)->work)", & __key,
                     0);
    INIT_LIST_HEAD(& ir->work.work.entry);
    ir->work.work.func = & tm6000_ir_int_work;
    init_timer_key(& ir->work.timer, 2U, "(&(&ir->work)->timer)", & __key___0);
    ir->work.timer.function = & delayed_work_timer_fn;
    ir->work.timer.data = (unsigned long )(& ir->work);
    }
  } else {
    {
    rc->open = & tm6000_ir_start;
    rc->close = & tm6000_ir_stop;
    ir->polling = 50;
    __init_work(& ir->work.work, 0);
    __constr_expr_1.counter = 137438953408L;
    ir->work.work.data = __constr_expr_1;
    lockdep_init_map(& ir->work.work.lockdep_map, "(&(&ir->work)->work)", & __key___1,
                     0);
    INIT_LIST_HEAD(& ir->work.work.entry);
    ir->work.work.func = & tm6000_ir_handle_key;
    init_timer_key(& ir->work.timer, 2U, "(&(&ir->work)->timer)", & __key___2);
    ir->work.timer.function = & delayed_work_timer_fn;
    ir->work.timer.data = (unsigned long )(& ir->work);
    }
  }
  {
  rc->driver_type = 0;
  snprintf((char *)(& ir->name), 32UL, "tm5600/60x0 IR (%s)", (char *)(& dev->name));
  usb_make_path(dev->udev, (char *)(& ir->phys), 32UL);
  strlcat((char *)(& ir->phys), "/input0", 32UL);
  rc_type = 1ULL;
  tm6000_ir_change_protocol(rc, & rc_type);
  rc->input_name = (char const *)(& ir->name);
  rc->input_phys = (char const *)(& ir->phys);
  rc->input_id.bustype = 3U;
  rc->input_id.version = 1U;
  rc->input_id.vendor = (dev->udev)->descriptor.idVendor;
  rc->input_id.product = (dev->udev)->descriptor.idProduct;
  rc->map_name = (char const *)dev->ir_codes;
  rc->driver_name = (char *)"tm6000";
  rc->dev.parent = & (dev->udev)->dev;
  err = rc_register_device(rc);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  return (0);
  out:
  {
  dev->ir = (struct tm6000_IR *)0;
  rc_free_device(rc);
  kfree((void const *)ir);
  }
  return (err);
}
}
int tm6000_ir_fini(struct tm6000_core *dev )
{
  struct tm6000_IR *ir ;
  {
  ir = dev->ir;
  if ((unsigned long )ir == (unsigned long )((struct tm6000_IR *)0)) {
    return (0);
  } else {
  }
  if (ir_debug > 1U) {
    {
    printk("\017%s/ir: %s\n", (char *)(& ir->name), "tm6000_ir_fini");
    }
  } else {
  }
  if (ir->polling == 0) {
    {
    __tm6000_ir_int_stop(ir->rc);
    }
  } else {
  }
  {
  tm6000_ir_stop(ir->rc);
  tm6000_flash_led(dev, 0);
  ir->pwled = 0U;
  rc_unregister_device(ir->rc);
  kfree((void const *)ir);
  dev->ir = (struct tm6000_IR *)0;
  }
  return (0);
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_slock_of_tm6000_core = 1;
void ldv_spin_lock_slock_of_tm6000_core(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_slock_of_tm6000_core == 1);
  ldv_assume(ldv_spin_slock_of_tm6000_core == 1);
  ldv_spin_slock_of_tm6000_core = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_tm6000_core(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_slock_of_tm6000_core == 2);
  ldv_assume(ldv_spin_slock_of_tm6000_core == 2);
  ldv_spin_slock_of_tm6000_core = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_tm6000_core(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_tm6000_core == 1);
  ldv_assume(ldv_spin_slock_of_tm6000_core == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_tm6000_core = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_tm6000_core(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_tm6000_core == 1);
  ldv_assume(ldv_spin_slock_of_tm6000_core == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_tm6000_core(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_tm6000_core == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_tm6000_core(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_tm6000_core();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_tm6000_core(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_slock_of_tm6000_core(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_tm6000_core == 1);
  ldv_assume(ldv_spin_slock_of_tm6000_core == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_tm6000_core = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_slock_of_tm6000_core == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_slock_of_tm6000_core == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
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
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
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
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
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
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
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
void ldv_initialize() {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_usb_register_driver() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
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
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
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
struct rc_dev *rc_allocate_device() {
  return ldv_malloc(sizeof(struct rc_dev));
}
void rc_free_device(struct rc_dev *arg0) {
  return;
}
void rc_keydown(struct rc_dev *arg0, int arg1, u8 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int rc_register_device(struct rc_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void rc_unregister_device(struct rc_dev *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcat(char *arg0, const char *arg1, __kernel_size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
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
int usb_reset_configuration(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
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
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler *arg0, struct v4l2_ctrl_handler *arg1, bool (*arg2)(const struct v4l2_ctrl *)) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_pending(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_vmalloc_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *videobuf_to_vmalloc(struct videobuf_buffer *arg0) {
  return ldv_malloc(0UL);
}
void videobuf_vmalloc_free(struct videobuf_buffer *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
