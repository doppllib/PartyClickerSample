//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate")
#ifdef RESTRICT_RxInternalOperatorsOperatorRetryWithPredicate
#define INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorRetryWithPredicate

#if !defined (RxInternalOperatorsOperatorRetryWithPredicate_) && (INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate || defined(INCLUDE_RxInternalOperatorsOperatorRetryWithPredicate))
#define RxInternalOperatorsOperatorRetryWithPredicate_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOperatorRetryWithPredicate : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc2> predicate_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorRetryWithPredicate)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate, predicate_, id<RxFunctionsFunc2>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(RxInternalOperatorsOperatorRetryWithPredicate *self, id<RxFunctionsFunc2> predicate);

FOUNDATION_EXPORT RxInternalOperatorsOperatorRetryWithPredicate *new_RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorRetryWithPredicate *create_RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorRetryWithPredicate)

#endif

#if !defined (RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate || defined(INCLUDE_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber))
#define RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@class RxInternalProducersProducerArbiter;
@class RxObservable;
@class RxScheduler_Worker;
@class RxSubscriptionsSerialSubscription;
@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  id<RxFunctionsFunc2> predicate_;
  RxScheduler_Worker *inner_;
  RxSubscriptionsSerialSubscription *serialSubscription_;
  RxInternalProducersProducerArbiter *pa_;
  JavaUtilConcurrentAtomicAtomicInteger *attempts_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                withRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate
              withRxScheduler_Worker:(RxScheduler_Worker *)inner
withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)serialSubscription
withRxInternalProducersProducerArbiter:(RxInternalProducersProducerArbiter *)pa;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(RxObservable *)o;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, predicate_, id<RxFunctionsFunc2>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, inner_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, serialSubscription_, RxSubscriptionsSerialSubscription *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, pa_, RxInternalProducersProducerArbiter *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, attempts_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *self, RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa);

FOUNDATION_EXPORT RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorRetryWithPredicate")
