//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeSingle")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeSingle
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeSingle 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeSingle 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeSingle

#if !defined (RxInternalOperatorsOnSubscribeSingle_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeSingle || defined(INCLUDE_RxInternalOperatorsOnSubscribeSingle))
#define RxInternalOperatorsOnSubscribeSingle_

#define RESTRICT_RxSingle 1
#define INCLUDE_RxSingle_OnSubscribe 1
#include "RxSingle.h"

@class RxObservable;
@class RxSingleSubscriber;

@interface RxInternalOperatorsOnSubscribeSingle : NSObject < RxSingle_OnSubscribe >

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)observable;

- (void)callWithId:(RxSingleSubscriber *)child;

+ (RxInternalOperatorsOnSubscribeSingle *)createWithRxObservable:(RxObservable *)observable;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeSingle)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeSingle_initWithRxObservable_(RxInternalOperatorsOnSubscribeSingle *self, RxObservable *observable);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeSingle *new_RxInternalOperatorsOnSubscribeSingle_initWithRxObservable_(RxObservable *observable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeSingle *create_RxInternalOperatorsOnSubscribeSingle_initWithRxObservable_(RxObservable *observable);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeSingle *RxInternalOperatorsOnSubscribeSingle_createWithRxObservable_(RxObservable *observable);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeSingle)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeSingle")