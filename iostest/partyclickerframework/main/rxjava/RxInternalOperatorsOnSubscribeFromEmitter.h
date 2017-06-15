//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeFromEmitter
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeFromEmitter
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter
#define INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter 1
#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxEmitter_BackpressureMode;
@class RxSubscriber;
@protocol RxFunctionsAction1;

@interface RxInternalOperatorsOnSubscribeFromEmitter : NSObject < RxObservable_OnSubscribe > {
 @public
  id<RxFunctionsAction1> Emitter_;
  RxEmitter_BackpressureMode *backpressure_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)Emitter
            withRxEmitter_BackpressureMode:(RxEmitter_BackpressureMode *)backpressure;

- (void)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter, Emitter_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter, backpressure_, RxEmitter_BackpressureMode *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_initWithRxFunctionsAction1_withRxEmitter_BackpressureMode_(RxInternalOperatorsOnSubscribeFromEmitter *self, id<RxFunctionsAction1> Emitter, RxEmitter_BackpressureMode *backpressure);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_initWithRxFunctionsAction1_withRxEmitter_BackpressureMode_(id<RxFunctionsAction1> Emitter, RxEmitter_BackpressureMode *backpressure) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_initWithRxFunctionsAction1_withRxEmitter_BackpressureMode_(id<RxFunctionsAction1> Emitter, RxEmitter_BackpressureMode *backpressure);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription))
#define RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicReference 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicReference 1
#include "java/util/concurrent/atomic/AtomicReference.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@protocol RxFunctionsCancellable;

@interface RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription : JavaUtilConcurrentAtomicAtomicReference < RxSubscription >

#pragma mark Public

- (instancetype)initWithRxFunctionsCancellable:(id<RxFunctionsCancellable>)cancellable;

- (id<RxFunctionsCancellable>)get;

- (id<RxFunctionsCancellable>)getAndSetWithId:(id<RxFunctionsCancellable>)arg0;

- (jboolean)isUnsubscribed;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription_initWithRxFunctionsCancellable_(RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription *self, id<RxFunctionsCancellable> cancellable);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription *new_RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription_initWithRxFunctionsCancellable_(id<RxFunctionsCancellable> cancellable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription *create_RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription_initWithRxFunctionsCancellable_(id<RxFunctionsCancellable> cancellable);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_CancellableSubscription)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxEmitter 1
#define INCLUDE_RxEmitter 1
#include "RxEmitter.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "RxProducer.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@class RxSubscriber;
@class RxSubscriptionsSerialSubscription;
@protocol RxFunctionsCancellable;

@interface RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter : JavaUtilConcurrentAtomicAtomicLong < RxEmitter, RxProducer, RxSubscription > {
 @public
  RxSubscriber *actual_;
  RxSubscriptionsSerialSubscription *serial_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (jboolean)isUnsubscribed;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)requestWithLong:(jlong)n;

- (jlong)requested;

- (void)setCancellationWithRxFunctionsCancellable:(id<RxFunctionsCancellable>)c;

- (void)setSubscriptionWithRxSubscription:(id<RxSubscription>)s;

- (void)unsubscribe;

#pragma mark Package-Private

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter, serial_, RxSubscriptionsSerialSubscription *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter *self, RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter : RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_NoneEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter : RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter *self, RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter : RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_DropEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter_

@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter : RxInternalOperatorsOnSubscribeFromEmitter_NoOverflowBaseEmitter

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)onOverflow;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_ErrorEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter_

@class JavaUtilConcurrentAtomicAtomicInteger;
@class RxSubscriber;
@protocol JavaUtilQueue;

@interface RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter : RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter {
 @public
  id<JavaUtilQueue> queue_;
  NSException *error_;
  volatile_jboolean done_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)capacityHint;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)drain;

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter_initWithRxSubscriber_withInt_(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter *self, RxSubscriber *actual, jint capacityHint);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint capacityHint) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint capacityHint);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_BufferEmitter)

#endif

#if !defined (RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter || defined(INCLUDE_RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter))
#define RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter_

@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicReference;
@class RxSubscriber;

@interface RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter : RxInternalOperatorsOnSubscribeFromEmitter_BaseEmitter {
 @public
  JavaUtilConcurrentAtomicAtomicReference *queue_;
  NSException *error_;
  volatile_jboolean done_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)drain;

- (void)onRequested;

- (void)onUnsubscribed;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter, queue_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter_initWithRxSubscriber_(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter *new_RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter *create_RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeFromEmitter_LatestEmitter)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeFromEmitter")
