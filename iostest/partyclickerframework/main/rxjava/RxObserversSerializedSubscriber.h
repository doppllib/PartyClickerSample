//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxObserversSerializedSubscriber")
#ifdef RESTRICT_RxObserversSerializedSubscriber
#define INCLUDE_ALL_RxObserversSerializedSubscriber 0
#else
#define INCLUDE_ALL_RxObserversSerializedSubscriber 1
#endif
#undef RESTRICT_RxObserversSerializedSubscriber

#if !defined (RxObserversSerializedSubscriber_) && (INCLUDE_ALL_RxObserversSerializedSubscriber || defined(INCLUDE_RxObserversSerializedSubscriber))
#define RxObserversSerializedSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "RxSubscriber.h"

@interface RxObserversSerializedSubscriber : RxSubscriber

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)s;

- (instancetype)initWithRxSubscriber:(RxSubscriber *)s
                         withBoolean:(jboolean)shareSubscriptions;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversSerializedSubscriber)

FOUNDATION_EXPORT void RxObserversSerializedSubscriber_initWithRxSubscriber_(RxObserversSerializedSubscriber *self, RxSubscriber *s);

FOUNDATION_EXPORT RxObserversSerializedSubscriber *new_RxObserversSerializedSubscriber_initWithRxSubscriber_(RxSubscriber *s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSerializedSubscriber *create_RxObserversSerializedSubscriber_initWithRxSubscriber_(RxSubscriber *s);

FOUNDATION_EXPORT void RxObserversSerializedSubscriber_initWithRxSubscriber_withBoolean_(RxObserversSerializedSubscriber *self, RxSubscriber *s, jboolean shareSubscriptions);

FOUNDATION_EXPORT RxObserversSerializedSubscriber *new_RxObserversSerializedSubscriber_initWithRxSubscriber_withBoolean_(RxSubscriber *s, jboolean shareSubscriptions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSerializedSubscriber *create_RxObserversSerializedSubscriber_initWithRxSubscriber_withBoolean_(RxSubscriber *s, jboolean shareSubscriptions);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversSerializedSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversSerializedSubscriber")