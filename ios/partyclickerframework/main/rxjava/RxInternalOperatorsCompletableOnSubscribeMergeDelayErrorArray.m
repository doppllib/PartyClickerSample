//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "RxCompletable.h"
#include "RxCompletableSubscriber.h"
#include "RxInternalOperatorsCompletableOnSubscribeMerge.h"
#include "RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray.h"
#include "RxSubscription.h"
#include "RxSubscriptionsCompositeSubscription.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Queue.h"
#include "java/util/concurrent/ConcurrentLinkedQueue.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

@interface RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 : NSObject < RxCompletableSubscriber > {
 @public
  RxSubscriptionsCompositeSubscription *val$set_;
  id<JavaUtilQueue> val$q_;
  JavaUtilConcurrentAtomicAtomicInteger *val$wip_;
  id<RxCompletableSubscriber> val$s_;
}

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                                           withJavaUtilQueue:(id<JavaUtilQueue>)capture$1
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$2
                                 withRxCompletableSubscriber:(id<RxCompletableSubscriber>)capture$3;

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onCompleted;

- (void)tryTerminate;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1)

__attribute__((unused)) static void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *self, RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3);

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3);

@implementation RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray

- (instancetype)initWithRxCompletableArray:(IOSObjectArray *)sources {
  RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(self, sources);
  return self;
}

- (void)callWithId:(id<RxCompletableSubscriber>)s {
  RxSubscriptionsCompositeSubscription *set = create_RxSubscriptionsCompositeSubscription_init();
  JavaUtilConcurrentAtomicAtomicInteger *wip = create_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(((IOSObjectArray *) nil_chk(sources_))->size_ + 1);
  id<JavaUtilQueue> q = create_JavaUtilConcurrentConcurrentLinkedQueue_init();
  [((id<RxCompletableSubscriber>) nil_chk(s)) onSubscribeWithRxSubscription:set];
  {
    IOSObjectArray *a__ = sources_;
    RxCompletable * const *b__ = a__->buffer_;
    RxCompletable * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      RxCompletable *c = *b__++;
      if ([set isUnsubscribed]) {
        return;
      }
      if (c == nil) {
        [q offerWithId:create_JavaLangNullPointerException_initWithNSString_(@"A completable source is null")];
        [wip decrementAndGet];
        continue;
      }
      [c unsafeSubscribeWithRxCompletableSubscriber:create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(set, q, wip, s)];
    }
  }
  if ([wip decrementAndGet] == 0) {
    if ([q isEmpty]) {
      [s onCompleted];
    }
    else {
      [s onErrorWithNSException:RxInternalOperatorsCompletableOnSubscribeMerge_collectErrorsWithJavaUtilQueue_(q)];
    }
  }
}

- (void)dealloc {
  RELEASE_(sources_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxCompletableArray:);
  methods[1].selector = @selector(callWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", "[LRxCompletable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LRxCompletable;", "call", "LRxCompletableSubscriber;" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray = { "CompletableOnSubscribeMergeDelayErrorArray", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *self, IOSObjectArray *sources) {
  NSObject_init(self);
  JreStrongAssign(&self->sources_, sources);
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray, initWithRxCompletableArray_, sources)
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray, initWithRxCompletableArray_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray)

@implementation RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                                           withJavaUtilQueue:(id<JavaUtilQueue>)capture$1
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$2
                                 withRxCompletableSubscriber:(id<RxCompletableSubscriber>)capture$3 {
  RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d {
  [((RxSubscriptionsCompositeSubscription *) nil_chk(val$set_)) addWithRxSubscription:d];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<JavaUtilQueue>) nil_chk(val$q_)) offerWithId:e];
  [self tryTerminate];
}

- (void)onCompleted {
  [self tryTerminate];
}

- (void)tryTerminate {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(val$wip_)) decrementAndGet] == 0) {
    if ([((id<JavaUtilQueue>) nil_chk(val$q_)) isEmpty]) {
      [((id<RxCompletableSubscriber>) nil_chk(val$s_)) onCompleted];
    }
    else {
      [((id<RxCompletableSubscriber>) nil_chk(val$s_)) onErrorWithNSException:RxInternalOperatorsCompletableOnSubscribeMerge_collectErrorsWithJavaUtilQueue_(val$q_)];
    }
  }
}

- (void)dealloc {
  RELEASE_(val$set_);
  RELEASE_(val$q_);
  RELEASE_(val$wip_);
  RELEASE_(val$s_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSubscriptionsCompositeSubscription:withJavaUtilQueue:withJavaUtilConcurrentAtomicAtomicInteger:withRxCompletableSubscriber:);
  methods[1].selector = @selector(onSubscribeWithRxSubscription:);
  methods[2].selector = @selector(onErrorWithNSException:);
  methods[3].selector = @selector(onCompleted);
  methods[4].selector = @selector(tryTerminate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$set_", "LRxSubscriptionsCompositeSubscription;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$q_", "LJavaUtilQueue;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
    { "val$wip_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$s_", "LRxCompletableSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onSubscribe", "LRxSubscription;", "onError", "LNSException;", "Ljava/util/Queue<Ljava/lang/Throwable;>;", "LRxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8018, 5, 4, 5, -1, 6, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *self, RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3) {
  JreStrongAssign(&self->val$set_, capture$0);
  JreStrongAssign(&self->val$q_, capture$1);
  JreStrongAssign(&self->val$wip_, capture$2);
  JreStrongAssign(&self->val$s_, capture$3);
  NSObject_init(self);
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_, capture$0, capture$1, capture$2, capture$3)
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1 *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletableSubscriber> capture$3) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletableSubscriber_, capture$0, capture$1, capture$2, capture$3)
}
