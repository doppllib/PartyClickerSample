//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther.h"
#include "RxObservable.h"
#include "RxPluginsRxJavaHooks.h"
#include "RxSingle.h"
#include "RxSingleSubscriber.h"
#include "RxSubscriber.h"
#include "RxSubscription.h"
#include "RxSubscriptionsSerialSubscription.h"

@interface RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 : RxSingleSubscriber {
 @public
  RxSingleSubscriber *val$subscriber_;
}

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)capture$0;

- (void)onSuccessWithId:(id)value;

- (void)onErrorWithNSException:(NSException *)error;
#define onErrorWithJavaLangThrowable onErrorWithNSException

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1)

__attribute__((unused)) static void RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *self, RxSingleSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *new_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxSingleSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxSingleSubscriber *capture$0);

@interface RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 : RxSubscriber {
 @public
  RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *this$0_;
  RxSingleSubscriber *val$child_;
  RxSubscriptionsSerialSubscription *val$serial_;
  jboolean done_;
}

- (instancetype)initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther:(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *)outer$
                                                            withRxSingleSubscriber:(RxSingleSubscriber *)capture$0
                                             withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)capture$1;

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onCompleted;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2)

__attribute__((unused)) static void RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *self, RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1);

__attribute__((unused)) static RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *new_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1);

@implementation RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther

- (instancetype)initWithRxSingle:(RxSingle *)main
                withRxObservable:(RxObservable *)other {
  RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_initWithRxSingle_withRxObservable_(self, main, other);
  return self;
}

- (void)callWithId:(RxSingleSubscriber *)subscriber {
  RxSingleSubscriber *child = create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(subscriber);
  RxSubscriptionsSerialSubscription *serial = create_RxSubscriptionsSerialSubscription_init();
  [((RxSingleSubscriber *) nil_chk(subscriber)) addWithRxSubscription:serial];
  RxSubscriber *otherSubscriber = create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(self, child, serial);
  [serial setWithRxSubscription:otherSubscriber];
  [((RxObservable *) nil_chk((other_))) subscribeWithRxSubscriber:otherSubscriber];
}

- (void)dealloc {
  RELEASE_(main_);
  RELEASE_(other_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSingle:withRxObservable:);
  methods[1].selector = @selector(callWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "main_", "LRxSingle;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "other_", "LRxObservable;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LRxSingle;LRxObservable;", "(Lrx/Single<+TT;>;Lrx/Observable<*>;)V", "call", "LRxSingleSubscriber;", "(Lrx/SingleSubscriber<-TT;>;)V", "Lrx/Single<+TT;>;", "Lrx/Observable<*>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Single$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther = { "SingleOnSubscribeDelaySubscriptionOther", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, 7, -1 };
  return &_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther;
}

@end

void RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_initWithRxSingle_withRxObservable_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *self, RxSingle *main, RxObservable *other) {
  NSObject_init(self);
  JreStrongAssign(&self->main_, main);
  JreStrongAssign(&self->other_, other);
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *new_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_initWithRxSingle_withRxObservable_(RxSingle *main, RxObservable *other) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther, initWithRxSingle_withRxObservable_, main, other)
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_initWithRxSingle_withRxObservable_(RxSingle *main, RxObservable *other) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther, initWithRxSingle_withRxObservable_, main, other)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther)

@implementation RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)capture$0 {
  RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(self, capture$0);
  return self;
}

- (void)onSuccessWithId:(id)value {
  [((RxSingleSubscriber *) nil_chk(val$subscriber_)) onSuccessWithId:value];
}

- (void)onErrorWithNSException:(NSException *)error {
  [((RxSingleSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:error];
}

- (void)dealloc {
  RELEASE_(val$subscriber_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSingleSubscriber:);
  methods[1].selector = @selector(onSuccessWithId:);
  methods[2].selector = @selector(onErrorWithNSException:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$subscriber_", "LRxSingleSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "onSuccess", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/SingleSubscriber<-TT;>;", "LRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther;", "callWithId:", "Lrx/SingleSubscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8018, 3, 1, 6, -1, 7, 8, -1 };
  return &_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1;
}

@end

void RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *self, RxSingleSubscriber *capture$0) {
  JreStrongAssign(&self->val$subscriber_, capture$0);
  RxSingleSubscriber_init(self);
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *new_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxSingleSubscriber *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1, initWithRxSingleSubscriber_, capture$0)
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1 *create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1_initWithRxSingleSubscriber_(RxSingleSubscriber *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_1, initWithRxSingleSubscriber_, capture$0)
}

@implementation RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2

- (instancetype)initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther:(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *)outer$
                                                            withRxSingleSubscriber:(RxSingleSubscriber *)capture$0
                                             withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)capture$1 {
  RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)onNextWithId:(id)t {
  [self onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  if (done_) {
    RxPluginsRxJavaHooks_onErrorWithNSException_(e);
    return;
  }
  done_ = true;
  [((RxSingleSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  if (done_) {
    return;
  }
  done_ = true;
  [((RxSubscriptionsSerialSubscription *) nil_chk(val$serial_)) setWithRxSubscription:val$child_];
  [((RxSingle *) nil_chk(this$0_->main_)) subscribeWithRxSingleSubscriber:val$child_];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$child_);
  RELEASE_(val$serial_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther:withRxSingleSubscriber:withRxSubscriptionsSerialSubscription:);
  methods[1].selector = @selector(onNextWithId:);
  methods[2].selector = @selector(onErrorWithNSException:);
  methods[3].selector = @selector(onCompleted);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
    { "val$child_", "LRxSingleSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
    { "val$serial_", "LRxSubscriptionsSerialSubscription;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "onError", "LNSException;", "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;", "Lrx/SingleSubscriber<TT;>;", "LRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther;", "callWithId:", "Lrx/Subscriber<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8018, 4, 4, 6, -1, 7, 8, -1 };
  return &_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2;
}

@end

void RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *self, RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$child_, capture$0);
  JreStrongAssign(&self->val$serial_, capture$1);
  RxSubscriber_init(self);
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *new_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2, initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_, outer$, capture$0, capture$1)
}

RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2 *create_RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2_initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther *outer$, RxSingleSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_2, initWithRxInternalOperatorsSingleOnSubscribeDelaySubscriptionOther_withRxSingleSubscriber_withRxSubscriptionsSerialSubscription_, outer$, capture$0, capture$1)
}
