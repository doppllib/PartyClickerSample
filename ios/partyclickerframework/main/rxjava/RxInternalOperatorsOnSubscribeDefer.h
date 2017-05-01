//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeDefer
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeDefer

#if !defined (RxInternalOperatorsOnSubscribeDefer_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer || defined(INCLUDE_RxInternalOperatorsOnSubscribeDefer))
#define RxInternalOperatorsOnSubscribeDefer_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc0;

@interface RxInternalOperatorsOnSubscribeDefer : NSObject < RxObservable_OnSubscribe > {
 @public
  id<RxFunctionsFunc0> observableFactory_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)observableFactory;

- (void)callWithId:(RxSubscriber *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeDefer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDefer, observableFactory_, id<RxFunctionsFunc0>)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(RxInternalOperatorsOnSubscribeDefer *self, id<RxFunctionsFunc0> observableFactory);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDefer *new_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDefer *create_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeDefer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer")
