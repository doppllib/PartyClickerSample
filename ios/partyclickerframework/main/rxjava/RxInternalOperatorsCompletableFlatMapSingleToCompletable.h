//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable")
#ifdef RESTRICT_RxInternalOperatorsCompletableFlatMapSingleToCompletable
#define INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable 1
#endif
#undef RESTRICT_RxInternalOperatorsCompletableFlatMapSingleToCompletable

#if !defined (RxInternalOperatorsCompletableFlatMapSingleToCompletable_) && (INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable || defined(INCLUDE_RxInternalOperatorsCompletableFlatMapSingleToCompletable))
#define RxInternalOperatorsCompletableFlatMapSingleToCompletable_

#define RESTRICT_RxCompletable 1
#define INCLUDE_RxCompletable_OnSubscribe 1
#include "RxCompletable.h"

@class RxSingle;
@protocol RxCompletableSubscriber;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsCompletableFlatMapSingleToCompletable : NSObject < RxCompletable_OnSubscribe > {
 @public
  RxSingle *source_;
  id<RxFunctionsFunc1> mapper_;
}

#pragma mark Public

- (instancetype)initWithRxSingle:(RxSingle *)source
            withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper;

- (void)callWithId:(id<RxCompletableSubscriber>)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableFlatMapSingleToCompletable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableFlatMapSingleToCompletable, source_, RxSingle *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableFlatMapSingleToCompletable, mapper_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsCompletableFlatMapSingleToCompletable_initWithRxSingle_withRxFunctionsFunc1_(RxInternalOperatorsCompletableFlatMapSingleToCompletable *self, RxSingle *source, id<RxFunctionsFunc1> mapper);

FOUNDATION_EXPORT RxInternalOperatorsCompletableFlatMapSingleToCompletable *new_RxInternalOperatorsCompletableFlatMapSingleToCompletable_initWithRxSingle_withRxFunctionsFunc1_(RxSingle *source, id<RxFunctionsFunc1> mapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCompletableFlatMapSingleToCompletable *create_RxInternalOperatorsCompletableFlatMapSingleToCompletable_initWithRxSingle_withRxFunctionsFunc1_(RxSingle *source, id<RxFunctionsFunc1> mapper);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCompletableFlatMapSingleToCompletable)

#endif

#if !defined (RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable || defined(INCLUDE_RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber))
#define RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber_

#define RESTRICT_RxSingleSubscriber 1
#define INCLUDE_RxSingleSubscriber 1
#include "RxSingleSubscriber.h"

#define RESTRICT_RxCompletableSubscriber 1
#define INCLUDE_RxCompletableSubscriber 1
#include "RxCompletableSubscriber.h"

@protocol RxFunctionsFunc1;
@protocol RxSubscription;

@interface RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber : RxSingleSubscriber < RxCompletableSubscriber > {
 @public
  id<RxCompletableSubscriber> actual_;
  id<RxFunctionsFunc1> mapper_;
}

#pragma mark Public

- (instancetype)initWithRxCompletableSubscriber:(id<RxCompletableSubscriber>)actual
                           withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)error;

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)onSuccessWithId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber, actual_, id<RxCompletableSubscriber>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber, mapper_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber_initWithRxCompletableSubscriber_withRxFunctionsFunc1_(RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber *self, id<RxCompletableSubscriber> actual, id<RxFunctionsFunc1> mapper);

FOUNDATION_EXPORT RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber *new_RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber_initWithRxCompletableSubscriber_withRxFunctionsFunc1_(id<RxCompletableSubscriber> actual, id<RxFunctionsFunc1> mapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber *create_RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber_initWithRxCompletableSubscriber_withRxFunctionsFunc1_(id<RxCompletableSubscriber> actual, id<RxFunctionsFunc1> mapper);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCompletableFlatMapSingleToCompletable_SourceSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsCompletableFlatMapSingleToCompletable")
