//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxObserversSerializedObserver")
#ifdef RESTRICT_RxObserversSerializedObserver
#define INCLUDE_ALL_RxObserversSerializedObserver 0
#else
#define INCLUDE_ALL_RxObserversSerializedObserver 1
#endif
#undef RESTRICT_RxObserversSerializedObserver

#if !defined (RxObserversSerializedObserver_) && (INCLUDE_ALL_RxObserversSerializedObserver || defined(INCLUDE_RxObserversSerializedObserver))
#define RxObserversSerializedObserver_

#define RESTRICT_RxObserver 1
#define INCLUDE_RxObserver 1
#include "RxObserver.h"

@interface RxObserversSerializedObserver : NSObject < RxObserver >

#pragma mark Public

- (instancetype)initWithRxObserver:(id<RxObserver>)s;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversSerializedObserver)

FOUNDATION_EXPORT void RxObserversSerializedObserver_initWithRxObserver_(RxObserversSerializedObserver *self, id<RxObserver> s);

FOUNDATION_EXPORT RxObserversSerializedObserver *new_RxObserversSerializedObserver_initWithRxObserver_(id<RxObserver> s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSerializedObserver *create_RxObserversSerializedObserver_initWithRxObserver_(id<RxObserver> s);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversSerializedObserver)

#endif

#if !defined (RxObserversSerializedObserver_FastList_) && (INCLUDE_ALL_RxObserversSerializedObserver || defined(INCLUDE_RxObserversSerializedObserver_FastList))
#define RxObserversSerializedObserver_FastList_

@class IOSObjectArray;

@interface RxObserversSerializedObserver_FastList : NSObject {
 @public
  IOSObjectArray *array_;
  jint size_;
}

#pragma mark Public

- (void)addWithId:(id)o;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversSerializedObserver_FastList)

J2OBJC_FIELD_SETTER(RxObserversSerializedObserver_FastList, array_, IOSObjectArray *)

FOUNDATION_EXPORT void RxObserversSerializedObserver_FastList_init(RxObserversSerializedObserver_FastList *self);

FOUNDATION_EXPORT RxObserversSerializedObserver_FastList *new_RxObserversSerializedObserver_FastList_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSerializedObserver_FastList *create_RxObserversSerializedObserver_FastList_init();

J2OBJC_TYPE_LITERAL_HEADER(RxObserversSerializedObserver_FastList)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversSerializedObserver")
