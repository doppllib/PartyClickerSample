//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy")
#ifdef RESTRICT_RxInternalOperatorsOperatorGroupBy
#define INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorGroupBy

#if !defined (RxInternalOperatorsOperatorGroupBy_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy))
#define RxInternalOperatorsOperatorGroupBy_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOperatorGroupBy : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc1> keySelector_;
  id<RxFunctionsFunc1> valueSelector_;
  jint bufferSize_;
  jboolean delayError_;
  id<RxFunctionsFunc1> mapFactory_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector;

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector;

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapFactory;

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector
                                 withInt:(jint)bufferSize
                             withBoolean:(jboolean)delayError
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapFactory;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorGroupBy)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy, keySelector_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy, valueSelector_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy, mapFactory_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorGroupBy *self, id<RxFunctionsFunc1> keySelector);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *new_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *create_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_(RxInternalOperatorsOperatorGroupBy *self, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *new_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *create_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc1_(RxInternalOperatorsOperatorGroupBy *self, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc1> mapFactory);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *new_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc1> mapFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *create_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, id<RxFunctionsFunc1> mapFactory);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(RxInternalOperatorsOperatorGroupBy *self, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *new_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy *create_RxInternalOperatorsOperatorGroupBy_initWithRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy)

#endif

#if !defined (RxInternalOperatorsOperatorGroupBy_GroupByProducer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy_GroupByProducer))
#define RxInternalOperatorsOperatorGroupBy_GroupByProducer_

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "RxProducer.h"

@class RxInternalOperatorsOperatorGroupBy_GroupBySubscriber;

@interface RxInternalOperatorsOperatorGroupBy_GroupByProducer : NSObject < RxProducer > {
 @public
  __unsafe_unretained RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorGroupBy_GroupBySubscriber:(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *)parent;

- (void)requestWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorGroupBy_GroupByProducer)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_GroupByProducer_initWithRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_(RxInternalOperatorsOperatorGroupBy_GroupByProducer *self, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupByProducer *new_RxInternalOperatorsOperatorGroupBy_GroupByProducer_initWithRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupByProducer *create_RxInternalOperatorsOperatorGroupBy_GroupByProducer_initWithRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy_GroupByProducer)

#endif

#if !defined (RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber))
#define RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class JavaUtilConcurrentAtomicAtomicBoolean;
@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicLong;
@class RxInternalOperatorsOperatorGroupBy_GroupByProducer;
@class RxInternalProducersProducerArbiter;
@protocol JavaUtilMap;
@protocol JavaUtilQueue;
@protocol RxFunctionsFunc1;
@protocol RxProducer;

@interface RxInternalOperatorsOperatorGroupBy_GroupBySubscriber : RxSubscriber {
 @public
  RxSubscriber *actual_;
  id<RxFunctionsFunc1> keySelector_;
  id<RxFunctionsFunc1> valueSelector_;
  jint bufferSize_;
  jboolean delayError_;
  id<JavaUtilMap> groups_;
  id<JavaUtilQueue> queue_;
  RxInternalOperatorsOperatorGroupBy_GroupByProducer *producer_GroupBySubscriber_;
  id<JavaUtilQueue> evictedKeys_;
  RxInternalProducersProducerArbiter *s_;
  JavaUtilConcurrentAtomicAtomicBoolean *cancelled_;
  JavaUtilConcurrentAtomicAtomicLong *requested_GroupBySubscriber_;
  JavaUtilConcurrentAtomicAtomicInteger *groupCount_;
  NSException *error_;
  volatile_jboolean done_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)valueSelector
                             withInt:(jint)bufferSize
                         withBoolean:(jboolean)delayError
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapFactory;

- (void)cancel;

- (void)cancelWithId:(id)key;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)t;

- (void)onNextWithId:(id)t;

- (void)requestMoreWithLong:(jlong)n;

- (void)setProducerWithRxProducer:(id<RxProducer>)s;

#pragma mark Package-Private

- (jboolean)checkTerminatedWithBoolean:(jboolean)d
                           withBoolean:(jboolean)empty
                      withRxSubscriber:(RxSubscriber *)a
                     withJavaUtilQueue:(id<JavaUtilQueue>)q;

- (void)drain;

- (void)errorAllWithRxSubscriber:(RxSubscriber *)a
               withJavaUtilQueue:(id<JavaUtilQueue>)q
                 withNSException:(NSException *)ex;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, keySelector_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, valueSelector_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, groups_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, producer_GroupBySubscriber_, RxInternalOperatorsOperatorGroupBy_GroupByProducer *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, evictedKeys_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, s_, RxInternalProducersProducerArbiter *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, cancelled_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, requested_GroupBySubscriber_, JavaUtilConcurrentAtomicAtomicLong *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, groupCount_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, wip_, JavaUtilConcurrentAtomicAtomicInteger *)

inline id RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_get_NULL_KEY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_NULL_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber, NULL_KEY, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *self, RxSubscriber *actual, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *new_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(RxSubscriber *actual, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *create_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withRxFunctionsFunc1_withInt_withBoolean_withRxFunctionsFunc1_(RxSubscriber *actual, id<RxFunctionsFunc1> keySelector, id<RxFunctionsFunc1> valueSelector, jint bufferSize, jboolean delayError, id<RxFunctionsFunc1> mapFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction))
#define RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction_

#define RESTRICT_RxFunctionsAction1 1
#define INCLUDE_RxFunctionsAction1 1
#include "RxFunctionsAction1.h"

@protocol JavaUtilQueue;

@interface RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction : NSObject < RxFunctionsAction1 > {
 @public
  id<JavaUtilQueue> evictedKeys_;
}

#pragma mark Public

- (void)callWithId:(id)key;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilQueue:(id<JavaUtilQueue>)evictedKeys;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction, evictedKeys_, id<JavaUtilQueue>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction_initWithJavaUtilQueue_(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction *self, id<JavaUtilQueue> evictedKeys);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction *new_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction_initWithJavaUtilQueue_(id<JavaUtilQueue> evictedKeys) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction *create_RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction_initWithJavaUtilQueue_(id<JavaUtilQueue> evictedKeys);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber_EvictionAction)

#endif

#if !defined (RxInternalOperatorsOperatorGroupBy_GroupedUnicast_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy_GroupedUnicast))
#define RxInternalOperatorsOperatorGroupBy_GroupedUnicast_

#define RESTRICT_RxObservablesGroupedObservable 1
#define INCLUDE_RxObservablesGroupedObservable 1
#include "RxObservablesGroupedObservable.h"

@class RxInternalOperatorsOperatorGroupBy_GroupBySubscriber;
@class RxInternalOperatorsOperatorGroupBy_State;

@interface RxInternalOperatorsOperatorGroupBy_GroupedUnicast : RxObservablesGroupedObservable {
 @public
  RxInternalOperatorsOperatorGroupBy_State *state_;
}

#pragma mark Public

+ (RxInternalOperatorsOperatorGroupBy_GroupedUnicast *)createWithWithId:(id)key
                                                                withInt:(jint)bufferSize
               withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber:(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *)parent
                                                            withBoolean:(jboolean)delayError;

- (void)onComplete;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Protected

- (instancetype)initWithId:(id)key
withRxInternalOperatorsOperatorGroupBy_State:(RxInternalOperatorsOperatorGroupBy_State *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorGroupBy_GroupedUnicast)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_GroupedUnicast, state_, RxInternalOperatorsOperatorGroupBy_State *)

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupedUnicast *RxInternalOperatorsOperatorGroupBy_GroupedUnicast_createWithWithId_withInt_withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_withBoolean_(id key, jint bufferSize, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent, jboolean delayError);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_GroupedUnicast_initWithId_withRxInternalOperatorsOperatorGroupBy_State_(RxInternalOperatorsOperatorGroupBy_GroupedUnicast *self, id key, RxInternalOperatorsOperatorGroupBy_State *state);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupedUnicast *new_RxInternalOperatorsOperatorGroupBy_GroupedUnicast_initWithId_withRxInternalOperatorsOperatorGroupBy_State_(id key, RxInternalOperatorsOperatorGroupBy_State *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_GroupedUnicast *create_RxInternalOperatorsOperatorGroupBy_GroupedUnicast_initWithId_withRxInternalOperatorsOperatorGroupBy_State_(id key, RxInternalOperatorsOperatorGroupBy_State *state);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy_GroupedUnicast)

#endif

#if !defined (RxInternalOperatorsOperatorGroupBy_State_) && (INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy || defined(INCLUDE_RxInternalOperatorsOperatorGroupBy_State))
#define RxInternalOperatorsOperatorGroupBy_State_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicInteger 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicInteger 1
#include "java/util/concurrent/atomic/AtomicInteger.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "RxProducer.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class JavaUtilConcurrentAtomicAtomicBoolean;
@class JavaUtilConcurrentAtomicAtomicLong;
@class JavaUtilConcurrentAtomicAtomicReference;
@class RxInternalOperatorsOperatorGroupBy_GroupBySubscriber;
@class RxSubscriber;
@protocol JavaUtilQueue;

@interface RxInternalOperatorsOperatorGroupBy_State : JavaUtilConcurrentAtomicAtomicInteger < RxProducer, RxSubscription, RxObservable_OnSubscribe > {
 @public
  id key_;
  id<JavaUtilQueue> queue_;
  RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent_;
  jboolean delayError_;
  JavaUtilConcurrentAtomicAtomicLong *requested_;
  volatile_jboolean done_;
  NSException *error_;
  JavaUtilConcurrentAtomicAtomicBoolean *cancelled_;
  JavaUtilConcurrentAtomicAtomicReference *actual_;
  JavaUtilConcurrentAtomicAtomicBoolean *once_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)bufferSize
withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber:(RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *)parent
                     withId:(id)key
                withBoolean:(jboolean)delayError;

- (void)callWithId:(RxSubscriber *)s;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (jboolean)isUnsubscribed;

- (void)onComplete;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (void)requestWithLong:(jlong)n;

- (void)unsubscribe;

#pragma mark Package-Private

- (jboolean)checkTerminatedWithBoolean:(jboolean)d
                           withBoolean:(jboolean)empty
                      withRxSubscriber:(RxSubscriber *)a
                           withBoolean:(jboolean)delayError;

- (void)drain;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorGroupBy_State)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, key_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, parent_, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, requested_, JavaUtilConcurrentAtomicAtomicLong *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, error_, NSException *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, cancelled_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, actual_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorGroupBy_State, once_, JavaUtilConcurrentAtomicAtomicBoolean *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorGroupBy_State_initWithInt_withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_withId_withBoolean_(RxInternalOperatorsOperatorGroupBy_State *self, jint bufferSize, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent, id key, jboolean delayError);

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_State *new_RxInternalOperatorsOperatorGroupBy_State_initWithInt_withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_withId_withBoolean_(jint bufferSize, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent, id key, jboolean delayError) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorGroupBy_State *create_RxInternalOperatorsOperatorGroupBy_State_initWithInt_withRxInternalOperatorsOperatorGroupBy_GroupBySubscriber_withId_withBoolean_(jint bufferSize, RxInternalOperatorsOperatorGroupBy_GroupBySubscriber *parent, id key, jboolean delayError);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorGroupBy_State)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorGroupBy")
