//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxFunctionsAction1.h"
#include "RxInternalUtilActionNotificationObserver.h"
#include "RxNotification.h"

@implementation RxInternalUtilActionNotificationObserver

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNotification {
  RxInternalUtilActionNotificationObserver_initWithRxFunctionsAction1_(self, onNotification);
  return self;
}

- (void)onNextWithId:(id)t {
  [((id<RxFunctionsAction1>) nil_chk(onNotification_)) callWithId:RxNotification_createOnNextWithId_(t)];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<RxFunctionsAction1>) nil_chk(onNotification_)) callWithId:RxNotification_createOnErrorWithNSException_(e)];
}

- (void)onCompleted {
  [((id<RxFunctionsAction1>) nil_chk(onNotification_)) callWithId:RxNotification_createOnCompleted()];
}

- (void)dealloc {
  RELEASE_(onNotification_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxFunctionsAction1:);
  methods[1].selector = @selector(onNextWithId:);
  methods[2].selector = @selector(onErrorWithNSException:);
  methods[3].selector = @selector(onCompleted);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "onNotification_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsAction1;", "(Lrx/functions/Action1<Lrx/Notification<-TT;>;>;)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxInternalUtilActionNotificationObserver = { "ActionNotificationObserver", "rx.internal.util", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, 8, -1 };
  return &_RxInternalUtilActionNotificationObserver;
}

@end

void RxInternalUtilActionNotificationObserver_initWithRxFunctionsAction1_(RxInternalUtilActionNotificationObserver *self, id<RxFunctionsAction1> onNotification) {
  NSObject_init(self);
  JreStrongAssign(&self->onNotification_, onNotification);
}

RxInternalUtilActionNotificationObserver *new_RxInternalUtilActionNotificationObserver_initWithRxFunctionsAction1_(id<RxFunctionsAction1> onNotification) {
  J2OBJC_NEW_IMPL(RxInternalUtilActionNotificationObserver, initWithRxFunctionsAction1_, onNotification)
}

RxInternalUtilActionNotificationObserver *create_RxInternalUtilActionNotificationObserver_initWithRxFunctionsAction1_(id<RxFunctionsAction1> onNotification) {
  J2OBJC_CREATE_IMPL(RxInternalUtilActionNotificationObserver, initWithRxFunctionsAction1_, onNotification)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilActionNotificationObserver)
