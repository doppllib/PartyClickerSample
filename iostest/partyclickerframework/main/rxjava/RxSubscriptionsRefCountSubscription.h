//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxSubscriptionsRefCountSubscription")
#ifdef RESTRICT_RxSubscriptionsRefCountSubscription
#define INCLUDE_ALL_RxSubscriptionsRefCountSubscription 0
#else
#define INCLUDE_ALL_RxSubscriptionsRefCountSubscription 1
#endif
#undef RESTRICT_RxSubscriptionsRefCountSubscription

#if !defined (RxSubscriptionsRefCountSubscription_) && (INCLUDE_ALL_RxSubscriptionsRefCountSubscription || defined(INCLUDE_RxSubscriptionsRefCountSubscription))
#define RxSubscriptionsRefCountSubscription_

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@class JavaUtilConcurrentAtomicAtomicReference;
@class RxSubscriptionsRefCountSubscription_State;

@interface RxSubscriptionsRefCountSubscription : NSObject < RxSubscription > {
 @public
  JavaUtilConcurrentAtomicAtomicReference *state_;
}

#pragma mark Public

- (instancetype)initWithRxSubscription:(id<RxSubscription>)s;

- (id<RxSubscription>)get;

- (jboolean)isUnsubscribed;

- (void)unsubscribe;

#pragma mark Package-Private

- (void)unsubscribeAChild;

@end

J2OBJC_STATIC_INIT(RxSubscriptionsRefCountSubscription)

J2OBJC_FIELD_SETTER(RxSubscriptionsRefCountSubscription, state_, JavaUtilConcurrentAtomicAtomicReference *)

inline RxSubscriptionsRefCountSubscription_State *RxSubscriptionsRefCountSubscription_get_EMPTY_STATE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription_State *RxSubscriptionsRefCountSubscription_EMPTY_STATE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubscriptionsRefCountSubscription, EMPTY_STATE, RxSubscriptionsRefCountSubscription_State *)

FOUNDATION_EXPORT void RxSubscriptionsRefCountSubscription_initWithRxSubscription_(RxSubscriptionsRefCountSubscription *self, id<RxSubscription> s);

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription *new_RxSubscriptionsRefCountSubscription_initWithRxSubscription_(id<RxSubscription> s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription *create_RxSubscriptionsRefCountSubscription_initWithRxSubscription_(id<RxSubscription> s);

J2OBJC_TYPE_LITERAL_HEADER(RxSubscriptionsRefCountSubscription)

#endif

#if !defined (RxSubscriptionsRefCountSubscription_State_) && (INCLUDE_ALL_RxSubscriptionsRefCountSubscription || defined(INCLUDE_RxSubscriptionsRefCountSubscription_State))
#define RxSubscriptionsRefCountSubscription_State_

@interface RxSubscriptionsRefCountSubscription_State : NSObject {
 @public
  jboolean isUnsubscribed_;
  jint children_;
}

#pragma mark Package-Private

- (instancetype)initWithBoolean:(jboolean)u
                        withInt:(jint)c;

- (RxSubscriptionsRefCountSubscription_State *)addChild;

- (RxSubscriptionsRefCountSubscription_State *)removeChild;

- (RxSubscriptionsRefCountSubscription_State *)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubscriptionsRefCountSubscription_State)

FOUNDATION_EXPORT void RxSubscriptionsRefCountSubscription_State_initWithBoolean_withInt_(RxSubscriptionsRefCountSubscription_State *self, jboolean u, jint c);

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription_State *new_RxSubscriptionsRefCountSubscription_State_initWithBoolean_withInt_(jboolean u, jint c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription_State *create_RxSubscriptionsRefCountSubscription_State_initWithBoolean_withInt_(jboolean u, jint c);

J2OBJC_TYPE_LITERAL_HEADER(RxSubscriptionsRefCountSubscription_State)

#endif

#if !defined (RxSubscriptionsRefCountSubscription_InnerSubscription_) && (INCLUDE_ALL_RxSubscriptionsRefCountSubscription || defined(INCLUDE_RxSubscriptionsRefCountSubscription_InnerSubscription))
#define RxSubscriptionsRefCountSubscription_InnerSubscription_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicInteger 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicInteger 1
#include "java/util/concurrent/atomic/AtomicInteger.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@class RxSubscriptionsRefCountSubscription;

@interface RxSubscriptionsRefCountSubscription_InnerSubscription : JavaUtilConcurrentAtomicAtomicInteger < RxSubscription > {
 @public
  RxSubscriptionsRefCountSubscription *parent_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriptionsRefCountSubscription:(RxSubscriptionsRefCountSubscription *)parent;

- (jboolean)isUnsubscribed;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubscriptionsRefCountSubscription_InnerSubscription)

J2OBJC_FIELD_SETTER(RxSubscriptionsRefCountSubscription_InnerSubscription, parent_, RxSubscriptionsRefCountSubscription *)

FOUNDATION_EXPORT void RxSubscriptionsRefCountSubscription_InnerSubscription_initWithRxSubscriptionsRefCountSubscription_(RxSubscriptionsRefCountSubscription_InnerSubscription *self, RxSubscriptionsRefCountSubscription *parent);

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription_InnerSubscription *new_RxSubscriptionsRefCountSubscription_InnerSubscription_initWithRxSubscriptionsRefCountSubscription_(RxSubscriptionsRefCountSubscription *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubscriptionsRefCountSubscription_InnerSubscription *create_RxSubscriptionsRefCountSubscription_InnerSubscription_initWithRxSubscriptionsRefCountSubscription_(RxSubscriptionsRefCountSubscription *parent);

J2OBJC_TYPE_LITERAL_HEADER(RxSubscriptionsRefCountSubscription_InnerSubscription)

#endif

#pragma pop_macro("INCLUDE_ALL_RxSubscriptionsRefCountSubscription")