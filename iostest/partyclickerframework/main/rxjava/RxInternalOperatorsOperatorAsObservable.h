//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable")
#ifdef RESTRICT_RxInternalOperatorsOperatorAsObservable
#define INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorAsObservable

#if !defined (RxInternalOperatorsOperatorAsObservable_) && (INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable || defined(INCLUDE_RxInternalOperatorsOperatorAsObservable))
#define RxInternalOperatorsOperatorAsObservable_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class RxSubscriber;

@interface RxInternalOperatorsOperatorAsObservable : NSObject < RxObservable_Operator >

#pragma mark Public

- (RxSubscriber *)callWithId:(RxSubscriber *)s;

+ (RxInternalOperatorsOperatorAsObservable *)instance;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorAsObservable)

FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable *RxInternalOperatorsOperatorAsObservable_instance();

FOUNDATION_EXPORT void RxInternalOperatorsOperatorAsObservable_init(RxInternalOperatorsOperatorAsObservable *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable *new_RxInternalOperatorsOperatorAsObservable_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable *create_RxInternalOperatorsOperatorAsObservable_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorAsObservable)

#endif

#if !defined (RxInternalOperatorsOperatorAsObservable_Holder_) && (INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable || defined(INCLUDE_RxInternalOperatorsOperatorAsObservable_Holder))
#define RxInternalOperatorsOperatorAsObservable_Holder_

@class RxInternalOperatorsOperatorAsObservable;

@interface RxInternalOperatorsOperatorAsObservable_Holder : NSObject

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorAsObservable_Holder)

inline RxInternalOperatorsOperatorAsObservable *RxInternalOperatorsOperatorAsObservable_Holder_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable *RxInternalOperatorsOperatorAsObservable_Holder_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorAsObservable_Holder, INSTANCE, RxInternalOperatorsOperatorAsObservable *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorAsObservable_Holder_init(RxInternalOperatorsOperatorAsObservable_Holder *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable_Holder *new_RxInternalOperatorsOperatorAsObservable_Holder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorAsObservable_Holder *create_RxInternalOperatorsOperatorAsObservable_Holder_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorAsObservable_Holder)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorAsObservable")
