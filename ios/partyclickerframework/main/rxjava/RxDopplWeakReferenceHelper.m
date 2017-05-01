//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxDopplWeakReferenceHelper.h"
#include "com/google/j2objc/WeakProxy.h"

@implementation RxDopplWeakReferenceHelper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxDopplWeakReferenceHelper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id)wrapWeakProxyIfSameWithId:(id)target
                         withId:(id)compare {
  return RxDopplWeakReferenceHelper_wrapWeakProxyIfSameWithId_withId_(target, compare);
}

+ (id)wrapWeakProxyWithId:(id)target {
  return RxDopplWeakReferenceHelper_wrapWeakProxyWithId_(target);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x9, 3, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(wrapWeakProxyIfSameWithId:withId:);
  methods[2].selector = @selector(wrapWeakProxyWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "wrapWeakProxyIfSame", "LNSObject;LNSObject;", "<T:Ljava/lang/Object;>(TT;Ljava/lang/Object;)TT;", "wrapWeakProxy", "LNSObject;", "<T:Ljava/lang/Object;>(TT;)TT;" };
  static const J2ObjcClassInfo _RxDopplWeakReferenceHelper = { "WeakReferenceHelper", "rx.doppl", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_RxDopplWeakReferenceHelper;
}

@end

void RxDopplWeakReferenceHelper_init(RxDopplWeakReferenceHelper *self) {
  NSObject_init(self);
}

RxDopplWeakReferenceHelper *new_RxDopplWeakReferenceHelper_init() {
  J2OBJC_NEW_IMPL(RxDopplWeakReferenceHelper, init)
}

RxDopplWeakReferenceHelper *create_RxDopplWeakReferenceHelper_init() {
  J2OBJC_CREATE_IMPL(RxDopplWeakReferenceHelper, init)
}

id RxDopplWeakReferenceHelper_wrapWeakProxyIfSameWithId_withId_(id target, id compare) {
  RxDopplWeakReferenceHelper_initialize();
  {
    return ComGoogleJ2objcWeakProxy_forObjectWithId_(target);
  }
}

id RxDopplWeakReferenceHelper_wrapWeakProxyWithId_(id target) {
  RxDopplWeakReferenceHelper_initialize();
  {
    return ComGoogleJ2objcWeakProxy_forObjectWithId_(target);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxDopplWeakReferenceHelper)
