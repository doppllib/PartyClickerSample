//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseContentObservable")
#ifdef RESTRICT_AndroidDatabaseContentObservable
#define INCLUDE_ALL_AndroidDatabaseContentObservable 0
#else
#define INCLUDE_ALL_AndroidDatabaseContentObservable 1
#endif
#undef RESTRICT_AndroidDatabaseContentObservable

#if !defined (AndroidDatabaseContentObservable_) && (INCLUDE_ALL_AndroidDatabaseContentObservable || defined(INCLUDE_AndroidDatabaseContentObservable))
#define AndroidDatabaseContentObservable_

#define RESTRICT_AndroidDatabaseObservable 1
#define INCLUDE_AndroidDatabaseObservable 1
#include "AndroidDatabaseObservable.h"

@class AndroidDatabaseContentObserver;
@class AndroidNetUri;

@interface AndroidDatabaseContentObservable : AndroidDatabaseObservable

#pragma mark Public

- (instancetype)init;

- (void)dispatchChangeWithBoolean:(jboolean)selfChange;

- (void)dispatchChangeWithBoolean:(jboolean)selfChange
                withAndroidNetUri:(AndroidNetUri *)uri;

- (void)notifyChangeWithBoolean:(jboolean)selfChange;

- (void)registerObserverWithId:(AndroidDatabaseContentObserver *)observer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseContentObservable)

FOUNDATION_EXPORT void AndroidDatabaseContentObservable_init(AndroidDatabaseContentObservable *self);

FOUNDATION_EXPORT AndroidDatabaseContentObservable *new_AndroidDatabaseContentObservable_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseContentObservable *create_AndroidDatabaseContentObservable_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseContentObservable)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseContentObservable")