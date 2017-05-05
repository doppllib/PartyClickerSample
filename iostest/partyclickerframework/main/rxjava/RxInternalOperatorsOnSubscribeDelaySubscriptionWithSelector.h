//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector

#if !defined (RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector || defined(INCLUDE_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector))
#define RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxDopplSafeObservableUnsubscribe;
@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc0;

@interface RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector : NSObject < RxObservable_OnSubscribe > {
 @public
  RxDopplSafeObservableUnsubscribe *source_;
  id<RxFunctionsFunc0> subscriptionDelay_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc0:(id<RxFunctionsFunc0>)subscriptionDelay;

- (void)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector, source_, RxDopplSafeObservableUnsubscribe *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector, subscriptionDelay_, id<RxFunctionsFunc0>)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector_initWithRxObservable_withRxFunctionsFunc0_(RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector *self, RxObservable *source, id<RxFunctionsFunc0> subscriptionDelay);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector *new_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subscriptionDelay) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector *create_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subscriptionDelay);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDelaySubscriptionWithSelector")
