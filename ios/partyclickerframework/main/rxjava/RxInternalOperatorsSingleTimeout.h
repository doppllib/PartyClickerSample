//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsSingleTimeout")
#ifdef RESTRICT_RxInternalOperatorsSingleTimeout
#define INCLUDE_ALL_RxInternalOperatorsSingleTimeout 0
#else
#define INCLUDE_ALL_RxInternalOperatorsSingleTimeout 1
#endif
#undef RESTRICT_RxInternalOperatorsSingleTimeout

#if !defined (RxInternalOperatorsSingleTimeout_) && (INCLUDE_ALL_RxInternalOperatorsSingleTimeout || defined(INCLUDE_RxInternalOperatorsSingleTimeout))
#define RxInternalOperatorsSingleTimeout_

#define RESTRICT_RxSingle 1
#define INCLUDE_RxSingle_OnSubscribe 1
#include "RxSingle.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSingleSubscriber;

@interface RxInternalOperatorsSingleTimeout : NSObject < RxSingle_OnSubscribe > {
 @public
  id<RxSingle_OnSubscribe> source_;
  jlong timeout_;
  JavaUtilConcurrentTimeUnit *unit_;
  RxScheduler *scheduler_;
  id<RxSingle_OnSubscribe> other_;
}

#pragma mark Public

- (instancetype)initWithRxSingle_OnSubscribe:(id<RxSingle_OnSubscribe>)source
                                    withLong:(jlong)timeout
              withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                             withRxScheduler:(RxScheduler *)scheduler
                    withRxSingle_OnSubscribe:(id<RxSingle_OnSubscribe>)other;

- (void)callWithId:(RxSingleSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleTimeout)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout, source_, id<RxSingle_OnSubscribe>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout, unit_, JavaUtilConcurrentTimeUnit *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout, scheduler_, RxScheduler *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout, other_, id<RxSingle_OnSubscribe>)

FOUNDATION_EXPORT void RxInternalOperatorsSingleTimeout_initWithRxSingle_OnSubscribe_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_withRxSingle_OnSubscribe_(RxInternalOperatorsSingleTimeout *self, id<RxSingle_OnSubscribe> source, jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler, id<RxSingle_OnSubscribe> other);

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout *new_RxInternalOperatorsSingleTimeout_initWithRxSingle_OnSubscribe_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_withRxSingle_OnSubscribe_(id<RxSingle_OnSubscribe> source, jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler, id<RxSingle_OnSubscribe> other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout *create_RxInternalOperatorsSingleTimeout_initWithRxSingle_OnSubscribe_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_withRxSingle_OnSubscribe_(id<RxSingle_OnSubscribe> source, jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler, id<RxSingle_OnSubscribe> other);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleTimeout)

#endif

#if !defined (RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsSingleTimeout || defined(INCLUDE_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber))
#define RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_

#define RESTRICT_RxSingleSubscriber 1
#define INCLUDE_RxSingleSubscriber 1
#include "RxSingleSubscriber.h"

#define RESTRICT_RxFunctionsAction0 1
#define INCLUDE_RxFunctionsAction0 1
#include "RxFunctionsAction0.h"

@class JavaUtilConcurrentAtomicAtomicBoolean;
@protocol RxSingle_OnSubscribe;

@interface RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber : RxSingleSubscriber < RxFunctionsAction0 > {
 @public
  RxSingleSubscriber *actual_;
  JavaUtilConcurrentAtomicAtomicBoolean *once_;
  id<RxSingle_OnSubscribe> other_;
}

#pragma mark Public

- (void)call;

- (void)onErrorWithNSException:(NSException *)error;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onSuccessWithId:(id)value;

#pragma mark Package-Private

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)actual
                  withRxSingle_OnSubscribe:(id<RxSingle_OnSubscribe>)other;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber, actual_, RxSingleSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber, once_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber, other_, id<RxSingle_OnSubscribe>)

FOUNDATION_EXPORT void RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_initWithRxSingleSubscriber_withRxSingle_OnSubscribe_(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber *self, RxSingleSubscriber *actual, id<RxSingle_OnSubscribe> other);

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber *new_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_initWithRxSingleSubscriber_withRxSingle_OnSubscribe_(RxSingleSubscriber *actual, id<RxSingle_OnSubscribe> other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber *create_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_initWithRxSingleSubscriber_withRxSingle_OnSubscribe_(RxSingleSubscriber *actual, id<RxSingle_OnSubscribe> other);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber)

#endif

#if !defined (RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsSingleTimeout || defined(INCLUDE_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber))
#define RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber_

#define RESTRICT_RxSingleSubscriber 1
#define INCLUDE_RxSingleSubscriber 1
#include "RxSingleSubscriber.h"

@interface RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber : RxSingleSubscriber {
 @public
  RxSingleSubscriber *actual_;
}

#pragma mark Public

- (void)onErrorWithNSException:(NSException *)error;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onSuccessWithId:(id)value;

#pragma mark Package-Private

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)actual;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber, actual_, RxSingleSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber_initWithRxSingleSubscriber_(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber *self, RxSingleSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber *new_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber_initWithRxSingleSubscriber_(RxSingleSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber *create_RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber_initWithRxSingleSubscriber_(RxSingleSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleTimeout_TimeoutSingleSubscriber_OtherSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsSingleTimeout")
