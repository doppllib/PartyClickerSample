//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "RxInternalOperatorsBackpressureUtils.h"
#include "RxInternalOperatorsOnSubscribeFromArray.h"
#include "RxSubscriber.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/util/concurrent/atomic/AtomicLong.h"

inline jlong RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_get_serialVersionUID();
#define RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_serialVersionUID 3534218984725836979LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer, serialVersionUID, jlong)

@implementation RxInternalOperatorsOnSubscribeFromArray

- (instancetype)initWithNSObjectArray:(IOSObjectArray *)array {
  RxInternalOperatorsOnSubscribeFromArray_initWithNSObjectArray_(self, array);
  return self;
}

- (void)callWithId:(RxSubscriber *)child {
  [((RxSubscriber *) nil_chk(child)) setProducerWithRxProducer:create_RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_initWithRxSubscriber_withNSObjectArray_(child, array_)];
}

- (void)dealloc {
  RELEASE_(array_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSObjectArray:);
  methods[1].selector = @selector(callWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "array_", "[LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "[LNSObject;", "([TT;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "[TT;", "LRxInternalOperatorsOnSubscribeFromArray_FromArrayProducer;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeFromArray = { "OnSubscribeFromArray", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 6, -1, 7, -1 };
  return &_RxInternalOperatorsOnSubscribeFromArray;
}

@end

void RxInternalOperatorsOnSubscribeFromArray_initWithNSObjectArray_(RxInternalOperatorsOnSubscribeFromArray *self, IOSObjectArray *array) {
  NSObject_init(self);
  JreStrongAssign(&self->array_, array);
}

RxInternalOperatorsOnSubscribeFromArray *new_RxInternalOperatorsOnSubscribeFromArray_initWithNSObjectArray_(IOSObjectArray *array) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeFromArray, initWithNSObjectArray_, array)
}

RxInternalOperatorsOnSubscribeFromArray *create_RxInternalOperatorsOnSubscribeFromArray_initWithNSObjectArray_(IOSObjectArray *array) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeFromArray, initWithNSObjectArray_, array)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeFromArray)

@implementation RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                   withNSObjectArray:(IOSObjectArray *)array {
  RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_initWithRxSubscriber_withNSObjectArray_(self, child, array);
  return self;
}

- (void)requestWithLong:(jlong)n {
  if (n < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"n >= 0 required but it was ", n));
  }
  if (n == JavaLangLong_MAX_VALUE) {
    if (RxInternalOperatorsBackpressureUtils_getAndAddRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_(self, n) == 0) {
      [self fastPath];
    }
  }
  else if (n != 0) {
    if (RxInternalOperatorsBackpressureUtils_getAndAddRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_(self, n) == 0) {
      [self slowPathWithLong:n];
    }
  }
}

- (void)fastPath {
  RxSubscriber *child = self->child_;
  {
    IOSObjectArray *a__ = array_;
    id const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id t = *b__++;
      if ([((RxSubscriber *) nil_chk(child)) isUnsubscribed]) {
        return;
      }
      [child onNextWithId:t];
    }
  }
  if ([((RxSubscriber *) nil_chk(child)) isUnsubscribed]) {
    return;
  }
  [child onCompleted];
}

- (void)slowPathWithLong:(jlong)r {
  RxSubscriber *child = self->child_;
  IOSObjectArray *array = self->array_;
  jint n = ((IOSObjectArray *) nil_chk(array))->size_;
  jlong e = 0LL;
  jint i = index_;
  for (; ; ) {
    while (r != 0LL && i != n) {
      if ([((RxSubscriber *) nil_chk(child)) isUnsubscribed]) {
        return;
      }
      [child onNextWithId:IOSObjectArray_Get(array, i)];
      i++;
      if (i == n) {
        if (![child isUnsubscribed]) {
          [child onCompleted];
        }
        return;
      }
      r--;
      e--;
    }
    r = [self get] + e;
    if (r == 0LL) {
      index_ = i;
      r = [self addAndGetWithLong:e];
      if (r == 0LL) {
        return;
      }
      e = 0LL;
    }
  }
}

- (void)__javaClone:(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer *)original {
  [super __javaClone:original];
  [child_ release];
}

- (void)dealloc {
  RELEASE_(array_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSubscriber:withNSObjectArray:);
  methods[1].selector = @selector(requestWithLong:);
  methods[2].selector = @selector(fastPath);
  methods[3].selector = @selector(slowPathWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "array_", "[LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;[LNSObject;", "(Lrx/Subscriber<-TT;>;[TT;)V", "request", "J", "slowPath", "Lrx/Subscriber<-TT;>;", "[TT;", "LRxInternalOperatorsOnSubscribeFromArray;", "<T:Ljava/lang/Object;>Ljava/util/concurrent/atomic/AtomicLong;Lrx/Producer;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer = { "FromArrayProducer", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 4, 4, 7, -1, -1, 8, -1 };
  return &_RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer;
}

@end

void RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_initWithRxSubscriber_withNSObjectArray_(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer *self, RxSubscriber *child, IOSObjectArray *array) {
  JavaUtilConcurrentAtomicAtomicLong_init(self);
  self->child_ = child;
  JreStrongAssign(&self->array_, array);
}

RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer *new_RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_initWithRxSubscriber_withNSObjectArray_(RxSubscriber *child, IOSObjectArray *array) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer, initWithRxSubscriber_withNSObjectArray_, child, array)
}

RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer *create_RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer_initWithRxSubscriber_withNSObjectArray_(RxSubscriber *child, IOSObjectArray *array) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer, initWithRxSubscriber_withNSObjectArray_, child, array)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeFromArray_FromArrayProducer)
