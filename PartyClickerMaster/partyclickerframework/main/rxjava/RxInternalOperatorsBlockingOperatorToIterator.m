//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxExceptionsExceptions.h"
#include "RxInternalOperatorsBlockingOperatorToIterator.h"
#include "RxInternalUtilRxRingBuffer.h"
#include "RxNotification.h"
#include "RxObservable.h"
#include "RxSubscriber.h"
#include "RxSubscription.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/concurrent/BlockingQueue.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "java/util/function/Consumer.h"

@interface RxInternalOperatorsBlockingOperatorToIterator ()

- (instancetype)init;

@end

__attribute__((unused)) static void RxInternalOperatorsBlockingOperatorToIterator_init(RxInternalOperatorsBlockingOperatorToIterator *self);

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToIterator *new_RxInternalOperatorsBlockingOperatorToIterator_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToIterator *create_RxInternalOperatorsBlockingOperatorToIterator_init();

@interface RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator () {
 @public
  id<JavaUtilConcurrentBlockingQueue> notifications_;
  RxNotification *buf_;
  jint received_;
}

- (RxNotification *)take;

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator, notifications_, id<JavaUtilConcurrentBlockingQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator, buf_, RxNotification *)

__attribute__((unused)) static RxNotification *RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_take(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *self);

@implementation RxInternalOperatorsBlockingOperatorToIterator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsBlockingOperatorToIterator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilIterator>)toIteratorWithRxObservable:(RxObservable *)source {
  return RxInternalOperatorsBlockingOperatorToIterator_toIteratorWithRxObservable_(source);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x9, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toIteratorWithRxObservable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toIterator", "LRxObservable;", "<T:Ljava/lang/Object;>(Lrx/Observable<+TT;>;)Ljava/util/Iterator<TT;>;", "LRxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator;" };
  static const J2ObjcClassInfo _RxInternalOperatorsBlockingOperatorToIterator = { "BlockingOperatorToIterator", "rx.internal.operators", ptrTable, methods, NULL, 7, 0x11, 2, 0, -1, 3, -1, -1, -1 };
  return &_RxInternalOperatorsBlockingOperatorToIterator;
}

@end

void RxInternalOperatorsBlockingOperatorToIterator_init(RxInternalOperatorsBlockingOperatorToIterator *self) {
  NSObject_init(self);
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"No instances!");
}

RxInternalOperatorsBlockingOperatorToIterator *new_RxInternalOperatorsBlockingOperatorToIterator_init() {
  J2OBJC_NEW_IMPL(RxInternalOperatorsBlockingOperatorToIterator, init)
}

RxInternalOperatorsBlockingOperatorToIterator *create_RxInternalOperatorsBlockingOperatorToIterator_init() {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsBlockingOperatorToIterator, init)
}

id<JavaUtilIterator> RxInternalOperatorsBlockingOperatorToIterator_toIteratorWithRxObservable_(RxObservable *source) {
  RxInternalOperatorsBlockingOperatorToIterator_initialize();
  RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *subscriber = create_RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_init();
  [((RxObservable *) nil_chk([((RxObservable *) nil_chk((source))) materialize])) subscribeWithRxSubscriber:subscriber];
  return subscriber;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsBlockingOperatorToIterator)

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator)

jint RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_LIMIT;

@implementation RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onStart {
  [self requestWithLong:JreLoadStatic(RxInternalUtilRxRingBuffer, SIZE)];
}

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(notifications_)) offerWithId:RxNotification_createOnErrorWithNSException_(e)];
}

- (void)onNextWithId:(RxNotification *)args {
  [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(notifications_)) offerWithId:args];
}

- (jboolean)hasNext {
  if (buf_ == nil) {
    JreStrongAssign(&buf_, RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_take(self));
    received_++;
    if (received_ >= RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_LIMIT) {
      [self requestWithLong:received_];
      received_ = 0;
    }
  }
  if ([((RxNotification *) nil_chk(buf_)) isOnError]) {
    @throw RxExceptionsExceptions_propagateWithNSException_([((RxNotification *) nil_chk(buf_)) getThrowable]);
  }
  return ![((RxNotification *) nil_chk(buf_)) isOnCompleted];
}

- (id)next {
  if ([self hasNext]) {
    id result = [((RxNotification *) nil_chk(buf_)) getValue];
    JreStrongAssign(&buf_, nil);
    return result;
  }
  @throw create_JavaUtilNoSuchElementException_init();
}

- (RxNotification *)take {
  return RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_take(self);
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"Read-only iterator");
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(notifications_);
  RELEASE_(buf_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LRxNotification;", 0x2, -1, -1, -1, 6, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onStart);
  methods[2].selector = @selector(onCompleted);
  methods[3].selector = @selector(onErrorWithNSException:);
  methods[4].selector = @selector(onNextWithId:);
  methods[5].selector = @selector(hasNext);
  methods[6].selector = @selector(next);
  methods[7].selector = @selector(take);
  methods[8].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LIMIT", "I", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
    { "notifications_", "LJavaUtilConcurrentBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "buf_", "LRxNotification;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
    { "received_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LRxNotification;", "(Lrx/Notification<+TT;>;)V", "()TT;", "()Lrx/Notification<+TT;>;", &RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_LIMIT, "Ljava/util/concurrent/BlockingQueue<Lrx/Notification<+TT;>;>;", "Lrx/Notification<+TT;>;", "LRxInternalOperatorsBlockingOperatorToIterator;", "<T:Ljava/lang/Object;>Lrx/Subscriber<Lrx/Notification<+TT;>;>;Ljava/util/Iterator<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator = { "SubscriberIterator", "rx.internal.operators", ptrTable, methods, fields, 7, 0x19, 9, 4, 10, -1, -1, 11, -1 };
  return &_RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator;
}

+ (void)initialize {
  if (self == [RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator class]) {
    RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_LIMIT = 3 * JreLoadStatic(RxInternalUtilRxRingBuffer, SIZE) / 4;
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator)
  }
}

@end

void RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_init(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *self) {
  RxSubscriber_init(self);
  JreStrongAssignAndConsume(&self->notifications_, new_JavaUtilConcurrentLinkedBlockingQueue_init());
}

RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *new_RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_init() {
  J2OBJC_NEW_IMPL(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator, init)
}

RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *create_RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_init() {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator, init)
}

RxNotification *RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator_take(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator *self) {
  @try {
    RxNotification *poll = [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(self->notifications_)) poll];
    if (poll != nil) {
      return poll;
    }
    return [self->notifications_ take];
  }
  @catch (JavaLangInterruptedException *e) {
    [self unsubscribe];
    @throw RxExceptionsExceptions_propagateWithNSException_(e);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsBlockingOperatorToIterator_SubscriberIterator)