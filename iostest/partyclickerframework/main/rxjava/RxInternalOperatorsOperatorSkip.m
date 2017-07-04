//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_source.h"
#include "RxInternalOperatorsOperatorSkip.h"
#include "RxProducer.h"
#include "RxSubscriber.h"
#include "java/lang/IllegalArgumentException.h"

@interface RxInternalOperatorsOperatorSkip_1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorSkip *this$0_;
  RxSubscriber *val$child_;
  jint skipped_;
}

- (instancetype)initWithRxInternalOperatorsOperatorSkip:(RxInternalOperatorsOperatorSkip *)outer$
                                       withRxSubscriber:(RxSubscriber *)capture$0
                                       withRxSubscriber:(RxSubscriber *)subscriber;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

- (void)setProducerWithRxProducer:(id<RxProducer>)producer;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSkip_1)

__attribute__((unused)) static void RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip_1 *self, RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber);

__attribute__((unused)) static RxInternalOperatorsOperatorSkip_1 *new_RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSkip_1 *create_RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber);

@implementation RxInternalOperatorsOperatorSkip

- (instancetype)initWithInt:(jint)n {
  RxInternalOperatorsOperatorSkip_initWithInt_(self, n);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  return create_RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(self, child, child);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(callWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "toSkip_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSkip = { "OperatorSkip", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, 4, -1 };
  return &_RxInternalOperatorsOperatorSkip;
}

@end

void RxInternalOperatorsOperatorSkip_initWithInt_(RxInternalOperatorsOperatorSkip *self, jint n) {
  NSObject_init(self);
  if (n < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"n >= 0 required but it was ", n));
  }
  self->toSkip_ = n;
}

RxInternalOperatorsOperatorSkip *new_RxInternalOperatorsOperatorSkip_initWithInt_(jint n) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSkip, initWithInt_, n)
}

RxInternalOperatorsOperatorSkip *create_RxInternalOperatorsOperatorSkip_initWithInt_(jint n) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSkip, initWithInt_, n)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSkip)

@implementation RxInternalOperatorsOperatorSkip_1

- (instancetype)initWithRxInternalOperatorsOperatorSkip:(RxInternalOperatorsOperatorSkip *)outer$
                                       withRxSubscriber:(RxSubscriber *)capture$0
                                       withRxSubscriber:(RxSubscriber *)subscriber {
  RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, subscriber);
  return self;
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  if (skipped_ >= this$0_->toSkip_) {
    [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
  }
  else {
    skipped_ += 1;
  }
}

- (void)setProducerWithRxProducer:(id<RxProducer>)producer {
  [((RxSubscriber *) nil_chk(val$child_)) setProducerWithRxProducer:producer];
  [((id<RxProducer>) nil_chk(producer)) requestWithLong:this$0_->toSkip_];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$child_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithRxInternalOperatorsOperatorSkip:withRxSubscriber:withRxSubscriber:);
  methods[1].selector = @selector(onCompleted);
  methods[2].selector = @selector(onErrorWithNSException:);
  methods[3].selector = @selector(onNextWithId:);
  methods[4].selector = @selector(setProducerWithRxProducer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSkip;", .constantValue.asLong = 0, 0x1012, -1, -1, 9, -1 },
    { "val$child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 10, -1 },
    { "skipped_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<*>;)V", "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "setProducer", "LRxProducer;", "Lrx/internal/operators/OperatorSkip<TT;>;", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorSkip;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSkip_1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8018, 5, 3, 11, -1, 12, 13, -1 };
  return &_RxInternalOperatorsOperatorSkip_1;
}

@end

void RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip_1 *self, RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$child_, capture$0);
  RxSubscriber_initWithRxSubscriber_(self, subscriber);
}

RxInternalOperatorsOperatorSkip_1 *new_RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSkip_1, initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_, outer$, capture$0, subscriber)
}

RxInternalOperatorsOperatorSkip_1 *create_RxInternalOperatorsOperatorSkip_1_initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkip *outer$, RxSubscriber *capture$0, RxSubscriber *subscriber) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSkip_1, initWithRxInternalOperatorsOperatorSkip_withRxSubscriber_withRxSubscriber_, outer$, capture$0, subscriber)
}
