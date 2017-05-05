//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeReduce
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeReduce

#if !defined (RxInternalOperatorsOnSubscribeReduce_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce || defined(INCLUDE_RxInternalOperatorsOnSubscribeReduce))
#define RxInternalOperatorsOnSubscribeReduce_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOnSubscribeReduce : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservable *source_;
  id<RxFunctionsFunc2> reducer_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc2:(id<RxFunctionsFunc2>)reducer;

- (void)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeReduce)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeReduce, source_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeReduce, reducer_, id<RxFunctionsFunc2>)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeReduce_initWithRxObservable_withRxFunctionsFunc2_(RxInternalOperatorsOnSubscribeReduce *self, RxObservable *source, id<RxFunctionsFunc2> reducer);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeReduce *new_RxInternalOperatorsOnSubscribeReduce_initWithRxObservable_withRxFunctionsFunc2_(RxObservable *source, id<RxFunctionsFunc2> reducer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeReduce *create_RxInternalOperatorsOnSubscribeReduce_initWithRxObservable_withRxFunctionsFunc2_(RxObservable *source, id<RxFunctionsFunc2> reducer);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeReduce)

#endif

#if !defined (RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce || defined(INCLUDE_RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber))
#define RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber : RxSubscriber {
 @public
  RxSubscriber *actual_;
  id<RxFunctionsFunc2> reducer_;
  id value_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                withRxFunctionsFunc2:(id<RxFunctionsFunc2>)reducer;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)downstreamRequestWithLong:(jlong)n;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber, reducer_, id<RxFunctionsFunc2>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber, value_, id)

inline id RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber, EMPTY, id)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber *self, RxSubscriber *actual, id<RxFunctionsFunc2> reducer);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber *new_RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_(RxSubscriber *actual, id<RxFunctionsFunc2> reducer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber *create_RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_(RxSubscriber *actual, id<RxFunctionsFunc2> reducer);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeReduce_ReduceSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeReduce")