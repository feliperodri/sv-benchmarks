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
typedef unsigned short umode_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int u_int;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef __u32 __wsum;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct net_device;
struct net_device;
struct task_struct;
struct task_struct;
struct task_struct;
struct task_struct;
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
struct static_key;
struct static_key;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct pci_dev;
struct pci_dev;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct pci_dev;
struct pci_dev;
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
struct module;
struct module;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
struct sk_buff;
struct module;
struct task_struct;
struct task_struct;
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
struct task_struct;
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
extern void __list_add(struct list_head *new , struct list_head *prev , struct list_head *next ) ;
__inline static void list_add(struct list_head *new , struct list_head *head ) __attribute__((__no_instrument_function__)) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{ struct list_head *__cil_tmp3 ;
  {
  {
  __cil_tmp3 = *((struct list_head **)head);
  __list_add(new, head, __cil_tmp3);
  }
  return;
}
}
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
int b1pcmcia_addcard_b1(unsigned int port , unsigned int irq ) ;
int b1pcmcia_addcard_m1(unsigned int port , unsigned int irq ) ;
int b1pcmcia_addcard_m2(unsigned int port , unsigned int irq ) ;
int b1pcmcia_delcard(unsigned int port , unsigned int irq ) ;
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
static char *revision = (char *)"$Revision: 1.1.2.2 $";
static char const __mod_description35[52] __attribute__((__used__, __unused__,
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
        (char const )'V', (char const )'M', (char const )' ', (char const )'P',
        (char const )'C', (char const )'M', (char const )'C', (char const )'I',
        (char const )'A', (char const )' ', (char const )'c', (char const )'a',
        (char const )'r', (char const )'d', (char const )'s', (char const )'\000'};
static char const __mod_author36[21] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'C',
        (char const )'a', (char const )'r', (char const )'s', (char const )'t',
        (char const )'e', (char const )'n', (char const )' ', (char const )'P',
        (char const )'a', (char const )'e', (char const )'t', (char const )'h',
        (char const )'\000'};
static char const __mod_license37[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static void b1pcmcia_remove_ctr(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  avmcard *card ;
  unsigned int port ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  void *__cil_tmp15 ;
  {
  {
  __cil_tmp5 = (unsigned long )ctrl;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((void **)__cil_tmp6);
  cinfo = (avmctrl_info *)__cil_tmp7;
  __cil_tmp8 = (unsigned long )cinfo;
  __cil_tmp9 = __cil_tmp8 + 1256;
  card = *((struct avmcard **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 56;
  port = *((unsigned int *)__cil_tmp11);
  b1_reset(port);
  b1_reset(port);
  detach_capi_ctr(ctrl);
  __cil_tmp12 = (unsigned long )card;
  __cil_tmp13 = __cil_tmp12 + 60;
  __cil_tmp14 = *((unsigned int *)__cil_tmp13);
  __cil_tmp15 = (void *)card;
  free_irq(__cil_tmp14, __cil_tmp15);
  b1_free_card(card);
  }
  return;
}
}
static struct list_head cards = {& cards, & cards};
static char *b1pcmcia_procinfo(struct capi_ctr *ctrl ) ;
static int b1pcmcia_add_card(unsigned int port , unsigned int irq , enum avmcardtype cardtype )
{ avmctrl_info *cinfo ;
  avmcard *card ;
  char *cardname ;
  int retval ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  char *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  char *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  char *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  char *__cil_tmp38 ;
  char const *__cil_tmp39 ;
  void *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  enum avmcardtype __cil_tmp52 ;
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
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
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
  char *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  char *__cil_tmp98 ;
  char const *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  struct capi_ctr *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned int __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned char __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  struct list_head *__cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned int __cil_tmp121 ;
  void *__cil_tmp122 ;
  {
  {
  card = b1_alloc_card(1);
  }
  if (! card) {
    {
    printk("<4>b1pcmcia: no memory.\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  __cil_tmp8 = (unsigned long )card;
  __cil_tmp9 = __cil_tmp8 + 2288;
  cinfo = *((struct avmctrl_info **)__cil_tmp9);
  if ((int )cardtype == 3) {
    goto case_3;
  } else
  if ((int )cardtype == 4) {
    goto case_4;
  } else {
    {
    goto switch_default;
    if (0) {
      case_3:
      {
      __cil_tmp10 = 0 * 1UL;
      __cil_tmp11 = 0 + __cil_tmp10;
      __cil_tmp12 = (unsigned long )card;
      __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
      __cil_tmp14 = (char *)__cil_tmp13;
      sprintf(__cil_tmp14, "m1-%x", port);
      }
      goto switch_break;
      case_4:
      {
      __cil_tmp15 = 0 * 1UL;
      __cil_tmp16 = 0 + __cil_tmp15;
      __cil_tmp17 = (unsigned long )card;
      __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
      __cil_tmp19 = (char *)__cil_tmp18;
      sprintf(__cil_tmp19, "m2-%x", port);
      }
      goto switch_break;
      switch_default:
      {
      __cil_tmp20 = 0 * 1UL;
      __cil_tmp21 = 0 + __cil_tmp20;
      __cil_tmp22 = (unsigned long )card;
      __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
      __cil_tmp24 = (char *)__cil_tmp23;
      sprintf(__cil_tmp24, "b1pcmcia-%x", port);
      }
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  {
  __cil_tmp25 = (unsigned long )card;
  __cil_tmp26 = __cil_tmp25 + 56;
  *((unsigned int *)__cil_tmp26) = port;
  __cil_tmp27 = (unsigned long )card;
  __cil_tmp28 = __cil_tmp27 + 60;
  *((unsigned int *)__cil_tmp28) = irq;
  __cil_tmp29 = (unsigned long )card;
  __cil_tmp30 = __cil_tmp29 + 72;
  *((enum avmcardtype *)__cil_tmp30) = cardtype;
  __cil_tmp31 = (unsigned long )card;
  __cil_tmp32 = __cil_tmp31 + 60;
  __cil_tmp33 = *((unsigned int *)__cil_tmp32);
  __cil_tmp34 = 0 * 1UL;
  __cil_tmp35 = 0 + __cil_tmp34;
  __cil_tmp36 = (unsigned long )card;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
  __cil_tmp38 = (char *)__cil_tmp37;
  __cil_tmp39 = (char const *)__cil_tmp38;
  __cil_tmp40 = (void *)card;
  retval = (int )request_irq(__cil_tmp33, & b1_interrupt, 128UL, __cil_tmp39, __cil_tmp40);
  }
  if (retval) {
    {
    __cil_tmp41 = (unsigned long )card;
    __cil_tmp42 = __cil_tmp41 + 60;
    __cil_tmp43 = *((unsigned int *)__cil_tmp42);
    printk("<3>b1pcmcia: unable to get IRQ %d.\n", __cil_tmp43);
    retval = -16;
    }
    goto err_free;
  } else {
  }
  {
  __cil_tmp44 = (unsigned long )card;
  __cil_tmp45 = __cil_tmp44 + 56;
  __cil_tmp46 = *((unsigned int *)__cil_tmp45);
  b1_reset(__cil_tmp46);
  __cil_tmp47 = (unsigned long )card;
  __cil_tmp48 = __cil_tmp47 + 56;
  __cil_tmp49 = *((unsigned int *)__cil_tmp48);
  __cil_tmp50 = (unsigned long )card;
  __cil_tmp51 = __cil_tmp50 + 72;
  __cil_tmp52 = *((enum avmcardtype *)__cil_tmp51);
  retval = b1_detect(__cil_tmp49, __cil_tmp52);
  }
  if (retval != 0) {
    {
    __cil_tmp53 = (unsigned long )card;
    __cil_tmp54 = __cil_tmp53 + 56;
    __cil_tmp55 = *((unsigned int *)__cil_tmp54);
    printk("<5>b1pcmcia: NO card at 0x%x (%d)\n", __cil_tmp55, retval);
    retval = -19;
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp56 = (unsigned long )card;
  __cil_tmp57 = __cil_tmp56 + 56;
  __cil_tmp58 = *((unsigned int *)__cil_tmp57);
  b1_reset(__cil_tmp58);
  b1_getrevision(card);
  __cil_tmp59 = (unsigned long )cinfo;
  __cil_tmp60 = __cil_tmp59 + 1264;
  *((struct module **)__cil_tmp60) = & __this_module;
  __cil_tmp61 = 1264 + 48;
  __cil_tmp62 = (unsigned long )cinfo;
  __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
  *((char **)__cil_tmp63) = (char *)"b1pcmcia";
  __cil_tmp64 = 1264 + 8;
  __cil_tmp65 = (unsigned long )cinfo;
  __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
  *((void **)__cil_tmp66) = (void *)cinfo;
  __cil_tmp67 = 1264 + 72;
  __cil_tmp68 = (unsigned long )cinfo;
  __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
  *((void (**)(struct capi_ctr * , u16 appl , capi_register_params * ))__cil_tmp69) = & b1_register_appl;
  __cil_tmp70 = 1264 + 80;
  __cil_tmp71 = (unsigned long )cinfo;
  __cil_tmp72 = __cil_tmp71 + __cil_tmp70;
  *((void (**)(struct capi_ctr * , u16 appl ))__cil_tmp72) = & b1_release_appl;
  __cil_tmp73 = 1264 + 88;
  __cil_tmp74 = (unsigned long )cinfo;
  __cil_tmp75 = __cil_tmp74 + __cil_tmp73;
  *((u16 (**)(struct capi_ctr * , struct sk_buff *skb ))__cil_tmp75) = & b1_send_message;
  __cil_tmp76 = 1264 + 56;
  __cil_tmp77 = (unsigned long )cinfo;
  __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
  *((int (**)(struct capi_ctr * , capiloaddata * ))__cil_tmp78) = & b1_load_firmware;
  __cil_tmp79 = 1264 + 64;
  __cil_tmp80 = (unsigned long )cinfo;
  __cil_tmp81 = __cil_tmp80 + __cil_tmp79;
  *((void (**)(struct capi_ctr * ))__cil_tmp81) = & b1_reset_ctr;
  __cil_tmp82 = 1264 + 96;
  __cil_tmp83 = (unsigned long )cinfo;
  __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
  *((char *(**)(struct capi_ctr * ))__cil_tmp84) = & b1pcmcia_procinfo;
  __cil_tmp85 = 1264 + 104;
  __cil_tmp86 = (unsigned long )cinfo;
  __cil_tmp87 = __cil_tmp86 + __cil_tmp85;
  *((struct file_operations const **)__cil_tmp87) = & b1ctl_proc_fops;
  __cil_tmp88 = 0 * 1UL;
  __cil_tmp89 = 16 + __cil_tmp88;
  __cil_tmp90 = 1264 + __cil_tmp89;
  __cil_tmp91 = (unsigned long )cinfo;
  __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
  __cil_tmp93 = (char *)__cil_tmp92;
  __cil_tmp94 = 0 * 1UL;
  __cil_tmp95 = 0 + __cil_tmp94;
  __cil_tmp96 = (unsigned long )card;
  __cil_tmp97 = __cil_tmp96 + __cil_tmp95;
  __cil_tmp98 = (char *)__cil_tmp97;
  __cil_tmp99 = (char const *)__cil_tmp98;
  strcpy(__cil_tmp93, __cil_tmp99);
  __cil_tmp100 = (unsigned long )cinfo;
  __cil_tmp101 = __cil_tmp100 + 1264;
  __cil_tmp102 = (struct capi_ctr *)__cil_tmp101;
  retval = attach_capi_ctr(__cil_tmp102);
  }
  if (retval) {
    {
    printk("<3>b1pcmcia: attach controller failed.\n");
    }
    goto err_free_irq;
  } else {
  }
  if ((int )cardtype == 3) {
    goto case_3___0;
  } else
  if ((int )cardtype == 4) {
    goto case_4___0;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_3___0:
      cardname = (char *)"M1";
      goto switch_break___0;
      case_4___0:
      cardname = (char *)"M2";
      goto switch_break___0;
      switch_default___0:
      cardname = (char *)"B1 PCMCIA";
      goto switch_break___0;
    } else {
      switch_break___0: ;
    }
    }
  }
  {
  __cil_tmp103 = (unsigned long )card;
  __cil_tmp104 = __cil_tmp103 + 56;
  __cil_tmp105 = *((unsigned int *)__cil_tmp104);
  __cil_tmp106 = (unsigned long )card;
  __cil_tmp107 = __cil_tmp106 + 60;
  __cil_tmp108 = *((unsigned int *)__cil_tmp107);
  __cil_tmp109 = (unsigned long )card;
  __cil_tmp110 = __cil_tmp109 + 76;
  __cil_tmp111 = *((unsigned char *)__cil_tmp110);
  __cil_tmp112 = (int )__cil_tmp111;
  printk("<6>b1pcmcia: AVM %s at i/o %#x, irq %d, revision %d\n", cardname, __cil_tmp105,
         __cil_tmp108, __cil_tmp112);
  __cil_tmp113 = (unsigned long )card;
  __cil_tmp114 = __cil_tmp113 + 2304;
  __cil_tmp115 = (struct list_head *)__cil_tmp114;
  list_add(__cil_tmp115, & cards);
  }
  {
  __cil_tmp116 = 1264 + 296;
  __cil_tmp117 = (unsigned long )cinfo;
  __cil_tmp118 = __cil_tmp117 + __cil_tmp116;
  return (*((int *)__cil_tmp118));
  }
  err_free_irq:
  {
  __cil_tmp119 = (unsigned long )card;
  __cil_tmp120 = __cil_tmp119 + 60;
  __cil_tmp121 = *((unsigned int *)__cil_tmp120);
  __cil_tmp122 = (void *)card;
  free_irq(__cil_tmp121, __cil_tmp122);
  }
  err_free:
  {
  b1_free_card(card);
  }
  err:
  return (retval);
}
}
static char *b1pcmcia_procinfo(struct capi_ctr *ctrl )
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
int b1pcmcia_addcard_b1(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )2;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_addcard_m1(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )3;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_addcard_m2(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )4;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_delcard(unsigned int port , unsigned int irq )
{ struct list_head *l ;
  avmcard *card ;
  struct list_head const *__mptr ;
  struct list_head *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  avmcard *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct list_head *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct avmctrl_info *__cil_tmp24 ;
  struct avmctrl_info *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct capi_ctr *__cil_tmp28 ;
  {
  __cil_tmp6 = & cards;
  l = *((struct list_head **)__cil_tmp6);
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp7 = (unsigned long )(& cards);
    __cil_tmp8 = (unsigned long )l;
    if (__cil_tmp8 != __cil_tmp7) {
    } else {
      goto while_break;
    }
    }
    __mptr = (struct list_head const *)l;
    __cil_tmp9 = (avmcard *)0;
    __cil_tmp10 = (unsigned long )__cil_tmp9;
    __cil_tmp11 = __cil_tmp10 + 2304;
    __cil_tmp12 = (struct list_head *)__cil_tmp11;
    __cil_tmp13 = (unsigned int )__cil_tmp12;
    __cil_tmp14 = (char *)__mptr;
    __cil_tmp15 = __cil_tmp14 - __cil_tmp13;
    card = (avmcard *)__cil_tmp15;
    {
    __cil_tmp16 = (unsigned long )card;
    __cil_tmp17 = __cil_tmp16 + 56;
    __cil_tmp18 = *((unsigned int *)__cil_tmp17);
    if (__cil_tmp18 == port) {
      {
      __cil_tmp19 = (unsigned long )card;
      __cil_tmp20 = __cil_tmp19 + 60;
      __cil_tmp21 = *((unsigned int *)__cil_tmp20);
      if (__cil_tmp21 == irq) {
        {
        __cil_tmp22 = (unsigned long )card;
        __cil_tmp23 = __cil_tmp22 + 2288;
        __cil_tmp24 = *((struct avmctrl_info **)__cil_tmp23);
        __cil_tmp25 = __cil_tmp24 + 0;
        __cil_tmp26 = (unsigned long )__cil_tmp25;
        __cil_tmp27 = __cil_tmp26 + 1264;
        __cil_tmp28 = (struct capi_ctr *)__cil_tmp27;
        b1pcmcia_remove_ctr(__cil_tmp28);
        }
        return (0);
      } else {
      }
      }
    } else {
    }
    }
    l = *((struct list_head **)l);
  }
  while_break: ;
  }
  return (-3);
}
}
extern void *__crc_b1pcmcia_addcard_b1 __attribute__((__weak__)) ;
static unsigned long const __kcrctab_b1pcmcia_addcard_b1 __attribute__((__used__,
__unused__, __section__("___kcrctab+b1pcmcia_addcard_b1"))) = (unsigned long const )((unsigned long )(& __crc_b1pcmcia_addcard_b1));
static char const __kstrtab_b1pcmcia_addcard_b1[20] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'b', (char const )'1', (char const )'p', (char const )'c',
        (char const )'m', (char const )'c', (char const )'i', (char const )'a',
        (char const )'_', (char const )'a', (char const )'d', (char const )'d',
        (char const )'c', (char const )'a', (char const )'r', (char const )'d',
        (char const )'_', (char const )'b', (char const )'1', (char const )'\000'};
static struct kernel_symbol const __ksymtab_b1pcmcia_addcard_b1 __attribute__((__used__,
__unused__, __section__("___ksymtab+b1pcmcia_addcard_b1"))) = {(unsigned long )(& b1pcmcia_addcard_b1), __kstrtab_b1pcmcia_addcard_b1};
extern void *__crc_b1pcmcia_addcard_m1 __attribute__((__weak__)) ;
static unsigned long const __kcrctab_b1pcmcia_addcard_m1 __attribute__((__used__,
__unused__, __section__("___kcrctab+b1pcmcia_addcard_m1"))) = (unsigned long const )((unsigned long )(& __crc_b1pcmcia_addcard_m1));
static char const __kstrtab_b1pcmcia_addcard_m1[20] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'b', (char const )'1', (char const )'p', (char const )'c',
        (char const )'m', (char const )'c', (char const )'i', (char const )'a',
        (char const )'_', (char const )'a', (char const )'d', (char const )'d',
        (char const )'c', (char const )'a', (char const )'r', (char const )'d',
        (char const )'_', (char const )'m', (char const )'1', (char const )'\000'};
static struct kernel_symbol const __ksymtab_b1pcmcia_addcard_m1 __attribute__((__used__,
__unused__, __section__("___ksymtab+b1pcmcia_addcard_m1"))) = {(unsigned long )(& b1pcmcia_addcard_m1), __kstrtab_b1pcmcia_addcard_m1};
extern void *__crc_b1pcmcia_addcard_m2 __attribute__((__weak__)) ;
static unsigned long const __kcrctab_b1pcmcia_addcard_m2 __attribute__((__used__,
__unused__, __section__("___kcrctab+b1pcmcia_addcard_m2"))) = (unsigned long const )((unsigned long )(& __crc_b1pcmcia_addcard_m2));
static char const __kstrtab_b1pcmcia_addcard_m2[20] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'b', (char const )'1', (char const )'p', (char const )'c',
        (char const )'m', (char const )'c', (char const )'i', (char const )'a',
        (char const )'_', (char const )'a', (char const )'d', (char const )'d',
        (char const )'c', (char const )'a', (char const )'r', (char const )'d',
        (char const )'_', (char const )'m', (char const )'2', (char const )'\000'};
static struct kernel_symbol const __ksymtab_b1pcmcia_addcard_m2 __attribute__((__used__,
__unused__, __section__("___ksymtab+b1pcmcia_addcard_m2"))) = {(unsigned long )(& b1pcmcia_addcard_m2), __kstrtab_b1pcmcia_addcard_m2};
extern void *__crc_b1pcmcia_delcard __attribute__((__weak__)) ;
static unsigned long const __kcrctab_b1pcmcia_delcard __attribute__((__used__,
__unused__, __section__("___kcrctab+b1pcmcia_delcard"))) = (unsigned long const )((unsigned long )(& __crc_b1pcmcia_delcard));
static char const __kstrtab_b1pcmcia_delcard[17] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'b', (char const )'1', (char const )'p', (char const )'c',
        (char const )'m', (char const )'c', (char const )'i', (char const )'a',
        (char const )'_', (char const )'d', (char const )'e', (char const )'l',
        (char const )'c', (char const )'a', (char const )'r', (char const )'d',
        (char const )'\000'};
static struct kernel_symbol const __ksymtab_b1pcmcia_delcard __attribute__((__used__,
__unused__, __section__("___ksymtab+b1pcmcia_delcard"))) = {(unsigned long )(& b1pcmcia_delcard), __kstrtab_b1pcmcia_delcard};
static struct capi_driver capi_driver_b1pcmcia = {{(char )'b', (char )'1', (char )'p', (char )'c', (char )'m', (char )'c', (char )'i',
     (char )'a', (char )'\000'}, {(char )'1', (char )'.', (char )'0', (char )'\000'},
    (int (*)(struct capi_driver *driver , capicardparams *data ))0, {(struct list_head *)0,
                                                                     (struct list_head *)0}};
static int b1pcmcia_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int b1pcmcia_init(void)
{ char *p ;
  char rev[32] ;
  char const *__cil_tmp3 ;
  void *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  char *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  char *__cil_tmp10 ;
  char *__cil_tmp11 ;
  char const *__cil_tmp12 ;
  size_t __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  char *__cil_tmp16 ;
  char const *__cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  char *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  char *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  char *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  char *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  char *__cil_tmp39 ;
  char const *__cil_tmp40 ;
  size_t __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  char *__cil_tmp44 ;
  {
  {
  __cil_tmp3 = (char const *)revision;
  p = strchr(__cil_tmp3, ':');
  }
  {
  __cil_tmp4 = (void *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = (unsigned long )p;
  if (__cil_tmp6 != __cil_tmp5) {
    {
    __cil_tmp7 = p + 1;
    if (*__cil_tmp7) {
      {
      __cil_tmp8 = 0 * 1UL;
      __cil_tmp9 = (unsigned long )(rev) + __cil_tmp8;
      __cil_tmp10 = (char *)__cil_tmp9;
      __cil_tmp11 = p + 2;
      __cil_tmp12 = (char const *)__cil_tmp11;
      __cil_tmp13 = (size_t )32;
      strlcpy(__cil_tmp10, __cil_tmp12, __cil_tmp13);
      __cil_tmp14 = 0 * 1UL;
      __cil_tmp15 = (unsigned long )(rev) + __cil_tmp14;
      __cil_tmp16 = (char *)__cil_tmp15;
      __cil_tmp17 = (char const *)__cil_tmp16;
      p = strchr(__cil_tmp17, '$');
      }
      {
      __cil_tmp18 = (void *)0;
      __cil_tmp19 = (unsigned long )__cil_tmp18;
      __cil_tmp20 = (unsigned long )p;
      if (__cil_tmp20 != __cil_tmp19) {
        {
        __cil_tmp21 = 0 * 1UL;
        __cil_tmp22 = (unsigned long )(rev) + __cil_tmp21;
        __cil_tmp23 = (char *)__cil_tmp22;
        __cil_tmp24 = (unsigned long )__cil_tmp23;
        __cil_tmp25 = (unsigned long )p;
        if (__cil_tmp25 > __cil_tmp24) {
          __cil_tmp26 = p - 1;
          *__cil_tmp26 = (char)0;
        } else {
        }
        }
      } else {
      }
      }
    } else {
      {
      __cil_tmp27 = 0 * 1UL;
      __cil_tmp28 = (unsigned long )(rev) + __cil_tmp27;
      __cil_tmp29 = (char *)__cil_tmp28;
      strcpy(__cil_tmp29, "1.0");
      }
    }
    }
  } else {
    {
    __cil_tmp30 = 0 * 1UL;
    __cil_tmp31 = (unsigned long )(rev) + __cil_tmp30;
    __cil_tmp32 = (char *)__cil_tmp31;
    strcpy(__cil_tmp32, "1.0");
    }
  }
  }
  {
  __cil_tmp33 = 0 * 1UL;
  __cil_tmp34 = 32 + __cil_tmp33;
  __cil_tmp35 = (unsigned long )(& capi_driver_b1pcmcia) + __cil_tmp34;
  __cil_tmp36 = (char *)__cil_tmp35;
  __cil_tmp37 = 0 * 1UL;
  __cil_tmp38 = (unsigned long )(rev) + __cil_tmp37;
  __cil_tmp39 = (char *)__cil_tmp38;
  __cil_tmp40 = (char const *)__cil_tmp39;
  __cil_tmp41 = (size_t )32;
  strlcpy(__cil_tmp36, __cil_tmp40, __cil_tmp41);
  register_capi_driver(& capi_driver_b1pcmcia);
  __cil_tmp42 = 0 * 1UL;
  __cil_tmp43 = (unsigned long )(rev) + __cil_tmp42;
  __cil_tmp44 = (char *)__cil_tmp43;
  printk("<6>b1pci: revision %s\n", __cil_tmp44);
  }
  return (0);
}
}
static void b1pcmcia_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void b1pcmcia_exit(void)
{
  {
  {
  unregister_capi_driver(& capi_driver_b1pcmcia);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = b1pcmcia_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  b1pcmcia_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = b1pcmcia_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    {
    goto switch_default;
    if (0) {
      switch_default:
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  while_break: ;
  }
  {
  b1pcmcia_exit();
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
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int attach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int detach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void ldv_initialize() {
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
