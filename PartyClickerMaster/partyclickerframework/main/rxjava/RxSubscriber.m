//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxInternalUtilSubscriptionList.h"
#include "RxProducer.h"
#include "RxSubscriber.h"
#include "RxSubscription.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface RxSubscriber () {
 @public
  RxInternalUtilSubscriptionList *subscriptions_;
  RxSubscriber *subscriber_;
  id<RxProducer> producer_;
  jlong requested_;
}

- (void)addToRequestedWithLong:(jlong)n;

@end

J2OBJC_FIELD_SETTER(RxSubscriber, subscriptions_, RxInternalUtilSubscriptionList *)
J2OBJC_FIELD_SETTER(RxSubscriber, subscriber_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxSubscriber, producer_, id<RxProducer>)

inline jlong RxSubscriber_get_NOT_SET();
#define RxSubscriber_NOT_SET ((jlong) 0x8000000000000000LL)
J2OBJC_STATIC_FIELD_CONSTANT(RxSubscriber, NOT_SET, jlong)

__attribute__((unused)) static void RxSubscriber_addToRequestedWithLong_(RxSubscriber *self, jlong n);

@implementation RxSubscriber

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxSubscriber_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithRxSubscriber:(RxSubscriber *)subscriber {
  RxSubscriber_initWithRxSubscriber_(self, subscriber);
  return self;
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)subscriber
                         withBoolean:(jboolean)shareSubscriptions {
  RxSubscriber_initWithRxSubscriber_withBoolean_(self, subscriber, shareSubscriptions);
  return self;
}

- (void)addWithRxSubscription:(id<RxSubscription>)s {
  [((RxInternalUtilSubscriptionList *) nil_chk(subscriptions_)) addWithRxSubscription:s];
}

- (void)unsubscribe {
  [((RxInternalUtilSubscriptionList *) nil_chk(subscriptions_)) unsubscribe];
}

- (jboolean)isUnsubscribed {
  return [((RxInternalUtilSubscriptionList *) nil_chk(subscriptions_)) isUnsubscribed];
}

- (void)onStart {
}

- (void)requestWithLong:(jlong)n {
  if (n < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"number requested cannot be negative: ", n));
  }
  id<RxProducer> producerToRequestFrom;
  @synchronized(self) {
    if (producer_ != nil) {
      producerToRequestFrom = producer_;
    }
    else {
      RxSubscriber_addToRequestedWithLong_(self, n);
      return;
    }
  }
  [producerToRequestFrom requestWithLong:n];
}

- (void)addToRequestedWithLong:(jlong)n {
  RxSubscriber_addToRequestedWithLong_(self, n);
}

- (void)setProducerWithRxProducer:(id<RxProducer>)p {
  jlong toRequest;
  jboolean passToSubscriber = false;
  @synchronized(self) {
    toRequest = requested_;
    JreStrongAssign(&producer_, p);
    if (subscriber_ != nil) {
      if (toRequest == RxSubscriber_NOT_SET) {
        passToSubscriber = true;
      }
    }
  }
  if (passToSubscriber) {
    [((RxSubscriber *) nil_chk(subscriber_)) setProducerWithRxProducer:producer_];
  }
  else {
    if (toRequest == RxSubscriber_NOT_SET) {
      [((id<RxProducer>) nil_chk(producer_)) requestWithLong:JavaLangLong_MAX_VALUE];
    }
    else {
      [((id<RxProducer>) nil_chk(producer_)) requestWithLong:toRequest];
    }
  }
}

- (void)dealloc {
  RELEASE_(subscriptions_);
  RELEASE_(subscriber_);
  RELEASE_(producer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x11, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x14, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithRxSubscriber:);
  methods[2].selector = @selector(initWithRxSubscriber:withBoolean:);
  methods[3].selector = @selector(addWithRxSubscription:);
  methods[4].selector = @selector(unsubscribe);
  methods[5].selector = @selector(isUnsubscribed);
  methods[6].selector = @selector(onStart);
  methods[7].selector = @selector(requestWithLong:);
  methods[8].selector = @selector(addToRequestedWithLong:);
  methods[9].selector = @selector(setProducerWithRxProducer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NOT_SET", "J", .constantValue.asLong = RxSubscriber_NOT_SET, 0x1a, -1, -1, -1, -1 },
    { "subscriptions_", "LRxInternalUtilSubscriptionList;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "producer_", "LRxProducer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requested_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<*>;)V", "LRxSubscriber;Z", "(Lrx/Subscriber<*>;Z)V", "add", "LRxSubscription;", "request", "J", "addToRequested", "setProducer", "LRxProducer;", "Lrx/Subscriber<*>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observer<TT;>;Lrx/Subscription;" };
  static const J2ObjcClassInfo _RxSubscriber = { "Subscriber", "rx", ptrTable, methods, fields, 7, 0x401, 10, 5, -1, -1, -1, 12, -1 };
  return &_RxSubscriber;
}

@end

void RxSubscriber_init(RxSubscriber *self) {
  RxSubscriber_initWithRxSubscriber_withBoolean_(self, nil, false);
}

void RxSubscriber_initWithRxSubscriber_(RxSubscriber *self, RxSubscriber *subscriber) {
  RxSubscriber_initWithRxSubscriber_withBoolean_(self, subscriber, true);
}

void RxSubscriber_initWithRxSubscriber_withBoolean_(RxSubscriber *self, RxSubscriber *subscriber, jboolean shareSubscriptions) {
  NSObject_init(self);
  self->requested_ = RxSubscriber_NOT_SET;
  JreStrongAssign(&self->subscriber_, subscriber);
  JreStrongAssign(&self->subscriptions_, shareSubscriptions && subscriber != nil ? subscriber->subscriptions_ : create_RxInternalUtilSubscriptionList_init());
}

void RxSubscriber_addToRequestedWithLong_(RxSubscriber *self, jlong n) {
  if (self->requested_ == RxSubscriber_NOT_SET) {
    self->requested_ = n;
  }
  else {
    jlong total = self->requested_ + n;
    if (total < 0) {
      self->requested_ = JavaLangLong_MAX_VALUE;
    }
    else {
      self->requested_ = total;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubscriber)