/* $Id$ */

/* Defined in ml_gobject.h */

#define GObject_val(val) ((GObject*)Pointer_val(val))
value Val_GObject (GObject *);
value Val_GObject_new (GObject *);
#define Val_GAnyObject(val) Val_GObject(G_OBJECT(val))
#define Val_GAnyObject_new(val) Val_GObject_new(G_OBJECT(val))

#define GType_val Int_val
#define Val_GType Val_int

#define GClosure_val(val) ((GClosure*)Pointer_val(val))
value Val_GClosure (GClosure *);

#define GValueptr_val(val) ((GValue*)MLPointer_val(val))
GValue *GValue_val(value);          /* check for NULL pointer */
value Val_GValue_copy(GValue *);    /* copy from the stack */
#define Val_GValue_wrap Val_pointer /* just wrap a pointer */
CAMLprim value ml_g_value_new(void);


/* Macro utilities for export */
/* used in ml_gtk.h for instance */

#ifdef G_DISABLE_CAST_CHECKS
#define check_cast(f,v) f(Pointer_val(v))
#else
#define check_cast(f,v) (Pointer_val(v) == NULL ? NULL : f(Pointer_val(v)))
#endif