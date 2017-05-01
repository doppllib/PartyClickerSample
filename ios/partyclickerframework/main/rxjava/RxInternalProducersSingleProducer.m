//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxExceptionsExceptions.h"
#include "RxInternalProducersSingleProducer.h"
#include "RxSubscriber.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"

@interface RxInternalProducersSingleProducer ()

- (void)cleanReference;

@end

inline jlong RxInternalProducersSingleProducer_get_serialVersionUID();
#define RxInternalProducersSingleProducer_serialVersionUID -3353584923995471404LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalProducersSingleProducer, serialVersionUID, jlong)

__attribute__((unused)) static void RxInternalProducersSingleProducer_cleanReference(RxInternalProducersSingleProducer *self);

@implementation RxInternalProducersSingleProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                              withId:(id)value {
  RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(self, child, value);
  return self;
}

- (void)requestWithLong:(jlong)n {
  if (n < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"n >= 0 required");
  }
  if (n == 0) {
    return;
  }
  if ([self compareAndSetWithBoolean:false withBoolean:true]) {
    RxSubscriber *c = child_;
    if ([((RxSubscriber *) nil_chk(c)) isUnsubscribed]) {
      RxInternalProducersSingleProducer_cleanReference(self);
      return;
    }
    id v = value_SingleProducer_;
    @try {
      [c onNextWithId:v];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, c, v);
      return;
    }
    if ([c isUnsubscribed]) {
      RxInternalProducersSingleProducer_cleanReference(self);
      return;
    }
    [c onCompleted];
    RxInternalProducersSingleProducer_cleanReference(self);
  }
}

- (void)cleanReference {
  RxInternalProducersSingleProducer_cleanReference(self);
}

- (void)__javaClone:(RxInternalProducersSingleProducer *)original {
  [super __javaClone:original];
  [child_ release];
}

- (void)dealloc {
  RELEASE_(value_SingleProducer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxSubscriber:withId:);
  methods[1].selector = @selector(requestWithLong:);
  methods[2].selector = @selector(cleanReference);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalProducersSingleProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
    { "value_SingleProducer_", "LNSObject;", .constantValue.asLong = 0, 0x0, 5, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LNSObject;", "(Lrx/Subscriber<-TT;>;TT;)V", "request", "J", "Lrx/Subscriber<-TT;>;", "value", "TT;", "<T:Ljava/lang/Object;>Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Producer;" };
  static const J2ObjcClassInfo _RxInternalProducersSingleProducer = { "SingleProducer", "rx.internal.producers", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, 7, -1 };
  return &_RxInternalProducersSingleProducer;
}

@end

void RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxInternalProducersSingleProducer *self, RxSubscriber *child, id value) {
  JavaUtilConcurrentAtomicAtomicBoolean_init(self);
  self->child_ = child;
  JreStrongAssign(&self->value_SingleProducer_, value);
}

RxInternalProducersSingleProducer *new_RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxSubscriber *child, id value) {
  J2OBJC_NEW_IMPL(RxInternalProducersSingleProducer, initWithRxSubscriber_withId_, child, value)
}

RxInternalProducersSingleProducer *create_RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxSubscriber *child, id value) {
  J2OBJC_CREATE_IMPL(RxInternalProducersSingleProducer, initWithRxSubscriber_withId_, child, value)
}

void RxInternalProducersSingleProducer_cleanReference(RxInternalProducersSingleProducer *self) {
  JreStrongAssign(&self->value_SingleProducer_, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalProducersSingleProducer)
