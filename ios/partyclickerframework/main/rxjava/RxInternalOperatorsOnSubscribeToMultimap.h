//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeToMultimap")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeToMultimap
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeToMultimap 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeToMultimap 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeToMultimap

#if !defined (RxInternalOperatorsOnSubscribeToMultimap_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeToMultimap || defined(INCLUDE_RxInternalOperatorsOnSubscribeToMultimap))
#define RxInternalOperatorsOnSubscribeToMultimap_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

#define RESTRICT_RxFunctionsFunc0 1
#define INCLUDE_RxFunctionsFunc0 1
#include "RxFunctionsFunc0.h"

@class RxObservable;
@class RxSubscriber;
@protocol JavaUtilMap;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOnSubscribeToMultimap : NSObject < RxObservable_OnSubscribe, RxFunctionsFunc0 >

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector;

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector
                withRxFunctionsFunc0:(id<RxFunctionsFunc0>)mapFactory;

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector
                withRxFunctionsFunc0:(id<RxFunctionsFunc0>)mapFactory
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)collectionFactory;

- (id<JavaUtilMap>)call;

- (void)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeToMultimap)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_(RxInternalOperatorsOnSubscribeToMultimap *self, RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *new_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *create_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector);

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_(RxInternalOperatorsOnSubscribeToMultimap *self, RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *new_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *create_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory);

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_withRxFunctionsFunc1_(RxInternalOperatorsOnSubscribeToMultimap *self, RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory, id<RxFunctionsFunc1> collectionFactory);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *new_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory, id<RxFunctionsFunc1> collectionFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeToMultimap *create_RxInternalOperatorsOnSubscribeToMultimap_initWithRxObservable_withRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc0_withRxFunctionsFunc1_(RxObservable *source, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc0> mapFactory, id<RxFunctionsFunc1> collectionFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeToMultimap)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeToMultimap")
