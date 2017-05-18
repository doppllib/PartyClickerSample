//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PDDatabaseHelper")
#ifdef RESTRICT_PDDatabaseHelper
#define INCLUDE_ALL_PDDatabaseHelper 0
#else
#define INCLUDE_ALL_PDDatabaseHelper 1
#endif
#undef RESTRICT_PDDatabaseHelper

#if !defined (PDDatabaseHelper_) && (INCLUDE_ALL_PDDatabaseHelper || defined(INCLUDE_PDDatabaseHelper))
#define PDDatabaseHelper_

#define RESTRICT_PDDataProvider 1
#define INCLUDE_PDDataProvider 1
#include "PDDataProvider.h"

@class PDParty;
@class PDPartyDatabase;
@protocol JavaUtilList;

@interface PDDatabaseHelper : NSObject < PDDataProvider >

#pragma mark Public

- (instancetype)initWithPDPartyDatabase:(PDPartyDatabase *)partyDatabase;

- (void)addPersonWithPDParty:(PDParty *)party
                 withBoolean:(jboolean)coming;

- (id<JavaUtilList>)allParties;

- (id<JavaUtilList>)allPeopleForPartyWithPDParty:(PDParty *)party;

- (jint)countCurrentPartyWithInt:(jint)partyId;

- (PDParty *)createPartyWithNSString:(NSString *)name;

- (void)deletePartyWithPDParty:(PDParty *)party;

- (PDParty *)loadPartyWithInt:(jint)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(PDDatabaseHelper)

FOUNDATION_EXPORT void PDDatabaseHelper_initWithPDPartyDatabase_(PDDatabaseHelper *self, PDPartyDatabase *partyDatabase);

FOUNDATION_EXPORT PDDatabaseHelper *new_PDDatabaseHelper_initWithPDPartyDatabase_(PDPartyDatabase *partyDatabase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PDDatabaseHelper *create_PDDatabaseHelper_initWithPDPartyDatabase_(PDPartyDatabase *partyDatabase);

J2OBJC_TYPE_LITERAL_HEADER(PDDatabaseHelper)

@compatibility_alias ComKgalliganPartyclickerDataDatabaseHelper PDDatabaseHelper;

#endif

#pragma pop_macro("INCLUDE_ALL_PDDatabaseHelper")
