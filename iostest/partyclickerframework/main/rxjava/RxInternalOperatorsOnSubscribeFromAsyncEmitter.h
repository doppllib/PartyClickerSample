//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeFromAsyncEmitter
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeFromAsyncEmitter
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter 1
#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxAsyncEmitter_BackpressureMode;
@class RxSubscriber;
@protocol RxFunctionsAction1;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter : NSObject < RxObservable_OnSubscribe > {
 @public
  id<RxFunctionsAction1> asyncEmitter_;
  RxAsyncEmitter_BackpressureMode *backpressure_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)asyncEmitter
       withRxAsyncEmitter_BackpressureMode:(RxAsyncEmitter_BackpressureMode *)backpressure;

- (void)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter, asyncEmitter_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter, backpressure_, RxAsyncEmitter_BackpressureMode *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_initWithRxFunctionsAction1_withRxAsyncEmitter_BackpressureMode_(RxInternalOperatorsOnSubscribeFromAsyncEmitter *self, id<RxFunctionsAction1> asyncEmitter, RxAsyncEmitter_BackpressureMode *backpressure);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_initWithRxFunctionsAction1_withRxAsyncEmitter_BackpressureMode_(id<RxFunctionsAction1> asyncEmitter, RxAsyncEmitter_BackpressureMode *backpressure) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_initWithRxFunctionsAction1_withRxAsyncEmitter_BackpressureMode_(id<RxFunctionsAction1> asyncEmitter, RxAsyncEmitter_BackpressureMode *backpressure);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicReference 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicReference 1
#include "java/util/concurrent/atomic/AtomicReference.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@protocol RxAsyncEmitter_Cancellable;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription : JavaUtilConcurrentAtomicAtomicReference < RxSubscription >

#pragma mark Public

- (instancetype)initWithRxAsyncEmitter_Cancellable:(id<RxAsyncEmitter_Cancellable>)cancellable;

- (id<RxAsyncEmitter_Cancellable>)get;

- (id<RxAsyncEmitter_Cancellable>)getAndSetWithId:(id<RxAsyncEmitter_Cancellable>)arg0;

- (jboolean)isUnsubscribed;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription_initWithRxAsyncEmitter_Cancellable_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription *self, id<RxAsyncEmitter_Cancellable> cancellable);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription_initWithRxAsyncEmitter_Cancellable_(id<RxAsyncEmitter_Cancellable> cancellable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription_initWithRxAsyncEmitter_Cancellable_(id<RxAsyncEmitter_Cancellable> cancellable);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_CancellableSubscription)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxAsyncEmitter 1
#define INCLUDE_RxAsyncEmitter 1
#include "RxAsyncEmitter.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "RxProducer.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@class RxSubscriber;
@class RxSubscriptionsSerialSubscription;
@protocol RxAsyncEmitter_Cancellable;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter : JavaUtilConcurrentAtomicAtomicLong < RxAsyncEmitter, RxProducer, RxSubscription > {
 @public
  RxSubscriber *actual_;
  RxSubscriptionsSerialSubscription *serial_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (jboolean)isUnsubscribed;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)requestWithLong:(jlong)n;

- (jlong)requested;

- (void)setCancellationWithRxAsyncEmitter_Cancellable:(id<RxAsyncEmitter_Cancellable>)c;

- (void)setSubscriptionWithRxSubscription:(id<RxSubscription>)s;

- (void)unsubscribe;

#pragma mark Package-Private

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter, serial_, RxSubscriptionsSerialSubscription *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter *self, RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoneAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter *self, RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_DropAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_NoOverflowBaseAsyncEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_ErrorAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter_

@class JavaUtilConcurrentAtomicAtomicInteger;
@class RxSubscriber;
@protocol JavaUtilQueue;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter {
 @public
  id<JavaUtilQueue> queue_;
  NSException *error_;
  volatile_jboolean done_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)capacityHint;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)drain;

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter_initWithRxSubscriber_withInt_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter *self, RxSubscriber *actual, jint capacityHint);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint capacityHint) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint capacityHint);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_BufferAsyncEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter))
#define RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter_

@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicReference;
@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter : RxInternalOperatorsOnSubscribeFromAsyncEmitter_BaseAsyncEmitter {
 @public
  JavaUtilConcurrentAtomicAtomicReference *queue_;
  NSException *error_;
  volatile_jboolean done_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)drain;

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter, queue_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter *new_RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter *create_RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromAsyncEmitter_LatestAsyncEmitter)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromAsyncEmitter")
