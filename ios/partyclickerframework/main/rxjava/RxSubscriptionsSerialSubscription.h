//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxSubscriptionsSerialSubscription")
#ifdef RESTRICT_RxSubscriptionsSerialSubscription
#define INCLUDE_ALL_RxSubscriptionsSerialSubscription 0
#else
#define INCLUDE_ALL_RxSubscriptionsSerialSubscription 1
#endif
#undef RESTRICT_RxSubscriptionsSerialSubscription

#if !defined (RxSubscriptionsSerialSubscription_) && (INCLUDE_ALL_RxSubscriptionsSerialSubscription || defined(INCLUDE_RxSubscriptionsSerialSubscription))
#define RxSubscriptionsSerialSubscription_

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "RxSubscription.h"

@class RxInternalSubscriptionsSequentialSubscription;

@interface RxSubscriptionsSerialSubscription : NSObject < RxSubscription > {
 @public
  RxInternalSubscriptionsSequentialSubscription *state_;
}

#pragma mark Public

- (instancetype)init;

- (id<RxSubscription>)get;

- (jboolean)isUnsubscribed;

- (void)setWithRxSubscription:(id<RxSubscription>)s;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubscriptionsSerialSubscription)

J2OBJC_FIELD_SETTER(RxSubscriptionsSerialSubscription, state_, RxInternalSubscriptionsSequentialSubscription *)

FOUNDATION_EXPORT void RxSubscriptionsSerialSubscription_init(RxSubscriptionsSerialSubscription *self);

FOUNDATION_EXPORT RxSubscriptionsSerialSubscription *new_RxSubscriptionsSerialSubscription_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubscriptionsSerialSubscription *create_RxSubscriptionsSerialSubscription_init();

J2OBJC_TYPE_LITERAL_HEADER(RxSubscriptionsSerialSubscription)

#endif

#pragma pop_macro("INCLUDE_ALL_RxSubscriptionsSerialSubscription")
