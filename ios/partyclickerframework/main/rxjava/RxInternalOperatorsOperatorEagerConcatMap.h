//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap")
#ifdef RESTRICT_RxInternalOperatorsOperatorEagerConcatMap
#define INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorEagerConcatMap

#if !defined (RxInternalOperatorsOperatorEagerConcatMap_) && (INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap || defined(INCLUDE_RxInternalOperatorsOperatorEagerConcatMap))
#define RxInternalOperatorsOperatorEagerConcatMap_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOperatorEagerConcatMap : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc1> mapper_;
  jint bufferSize_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper
                                 withInt:(jint)bufferSize
                                 withInt:(jint)maxConcurrent;

- (RxSubscriber *)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorEagerConcatMap)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap, mapper_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorEagerConcatMap_initWithRxFunctionsFunc1_withInt_withInt_(RxInternalOperatorsOperatorEagerConcatMap *self, id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent);

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap *new_RxInternalOperatorsOperatorEagerConcatMap_initWithRxFunctionsFunc1_withInt_withInt_(id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap *create_RxInternalOperatorsOperatorEagerConcatMap_initWithRxFunctionsFunc1_withInt_withInt_(id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorEagerConcatMap)

#endif

#if !defined (RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap || defined(INCLUDE_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer))
#define RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "RxProducer.h"

@class RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber;

@interface RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer : JavaUtilConcurrentAtomicAtomicLong < RxProducer > {
 @public
  RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber:(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *)parent;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)requestWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer, parent_, RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer *self, RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent);

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer *new_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer *create_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterProducer)

#endif

#if !defined (RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap || defined(INCLUDE_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber))
#define RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@protocol JavaUtilQueue;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber : RxSubscriber {
 @public
  id<RxFunctionsFunc1> mapper_;
  jint bufferSize_;
  RxSubscriber *actual_;
  id<JavaUtilQueue> subscribers_;
  volatile_jboolean done_;
  NSException *error_;
  volatile_jboolean cancelled_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper
                                 withInt:(jint)bufferSize
                                 withInt:(jint)maxConcurrent
                        withRxSubscriber:(RxSubscriber *)actual;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)cleanup;

- (void)drain;

- (void)init__ OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber, mapper_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber, subscribers_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_initWithRxFunctionsFunc1_withInt_withInt_withRxSubscriber_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *self, id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent, RxSubscriber *actual);

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *new_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_initWithRxFunctionsFunc1_withInt_withInt_withRxSubscriber_(id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent, RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *create_RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_initWithRxFunctionsFunc1_withInt_withInt_withRxSubscriber_(id<RxFunctionsFunc1> mapper, jint bufferSize, jint maxConcurrent, RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap || defined(INCLUDE_RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber))
#define RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber;
@protocol JavaUtilQueue;

@interface RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber : RxSubscriber {
 @public
  RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent_;
  id<JavaUtilQueue> queue_;
  volatile_jboolean done_;
  NSException *error_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber:(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *)parent
                                                                               withInt:(jint)bufferSize;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)requestMoreWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber, parent_, RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber, error_, NSException *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_withInt_(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber *self, RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent, jint bufferSize);

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber *new_RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_withInt_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber *create_RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber_initWithRxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber_withInt_(RxInternalOperatorsOperatorEagerConcatMap_EagerOuterSubscriber *parent, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorEagerConcatMap_EagerInnerSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorEagerConcatMap")
