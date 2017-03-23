//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxFunctionsAction0.h"
#include "RxInternalSchedulersImmediateScheduler.h"
#include "RxInternalSchedulersSleepingAction.h"
#include "RxScheduler.h"
#include "RxSubscription.h"
#include "RxSubscriptionsBooleanSubscription.h"
#include "RxSubscriptionsSubscriptions.h"
#include "java/util/concurrent/TimeUnit.h"

@interface RxInternalSchedulersImmediateScheduler ()

- (instancetype)init;

@end

__attribute__((unused)) static void RxInternalSchedulersImmediateScheduler_init(RxInternalSchedulersImmediateScheduler *self);

__attribute__((unused)) static RxInternalSchedulersImmediateScheduler *new_RxInternalSchedulersImmediateScheduler_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalSchedulersImmediateScheduler *create_RxInternalSchedulersImmediateScheduler_init();

@interface RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler () {
 @public
  RxInternalSchedulersImmediateScheduler *this$0_;
}

@end

J2OBJC_INITIALIZED_DEFN(RxInternalSchedulersImmediateScheduler)

RxInternalSchedulersImmediateScheduler *RxInternalSchedulersImmediateScheduler_INSTANCE;

@implementation RxInternalSchedulersImmediateScheduler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalSchedulersImmediateScheduler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (RxScheduler_Worker *)createWorker {
  return create_RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler_initWithRxInternalSchedulersImmediateScheduler_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRxScheduler_Worker;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createWorker);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LRxInternalSchedulersImmediateScheduler;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &RxInternalSchedulersImmediateScheduler_INSTANCE, "LRxInternalSchedulersImmediateScheduler_InnerImmediateScheduler;" };
  static const J2ObjcClassInfo _RxInternalSchedulersImmediateScheduler = { "ImmediateScheduler", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 1, -1, -1, -1 };
  return &_RxInternalSchedulersImmediateScheduler;
}

+ (void)initialize {
  if (self == [RxInternalSchedulersImmediateScheduler class]) {
    JreStrongAssignAndConsume(&RxInternalSchedulersImmediateScheduler_INSTANCE, new_RxInternalSchedulersImmediateScheduler_init());
    J2OBJC_SET_INITIALIZED(RxInternalSchedulersImmediateScheduler)
  }
}

@end

void RxInternalSchedulersImmediateScheduler_init(RxInternalSchedulersImmediateScheduler *self) {
  RxScheduler_init(self);
}

RxInternalSchedulersImmediateScheduler *new_RxInternalSchedulersImmediateScheduler_init() {
  J2OBJC_NEW_IMPL(RxInternalSchedulersImmediateScheduler, init)
}

RxInternalSchedulersImmediateScheduler *create_RxInternalSchedulersImmediateScheduler_init() {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersImmediateScheduler, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersImmediateScheduler)

@implementation RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler

- (instancetype)initWithRxInternalSchedulersImmediateScheduler:(RxInternalSchedulersImmediateScheduler *)outer$ {
  RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler_initWithRxInternalSchedulersImmediateScheduler_(self, outer$);
  return self;
}

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action
                                            withLong:(jlong)delayTime
                      withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  jlong execTime = [this$0_ now] + [((JavaUtilConcurrentTimeUnit *) nil_chk(unit)) toMillisWithLong:delayTime];
  return [self scheduleWithRxFunctionsAction0:create_RxInternalSchedulersSleepingAction_initWithRxFunctionsAction0_withRxScheduler_Worker_withLong_(action, self, execTime)];
}

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action {
  [((id<RxFunctionsAction0>) nil_chk(action)) call];
  return RxSubscriptionsSubscriptions_unsubscribed();
}

- (void)unsubscribe {
  [((RxSubscriptionsBooleanSubscription *) nil_chk(innerSubscription_)) unsubscribe];
}

- (jboolean)isUnsubscribed {
  return [((RxSubscriptionsBooleanSubscription *) nil_chk(innerSubscription_)) isUnsubscribed];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(innerSubscription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRxSubscription;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LRxSubscription;", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxInternalSchedulersImmediateScheduler:);
  methods[1].selector = @selector(scheduleWithRxFunctionsAction0:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[2].selector = @selector(scheduleWithRxFunctionsAction0:);
  methods[3].selector = @selector(unsubscribe);
  methods[4].selector = @selector(isUnsubscribed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalSchedulersImmediateScheduler;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "innerSubscription_", "LRxSubscriptionsBooleanSubscription;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "schedule", "LRxFunctionsAction0;JLJavaUtilConcurrentTimeUnit;", "LRxFunctionsAction0;", "LRxInternalSchedulersImmediateScheduler;" };
  static const J2ObjcClassInfo _RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler = { "InnerImmediateScheduler", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x10, 5, 2, 3, -1, -1, -1, -1 };
  return &_RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler;
}

@end

void RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler_initWithRxInternalSchedulersImmediateScheduler_(RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler *self, RxInternalSchedulersImmediateScheduler *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  RxScheduler_Worker_init(self);
  JreStrongAssignAndConsume(&self->innerSubscription_, new_RxSubscriptionsBooleanSubscription_init());
}

RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler *new_RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler_initWithRxInternalSchedulersImmediateScheduler_(RxInternalSchedulersImmediateScheduler *outer$) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler, initWithRxInternalSchedulersImmediateScheduler_, outer$)
}

RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler *create_RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler_initWithRxInternalSchedulersImmediateScheduler_(RxInternalSchedulersImmediateScheduler *outer$) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler, initWithRxInternalSchedulersImmediateScheduler_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersImmediateScheduler_InnerImmediateScheduler)