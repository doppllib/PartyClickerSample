//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime")
#ifdef RESTRICT_RxInternalOperatorsOperatorWindowWithTime
#define INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorWindowWithTime

#if !defined (RxInternalOperatorsOperatorWindowWithTime_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime || defined(INCLUDE_RxInternalOperatorsOperatorWindowWithTime))
#define RxInternalOperatorsOperatorWindowWithTime_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "RxObservable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

@interface RxInternalOperatorsOperatorWindowWithTime : NSObject < RxObservable_Operator > {
 @public
  jlong timespan_;
  jlong timeshift_;
  JavaUtilConcurrentTimeUnit *unit_;
  RxScheduler *scheduler_;
  jint size_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)timespan
                    withLong:(jlong)timeshift
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                     withInt:(jint)size
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorWindowWithTime)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime, unit_, JavaUtilConcurrentTimeUnit *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime, scheduler_, RxScheduler *)

inline id RxInternalOperatorsOperatorWindowWithTime_get_NEXT_SUBJECT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalOperatorsOperatorWindowWithTime_NEXT_SUBJECT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorWindowWithTime, NEXT_SUBJECT, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(RxInternalOperatorsOperatorWindowWithTime *self, jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint size, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime *new_RxInternalOperatorsOperatorWindowWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint size, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime *create_RxInternalOperatorsOperatorWindowWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint size, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithTime)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithTime_State_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime || defined(INCLUDE_RxInternalOperatorsOperatorWindowWithTime_State))
#define RxInternalOperatorsOperatorWindowWithTime_State_

@class RxObservable;
@protocol RxObserver;

@interface RxInternalOperatorsOperatorWindowWithTime_State : NSObject {
 @public
  id<RxObserver> consumer_;
  RxObservable *producer_;
  jint count_;
}

#pragma mark Public

- (instancetype)initWithRxObserver:(id<RxObserver>)consumer
                  withRxObservable:(RxObservable *)producer
                           withInt:(jint)count;

- (RxInternalOperatorsOperatorWindowWithTime_State *)clear;

- (RxInternalOperatorsOperatorWindowWithTime_State *)createWithRxObserver:(id<RxObserver>)consumer
                                                         withRxObservable:(RxObservable *)producer;

+ (RxInternalOperatorsOperatorWindowWithTime_State *)empty;

- (RxInternalOperatorsOperatorWindowWithTime_State *)next;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorWindowWithTime_State)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_State, consumer_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_State, producer_, RxObservable *)

inline RxInternalOperatorsOperatorWindowWithTime_State *RxInternalOperatorsOperatorWindowWithTime_State_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_State *RxInternalOperatorsOperatorWindowWithTime_State_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorWindowWithTime_State, EMPTY, RxInternalOperatorsOperatorWindowWithTime_State *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithTime_State_initWithRxObserver_withRxObservable_withInt_(RxInternalOperatorsOperatorWindowWithTime_State *self, id<RxObserver> consumer, RxObservable *producer, jint count);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_State *new_RxInternalOperatorsOperatorWindowWithTime_State_initWithRxObserver_withRxObservable_withInt_(id<RxObserver> consumer, RxObservable *producer, jint count) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_State *create_RxInternalOperatorsOperatorWindowWithTime_State_initWithRxObserver_withRxObservable_withInt_(id<RxObserver> consumer, RxObservable *producer, jint count);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_State *RxInternalOperatorsOperatorWindowWithTime_State_empty();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithTime_State)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime || defined(INCLUDE_RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber))
#define RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class RxInternalOperatorsOperatorWindowWithTime;
@class RxInternalOperatorsOperatorWindowWithTime_State;
@class RxScheduler_Worker;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  RxScheduler_Worker *worker_;
  id guard_;
  id<JavaUtilList> queue_;
  jboolean emitting_;
  volatile_id state_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorWindowWithTime:(RxInternalOperatorsOperatorWindowWithTime *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child
                                           withRxScheduler_Worker:(RxScheduler_Worker *)worker;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

- (void)onStart;

#pragma mark Package-Private

- (void)complete;

- (jboolean)drainWithJavaUtilList:(id<JavaUtilList>)queue;

- (jboolean)emitValueWithId:(id)t;

- (void)errorWithNSException:(NSException *)e;
#define errorWithJavaLangThrowable errorWithNSException

- (void)nextWindow;

- (jboolean)replaceSubject;

- (void)scheduleExact;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber, worker_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber, guard_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber, queue_, id<JavaUtilList>)
J2OBJC_VOLATILE_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber, state_, RxInternalOperatorsOperatorWindowWithTime_State *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber *self, RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber *new_RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber *create_RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithTime_ExactSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime || defined(INCLUDE_RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject))
#define RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject_

@class RxObservable;
@protocol RxObserver;

@interface RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject : NSObject {
 @public
  id<RxObserver> consumer_;
  RxObservable *producer_;
  jint count_;
}

#pragma mark Public

- (instancetype)initWithRxObserver:(id<RxObserver>)consumer
                  withRxObservable:(RxObservable *)producer;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject, consumer_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject, producer_, RxObservable *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject_initWithRxObserver_withRxObservable_(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject *self, id<RxObserver> consumer, RxObservable *producer);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject *new_RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject_initWithRxObserver_withRxObservable_(id<RxObserver> consumer, RxObservable *producer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject *create_RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject_initWithRxObserver_withRxObservable_(id<RxObserver> consumer, RxObservable *producer);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime || defined(INCLUDE_RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber))
#define RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class RxInternalOperatorsOperatorWindowWithTime;
@class RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject;
@class RxScheduler_Worker;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  RxScheduler_Worker *worker_;
  id guard_;
  id<JavaUtilList> chunks_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorWindowWithTime:(RxInternalOperatorsOperatorWindowWithTime *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child
                                           withRxScheduler_Worker:(RxScheduler_Worker *)worker;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

- (void)onStart;

#pragma mark Package-Private

- (RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject *)createCountedSerializedSubject;

- (void)scheduleChunk;

- (void)startNewChunk;

- (void)terminateChunkWithRxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject:(RxInternalOperatorsOperatorWindowWithTime_CountedSerializedSubject *)chunk;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber, worker_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber, guard_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber, chunks_, id<JavaUtilList>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber *self, RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber *new_RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber *create_RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorWindowWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *worker);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithTime_InexactSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorWindowWithTime")
