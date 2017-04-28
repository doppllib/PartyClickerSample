//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PTMemoryDataProvider")
#ifdef RESTRICT_PTMemoryDataProvider
#define INCLUDE_ALL_PTMemoryDataProvider 0
#else
#define INCLUDE_ALL_PTMemoryDataProvider 1
#endif
#undef RESTRICT_PTMemoryDataProvider

#if !defined (PTMemoryDataProvider_) && (INCLUDE_ALL_PTMemoryDataProvider || defined(INCLUDE_PTMemoryDataProvider))
#define PTMemoryDataProvider_

#define RESTRICT_PDDataProvider 1
#define INCLUDE_PDDataProvider 1
#include "PDDataProvider.h"

@class PDParty;
@protocol JavaUtilList;

@interface PTMemoryDataProvider : NSObject < PDDataProvider > {
 @public
  volatile_jint idCounter_;
  id<JavaUtilList> parties_;
}

#pragma mark Public

- (instancetype)init;

- (void)addPersonWithPDParty:(PDParty *)party
                 withBoolean:(jboolean)coming;

- (id<JavaUtilList>)allParties;

- (id<JavaUtilList>)allPeopleForPartyWithPDParty:(PDParty *)party;

- (jint)countCurrentPartyWithInt:(jint)id_;

- (PDParty *)createPartyWithNSString:(NSString *)name;

- (void)deletePartyWithPDParty:(PDParty *)party;

- (PDParty *)loadPartyWithInt:(jint)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(PTMemoryDataProvider)

J2OBJC_FIELD_SETTER(PTMemoryDataProvider, parties_, id<JavaUtilList>)

FOUNDATION_EXPORT void PTMemoryDataProvider_init(PTMemoryDataProvider *self);

FOUNDATION_EXPORT PTMemoryDataProvider *new_PTMemoryDataProvider_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PTMemoryDataProvider *create_PTMemoryDataProvider_init();

J2OBJC_TYPE_LITERAL_HEADER(PTMemoryDataProvider)

@compatibility_alias ComKgalliganPartyclickerTestMemoryDataProvider PTMemoryDataProvider;

#endif

#if !defined (PTMemoryDataProvider_MemParty_) && (INCLUDE_ALL_PTMemoryDataProvider || defined(INCLUDE_PTMemoryDataProvider_MemParty))
#define PTMemoryDataProvider_MemParty_

#define RESTRICT_PDParty 1
#define INCLUDE_PDParty 1
#include "PDParty.h"

@protocol JavaUtilList;

@interface PTMemoryDataProvider_MemParty : PDParty {
 @public
  id<JavaUtilList> people_;
}

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(PTMemoryDataProvider_MemParty)

J2OBJC_FIELD_SETTER(PTMemoryDataProvider_MemParty, people_, id<JavaUtilList>)

FOUNDATION_EXPORT void PTMemoryDataProvider_MemParty_init(PTMemoryDataProvider_MemParty *self);

FOUNDATION_EXPORT PTMemoryDataProvider_MemParty *new_PTMemoryDataProvider_MemParty_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PTMemoryDataProvider_MemParty *create_PTMemoryDataProvider_MemParty_init();

J2OBJC_TYPE_LITERAL_HEADER(PTMemoryDataProvider_MemParty)

#endif

#pragma pop_macro("INCLUDE_ALL_PTMemoryDataProvider")