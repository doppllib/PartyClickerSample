//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxExceptionsExceptions.h"
#include "RxInternalOperatorsOnSubscribeFromCallable.h"
#include "RxInternalProducersSingleDelayedProducer.h"
#include "RxSubscriber.h"
#include "java/util/concurrent/Callable.h"

@interface RxInternalOperatorsOnSubscribeFromCallable () {
 @public
  id<JavaUtilConcurrentCallable> resultFactory_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromCallable, resultFactory_, id<JavaUtilConcurrentCallable>)

@implementation RxInternalOperatorsOnSubscribeFromCallable

- (instancetype)initWithJavaUtilConcurrentCallable:(id<JavaUtilConcurrentCallable>)resultFactory {
  RxInternalOperatorsOnSubscribeFromCallable_initWithJavaUtilConcurrentCallable_(self, resultFactory);
  return self;
}

- (void)callWithId:(RxSubscriber *)subscriber {
  RxInternalProducersSingleDelayedProducer *singleDelayedProducer = create_RxInternalProducersSingleDelayedProducer_initWithRxSubscriber_(subscriber);
  [((RxSubscriber *) nil_chk(subscriber)) setProducerWithRxProducer:singleDelayedProducer];
  @try {
    [singleDelayedProducer setValueWithId:[((id<JavaUtilConcurrentCallable>) nil_chk(resultFactory_)) call]];
  }
  @catch (NSException *t) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(t, subscriber);
  }
}

- (void)dealloc {
  RELEASE_(resultFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilConcurrentCallable:);
  methods[1].selector = @selector(callWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "resultFactory_", "LJavaUtilConcurrentCallable;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentCallable;", "(Ljava/util/concurrent/Callable<+TT;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "Ljava/util/concurrent/Callable<+TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeFromCallable = { "OnSubscribeFromCallable", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, 6, -1 };
  return &_RxInternalOperatorsOnSubscribeFromCallable;
}

@end

void RxInternalOperatorsOnSubscribeFromCallable_initWithJavaUtilConcurrentCallable_(RxInternalOperatorsOnSubscribeFromCallable *self, id<JavaUtilConcurrentCallable> resultFactory) {
  NSObject_init(self);
  JreStrongAssign(&self->resultFactory_, resultFactory);
}

RxInternalOperatorsOnSubscribeFromCallable *new_RxInternalOperatorsOnSubscribeFromCallable_initWithJavaUtilConcurrentCallable_(id<JavaUtilConcurrentCallable> resultFactory) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeFromCallable, initWithJavaUtilConcurrentCallable_, resultFactory)
}

RxInternalOperatorsOnSubscribeFromCallable *create_RxInternalOperatorsOnSubscribeFromCallable_initWithJavaUtilConcurrentCallable_(id<JavaUtilConcurrentCallable> resultFactory) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeFromCallable, initWithJavaUtilConcurrentCallable_, resultFactory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeFromCallable)