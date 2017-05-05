//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsSingleObserveOn")
#ifdef RESTRICT_RxInternalOperatorsSingleObserveOn
#define INCLUDE_ALL_RxInternalOperatorsSingleObserveOn 0
#else
#define INCLUDE_ALL_RxInternalOperatorsSingleObserveOn 1
#endif
#undef RESTRICT_RxInternalOperatorsSingleObserveOn

#if !defined (RxInternalOperatorsSingleObserveOn_) && (INCLUDE_ALL_RxInternalOperatorsSingleObserveOn || defined(INCLUDE_RxInternalOperatorsSingleObserveOn))
#define RxInternalOperatorsSingleObserveOn_

#define RESTRICT_RxSingle 1
#define INCLUDE_RxSingle_OnSubscribe 1
#include "RxSingle.h"

@class RxScheduler;
@class RxSingleSubscriber;

@interface RxInternalOperatorsSingleObserveOn : NSObject < RxSingle_OnSubscribe > {
 @public
  id<RxSingle_OnSubscribe> source_;
  RxScheduler *scheduler_;
}

#pragma mark Public

- (instancetype)initWithRxSingle_OnSubscribe:(id<RxSingle_OnSubscribe>)source
                             withRxScheduler:(RxScheduler *)scheduler;

- (void)callWithId:(RxSingleSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleObserveOn)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn, source_, id<RxSingle_OnSubscribe>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsSingleObserveOn_initWithRxSingle_OnSubscribe_withRxScheduler_(RxInternalOperatorsSingleObserveOn *self, id<RxSingle_OnSubscribe> source, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsSingleObserveOn *new_RxInternalOperatorsSingleObserveOn_initWithRxSingle_OnSubscribe_withRxScheduler_(id<RxSingle_OnSubscribe> source, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleObserveOn *create_RxInternalOperatorsSingleObserveOn_initWithRxSingle_OnSubscribe_withRxScheduler_(id<RxSingle_OnSubscribe> source, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleObserveOn)

#endif

#if !defined (RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsSingleObserveOn || defined(INCLUDE_RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber))
#define RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber_

#define RESTRICT_RxSingleSubscriber 1
#define INCLUDE_RxSingleSubscriber 1
#include "RxSingleSubscriber.h"

#define RESTRICT_RxFunctionsAction0 1
#define INCLUDE_RxFunctionsAction0 1
#include "RxFunctionsAction0.h"

@class RxScheduler_Worker;

@interface RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber : RxSingleSubscriber < RxFunctionsAction0 > {
 @public
  RxSingleSubscriber *actual_;
  RxScheduler_Worker *w_;
  id value_;
  NSException *error_;
}

#pragma mark Public

- (instancetype)initWithRxSingleSubscriber:(RxSingleSubscriber *)actual
                    withRxScheduler_Worker:(RxScheduler_Worker *)w;

- (void)call;

- (void)onErrorWithNSException:(NSException *)error;

- (void)onSuccessWithId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber, actual_, RxSingleSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber, w_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber, value_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber, error_, NSException *)

FOUNDATION_EXPORT void RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber_initWithRxSingleSubscriber_withRxScheduler_Worker_(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber *self, RxSingleSubscriber *actual, RxScheduler_Worker *w);

FOUNDATION_EXPORT RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber *new_RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber_initWithRxSingleSubscriber_withRxScheduler_Worker_(RxSingleSubscriber *actual, RxScheduler_Worker *w) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber *create_RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber_initWithRxSingleSubscriber_withRxScheduler_Worker_(RxSingleSubscriber *actual, RxScheduler_Worker *w);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsSingleObserveOn_ObserveOnSingleSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsSingleObserveOn")