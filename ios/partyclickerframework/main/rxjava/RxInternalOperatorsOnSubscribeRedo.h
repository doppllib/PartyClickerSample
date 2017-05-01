//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeRedo
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeRedo

#if !defined (RxInternalOperatorsOnSubscribeRedo_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo || defined(INCLUDE_RxInternalOperatorsOnSubscribeRedo))
#define RxInternalOperatorsOnSubscribeRedo_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxObservable;
@class RxScheduler;
@class RxSubscriber;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOnSubscribeRedo : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservable *source_;
  jboolean stopOnComplete_;
  jboolean stopOnError_;
}

#pragma mark Public

- (void)callWithId:(RxSubscriber *)child;

+ (RxObservable *)redoWithRxObservable:(RxObservable *)source
                  withRxFunctionsFunc1:(id<RxFunctionsFunc1>)notificationHandler
                       withRxScheduler:(RxScheduler *)scheduler;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)notificationHandler;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)notificationHandler
                         withRxScheduler:(RxScheduler *)scheduler;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source
                                withLong:(jlong)count;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source
                                withLong:(jlong)count
                         withRxScheduler:(RxScheduler *)scheduler;

+ (RxObservable *)repeatWithRxObservable:(RxObservable *)source
                         withRxScheduler:(RxScheduler *)scheduler;

+ (RxObservable *)retryWithRxObservable:(RxObservable *)source;

+ (RxObservable *)retryWithRxObservable:(RxObservable *)source
                   withRxFunctionsFunc1:(id<RxFunctionsFunc1>)notificationHandler;

+ (RxObservable *)retryWithRxObservable:(RxObservable *)source
                   withRxFunctionsFunc1:(id<RxFunctionsFunc1>)notificationHandler
                        withRxScheduler:(RxScheduler *)scheduler;

+ (RxObservable *)retryWithRxObservable:(RxObservable *)source
                               withLong:(jlong)count;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOnSubscribeRedo)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeRedo, source_, RxObservable *)

inline id<RxFunctionsFunc1> RxInternalOperatorsOnSubscribeRedo_get_REDO_INFINITE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<RxFunctionsFunc1> RxInternalOperatorsOnSubscribeRedo_REDO_INFINITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOnSubscribeRedo, REDO_INFINITE, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_retryWithRxObservable_(RxObservable *source);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_retryWithRxObservable_withLong_(RxObservable *source, jlong count);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_retryWithRxObservable_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> notificationHandler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_retryWithRxObservable_withRxFunctionsFunc1_withRxScheduler_(RxObservable *source, id<RxFunctionsFunc1> notificationHandler, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_(RxObservable *source);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_withRxScheduler_(RxObservable *source, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_withLong_(RxObservable *source, jlong count);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_withLong_withRxScheduler_(RxObservable *source, jlong count, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> notificationHandler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_repeatWithRxObservable_withRxFunctionsFunc1_withRxScheduler_(RxObservable *source, id<RxFunctionsFunc1> notificationHandler, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOnSubscribeRedo_redoWithRxObservable_withRxFunctionsFunc1_withRxScheduler_(RxObservable *source, id<RxFunctionsFunc1> notificationHandler, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeRedo)

#endif

#if !defined (RxInternalOperatorsOnSubscribeRedo_RedoFinite_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo || defined(INCLUDE_RxInternalOperatorsOnSubscribeRedo_RedoFinite))
#define RxInternalOperatorsOnSubscribeRedo_RedoFinite_

#define RESTRICT_RxFunctionsFunc1 1
#define INCLUDE_RxFunctionsFunc1 1
#include "RxFunctionsFunc1.h"

@class RxObservable;

@interface RxInternalOperatorsOnSubscribeRedo_RedoFinite : NSObject < RxFunctionsFunc1 > {
 @public
  jlong count_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)count;

- (RxObservable *)callWithId:(RxObservable *)ts;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeRedo_RedoFinite)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeRedo_RedoFinite_initWithLong_(RxInternalOperatorsOnSubscribeRedo_RedoFinite *self, jlong count);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeRedo_RedoFinite *new_RxInternalOperatorsOnSubscribeRedo_RedoFinite_initWithLong_(jlong count) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeRedo_RedoFinite *create_RxInternalOperatorsOnSubscribeRedo_RedoFinite_initWithLong_(jlong count);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeRedo_RedoFinite)

#endif

#if !defined (RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo || defined(INCLUDE_RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate))
#define RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate_

#define RESTRICT_RxFunctionsFunc1 1
#define INCLUDE_RxFunctionsFunc1 1
#include "RxFunctionsFunc1.h"

@class RxObservable;
@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate : NSObject < RxFunctionsFunc1 > {
 @public
  id<RxFunctionsFunc2> predicate_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate;

- (RxObservable *)callWithId:(RxObservable *)ts;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate, predicate_, id<RxFunctionsFunc2>)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate_initWithRxFunctionsFunc2_(RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate *self, id<RxFunctionsFunc2> predicate);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate *new_RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate *create_RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeRedo_RetryWithPredicate)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeRedo")
