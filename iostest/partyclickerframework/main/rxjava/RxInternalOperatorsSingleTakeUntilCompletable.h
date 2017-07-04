//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable")
#ifdef RESTRICT_RxInternalOperatorsSingleTakeUntilCompletable
#define INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable 1
#endif
#undef RESTRICT_RxInternalOperatorsSingleTakeUntilCompletable

#if !defined (RxInternalOperatorsSingleTakeUntilCompletable_) && (INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable || defined(INCLUDE_RxInternalOperatorsSingleTakeUntilCompletable))
#define RxInternalOperatorsSingleTakeUntilCompletable_

#define RESTRICT_RxSingle 1
#define INCLUDE_RxSingle_OnSubscribe 1
#include "RxSingle.h"

@class RxCompletable;
@class RxSingleSubscriber;

@interface RxInternalOperatorsSingleTakeUntilCompletable : NSObject < RxSingle_OnSubscribe > {
 @public
  id<RxSingle_OnSubscribe> source_;
  RxCompletable *other_;
}

#pragma mark Public

- (instancetype)initWithRxSingle_OnSubscribe:(id<RxSingle_OnSubscribe>)source
                           withRxCompletable:(RxCompletable *)other;

- (void)callWithId:(RxSingleSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleTakeUntilCompletable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTakeUntilCompletable, source_, id<RxSingle_OnSubscribe>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTakeUntilCompletable, other_, RxCompletable *)

FOUNDATION_EXPORT void RxInternalOperatorsSingleTakeUntilCompletable_initWithRxSingle_OnSubscribe_withRxCompletable_(RxInternalOperatorsSingleTakeUntilCompletable *self, id<RxSingle_OnSubscribe> source, RxCompletable *other);

FOUNDATION_EXPORT RxInternalOperatorsSingleTakeUntilCompletable *new_RxInternalOperatorsSingleTakeUntilCompletable_initWithRxSingle_OnSubscribe_withRxCompletable_(id<RxSingle_OnSubscribe> source, RxCompletable *other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleTakeUntilCompletable *create_RxInternalOperatorsSingleTakeUntilCompletable_initWithRxSingle_OnSubscribe_withRxCompletable_(id<RxSingle_OnSubscribe> source, RxCompletable *other);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleTakeUntilCompletable)

#endif

#if !defined (RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable || defined(INCLUDE_RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber))
#define RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber_

#define RESTRICT_RxSingleSubscriber 1
#define INCLUDE_RxSingleSubscriber 1
#include "RxSingleSubscriber.h"

#define RESTRICT_RxCompletableSubscriber 1
#define INCLUDE_RxCompletableSubscriber 1
#include "RxCompletableSubscriber.h"

@class JavaUtilConcurrentAtomicAtomicBoolean;
@protocol RxSubscription;

@interface RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber : RxSingleSubscriber < RxCompletableSubscriber > {
 @public
  RxSingleSubscriber *actual_;
  JavaUtilConcurrentAtomicAtomicBoolean *once_;
}

#pragma mark Public

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)error;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)onSuccessWithId:(id)value;

#pragma mark Package-Private

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)actual;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber, actual_, RxSingleSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber, once_, JavaUtilConcurrentAtomicAtomicBoolean *)

FOUNDATION_EXPORT void RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber_initWithRxSingleSubscriber_(RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber *self, RxSingleSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber *new_RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber_initWithRxSingleSubscriber_(RxSingleSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber *create_RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber_initWithRxSingleSubscriber_(RxSingleSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleTakeUntilCompletable_TakeUntilSourceSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsSingleTakeUntilCompletable")
