//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed")
#ifdef RESTRICT_RxInternalOperatorsOperatorTakeLastTimed
#define INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorTakeLastTimed

#if !defined (RxInternalOperatorsOperatorTakeLastTimed_) && (INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed || defined(INCLUDE_RxInternalOperatorsOperatorTakeLastTimed))
#define RxInternalOperatorsOperatorTakeLastTimed_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

@interface RxInternalOperatorsOperatorTakeLastTimed : NSObject < RxObservable_Operator > {
 @public
  jlong ageMillis_;
  RxScheduler *scheduler_;
  jint count_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)count
                   withLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
            withRxScheduler:(RxScheduler *)scheduler;

- (instancetype)initWithLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeLastTimed)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorTakeLastTimed *self, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *new_RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *create_RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorTakeLastTimed *self, jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *new_RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *create_RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeLastTimed)

#endif

#if !defined (RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed || defined(INCLUDE_RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber))
#define RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

#define RESTRICT_RxFunctionsFunc1 1
#define INCLUDE_RxFunctionsFunc1 1
#include "RxFunctionsFunc1.h"

@class JavaUtilArrayDeque;
@class JavaUtilConcurrentAtomicAtomicLong;
@class RxScheduler;

@interface RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber : RxSubscriber < RxFunctionsFunc1 > {
 @public
  RxSubscriber *actual_;
  jlong ageMillis_;
  RxScheduler *scheduler_;
  jint count_;
  JavaUtilConcurrentAtomicAtomicLong *requested_TakeLastTimedSubscriber_;
  JavaUtilArrayDeque *queue_;
  JavaUtilArrayDeque *queueTimes_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)count
                            withLong:(jlong)ageMillis
                     withRxScheduler:(RxScheduler *)scheduler;

- (id)callWithId:(id)t;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

#pragma mark Protected

- (void)evictOldWithLong:(jlong)now;

#pragma mark Package-Private

- (void)requestMoreWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber, scheduler_, RxScheduler *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber, requested_TakeLastTimedSubscriber_, JavaUtilConcurrentAtomicAtomicLong *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber, queue_, JavaUtilArrayDeque *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber, queueTimes_, JavaUtilArrayDeque *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber_initWithRxSubscriber_withInt_withLong_withRxScheduler_(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber *self, RxSubscriber *actual, jint count, jlong ageMillis, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber *new_RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber_initWithRxSubscriber_withInt_withLong_withRxScheduler_(RxSubscriber *actual, jint count, jlong ageMillis, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber *create_RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber_initWithRxSubscriber_withInt_withLong_withRxScheduler_(RxSubscriber *actual, jint count, jlong ageMillis, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeLastTimed_TakeLastTimedSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorTakeLastTimed")
