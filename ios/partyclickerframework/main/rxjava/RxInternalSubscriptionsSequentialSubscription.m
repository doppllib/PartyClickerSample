//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxInternalSubscriptionsSequentialSubscription.h"
#include "RxInternalSubscriptionsUnsubscribed.h"
#include "RxSubscription.h"
#include "RxSubscriptionsSubscriptions.h"
#include "java/util/concurrent/atomic/AtomicReference.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

inline jlong RxInternalSubscriptionsSequentialSubscription_get_serialVersionUID();
#define RxInternalSubscriptionsSequentialSubscription_serialVersionUID 995205034283130269LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalSubscriptionsSequentialSubscription, serialVersionUID, jlong)

@implementation RxInternalSubscriptionsSequentialSubscription

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalSubscriptionsSequentialSubscription_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithRxSubscription:(id<RxSubscription>)initial {
  RxInternalSubscriptionsSequentialSubscription_initWithRxSubscription_(self, initial);
  return self;
}

- (id<RxSubscription>)current {
  id<RxSubscription> current = [super get];
  if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
    return RxSubscriptionsSubscriptions_unsubscribed();
  }
  return current;
}

- (jboolean)updateWithRxSubscription:(id<RxSubscription>)next {
  for (; ; ) {
    id<RxSubscription> current = [self get];
    if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
      if (next != nil) {
        [next unsubscribe];
      }
      return false;
    }
    if ([self compareAndSetWithId:current withId:next]) {
      if (current != nil) {
        [current unsubscribe];
      }
      return true;
    }
  }
}

- (jboolean)replaceWithRxSubscription:(id<RxSubscription>)next {
  for (; ; ) {
    id<RxSubscription> current = [self get];
    if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
      if (next != nil) {
        [next unsubscribe];
      }
      return false;
    }
    if ([self compareAndSetWithId:current withId:next]) {
      return true;
    }
  }
}

- (jboolean)updateWeakWithRxSubscription:(id<RxSubscription>)next {
  id<RxSubscription> current = [self get];
  if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
    if (next != nil) {
      [next unsubscribe];
    }
    return false;
  }
  if ([self compareAndSetWithId:current withId:next]) {
    return true;
  }
  current = [self get];
  if (next != nil) {
    [next unsubscribe];
  }
  return current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE);
}

- (jboolean)replaceWeakWithRxSubscription:(id<RxSubscription>)next {
  id<RxSubscription> current = [self get];
  if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
    if (next != nil) {
      [next unsubscribe];
    }
    return false;
  }
  if ([self compareAndSetWithId:current withId:next]) {
    return true;
  }
  current = [self get];
  if (current == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
    if (next != nil) {
      [next unsubscribe];
    }
    return false;
  }
  return true;
}

- (void)unsubscribe {
  id<RxSubscription> current = [self get];
  if (current != JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
    current = [self getAndSetWithId:JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)];
    if (current != nil && current != JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE)) {
      [current unsubscribe];
    }
  }
}

- (jboolean)isUnsubscribed {
  return [self get] == JreLoadEnum(RxInternalSubscriptionsUnsubscribed, INSTANCE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LRxSubscription;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithRxSubscription:);
  methods[2].selector = @selector(current);
  methods[3].selector = @selector(updateWithRxSubscription:);
  methods[4].selector = @selector(replaceWithRxSubscription:);
  methods[5].selector = @selector(updateWeakWithRxSubscription:);
  methods[6].selector = @selector(replaceWeakWithRxSubscription:);
  methods[7].selector = @selector(unsubscribe);
  methods[8].selector = @selector(isUnsubscribed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalSubscriptionsSequentialSubscription_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscription;", "update", "replace", "updateWeak", "replaceWeak", "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;Lrx/Subscription;" };
  static const J2ObjcClassInfo _RxInternalSubscriptionsSequentialSubscription = { "SequentialSubscription", "rx.internal.subscriptions", ptrTable, methods, fields, 7, 0x11, 9, 1, -1, -1, -1, 5, -1 };
  return &_RxInternalSubscriptionsSequentialSubscription;
}

@end

void RxInternalSubscriptionsSequentialSubscription_init(RxInternalSubscriptionsSequentialSubscription *self) {
  JavaUtilConcurrentAtomicAtomicReference_init(self);
}

RxInternalSubscriptionsSequentialSubscription *new_RxInternalSubscriptionsSequentialSubscription_init() {
  J2OBJC_NEW_IMPL(RxInternalSubscriptionsSequentialSubscription, init)
}

RxInternalSubscriptionsSequentialSubscription *create_RxInternalSubscriptionsSequentialSubscription_init() {
  J2OBJC_CREATE_IMPL(RxInternalSubscriptionsSequentialSubscription, init)
}

void RxInternalSubscriptionsSequentialSubscription_initWithRxSubscription_(RxInternalSubscriptionsSequentialSubscription *self, id<RxSubscription> initial) {
  JavaUtilConcurrentAtomicAtomicReference_init(self);
  [self lazySetWithId:initial];
}

RxInternalSubscriptionsSequentialSubscription *new_RxInternalSubscriptionsSequentialSubscription_initWithRxSubscription_(id<RxSubscription> initial) {
  J2OBJC_NEW_IMPL(RxInternalSubscriptionsSequentialSubscription, initWithRxSubscription_, initial)
}

RxInternalSubscriptionsSequentialSubscription *create_RxInternalSubscriptionsSequentialSubscription_initWithRxSubscription_(id<RxSubscription> initial) {
  J2OBJC_CREATE_IMPL(RxInternalSubscriptionsSequentialSubscription, initWithRxSubscription_, initial)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSubscriptionsSequentialSubscription)