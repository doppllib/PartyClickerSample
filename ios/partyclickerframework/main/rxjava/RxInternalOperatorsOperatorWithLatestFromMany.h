//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany")
#ifdef RESTRICT_RxInternalOperatorsOperatorWithLatestFromMany
#define INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorWithLatestFromMany

#if !defined (RxInternalOperatorsOperatorWithLatestFromMany_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany || defined(INCLUDE_RxInternalOperatorsOperatorWithLatestFromMany))
#define RxInternalOperatorsOperatorWithLatestFromMany_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "RxObservable.h"

@class IOSObjectArray;
@class RxObservable;
@class RxSubscriber;
@protocol JavaLangIterable;
@protocol RxFunctionsFuncN;

@interface RxInternalOperatorsOperatorWithLatestFromMany : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservable *main_;
  IOSObjectArray *others_;
  id<JavaLangIterable> othersIterable_;
  id<RxFunctionsFuncN> combiner_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)main
               withRxObservableArray:(IOSObjectArray *)others
                withJavaLangIterable:(id<JavaLangIterable>)othersIterable
                withRxFunctionsFuncN:(id<RxFunctionsFuncN>)combiner;

- (void)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWithLatestFromMany)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany, main_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany, others_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany, othersIterable_, id<JavaLangIterable>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany, combiner_, id<RxFunctionsFuncN>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWithLatestFromMany_initWithRxObservable_withRxObservableArray_withJavaLangIterable_withRxFunctionsFuncN_(RxInternalOperatorsOperatorWithLatestFromMany *self, RxObservable *main, IOSObjectArray *others, id<JavaLangIterable> othersIterable, id<RxFunctionsFuncN> combiner);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany *new_RxInternalOperatorsOperatorWithLatestFromMany_initWithRxObservable_withRxObservableArray_withJavaLangIterable_withRxFunctionsFuncN_(RxObservable *main, IOSObjectArray *others, id<JavaLangIterable> othersIterable, id<RxFunctionsFuncN> combiner) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany *create_RxInternalOperatorsOperatorWithLatestFromMany_initWithRxObservable_withRxObservableArray_withJavaLangIterable_withRxFunctionsFuncN_(RxObservable *main, IOSObjectArray *others, id<JavaLangIterable> othersIterable, id<RxFunctionsFuncN> combiner);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWithLatestFromMany)

#endif

#if !defined (RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany || defined(INCLUDE_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber))
#define RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicReferenceArray;
@protocol RxFunctionsFuncN;
@protocol RxProducer;

@interface RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber : RxSubscriber {
 @public
  RxSubscriber *actual_;
  id<RxFunctionsFuncN> combiner_;
  JavaUtilConcurrentAtomicAtomicReferenceArray *current_;
  JavaUtilConcurrentAtomicAtomicInteger *ready_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                withRxFunctionsFuncN:(id<RxFunctionsFuncN>)combiner
                             withInt:(jint)n;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

#pragma mark Package-Private

- (void)innerCompleteWithInt:(jint)index;

- (void)innerErrorWithInt:(jint)index
          withNSException:(NSException *)e;
#define withJavaLangThrowable withNSException

- (void)innerNextWithInt:(jint)index
                  withId:(id)o;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber, combiner_, id<RxFunctionsFuncN>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber, current_, JavaUtilConcurrentAtomicAtomicReferenceArray *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber, ready_, JavaUtilConcurrentAtomicAtomicInteger *)

inline id RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber, EMPTY, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_initWithRxSubscriber_withRxFunctionsFuncN_withInt_(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *self, RxSubscriber *actual, id<RxFunctionsFuncN> combiner, jint n);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *new_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_initWithRxSubscriber_withRxFunctionsFuncN_withInt_(RxSubscriber *actual, id<RxFunctionsFuncN> combiner, jint n) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *create_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_initWithRxSubscriber_withRxFunctionsFuncN_withInt_(RxSubscriber *actual, id<RxFunctionsFuncN> combiner, jint n);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany || defined(INCLUDE_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber))
#define RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@class RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber;

@interface RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber : RxSubscriber {
 @public
  RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *parent_;
  jint index_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber:(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *)parent
                                                                                       withInt:(jint)index;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#define onErrorWithJavaLangThrowable onErrorWithNSException

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber, parent_, RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber_initWithRxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_withInt_(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber *self, RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *parent, jint index);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber *new_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber_initWithRxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_withInt_(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *parent, jint index) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber *create_RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber_initWithRxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber_withInt_(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestMainSubscriber *parent, jint index);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWithLatestFromMany_WithLatestOtherSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorWithLatestFromMany")
