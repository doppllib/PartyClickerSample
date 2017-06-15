//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseSqliteSQLiteDirectCursorDriver")
#ifdef RESTRICT_AndroidDatabaseSqliteSQLiteDirectCursorDriver
#define INCLUDE_ALL_AndroidDatabaseSqliteSQLiteDirectCursorDriver 0
#else
#define INCLUDE_ALL_AndroidDatabaseSqliteSQLiteDirectCursorDriver 1
#endif
#undef RESTRICT_AndroidDatabaseSqliteSQLiteDirectCursorDriver

#if !defined (AndroidDatabaseSqliteSQLiteDirectCursorDriver_) && (INCLUDE_ALL_AndroidDatabaseSqliteSQLiteDirectCursorDriver || defined(INCLUDE_AndroidDatabaseSqliteSQLiteDirectCursorDriver))
#define AndroidDatabaseSqliteSQLiteDirectCursorDriver_

#define RESTRICT_AndroidDatabaseSqliteSQLiteCursorDriver 1
#define INCLUDE_AndroidDatabaseSqliteSQLiteCursorDriver 1
#include "AndroidDatabaseSqliteSQLiteCursorDriver.h"

@class AndroidDatabaseSqliteSQLiteDatabase;
@class AndroidOsCancellationSignal;
@class IOSObjectArray;
@protocol AndroidDatabaseCursor;
@protocol AndroidDatabaseSqliteSQLiteDatabase_CursorFactory;

@interface AndroidDatabaseSqliteSQLiteDirectCursorDriver : NSObject < AndroidDatabaseSqliteSQLiteCursorDriver >

#pragma mark Public

- (instancetype)initWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                               withNSString:(NSString *)sql
                                               withNSString:(NSString *)editTable
                            withAndroidOsCancellationSignal:(AndroidOsCancellationSignal *)cancellationSignal;

- (void)cursorClosed;

- (void)cursorDeactivated;

- (void)cursorRequeriedWithAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)cursor;

- (id<AndroidDatabaseCursor>)queryWithAndroidDatabaseSqliteSQLiteDatabase_CursorFactory:(id<AndroidDatabaseSqliteSQLiteDatabase_CursorFactory>)factory
                                                                      withNSStringArray:(IOSObjectArray *)selectionArgs;

- (void)setBindArgumentsWithNSStringArray:(IOSObjectArray *)bindArgs;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseSqliteSQLiteDirectCursorDriver)

FOUNDATION_EXPORT void AndroidDatabaseSqliteSQLiteDirectCursorDriver_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteDirectCursorDriver *self, AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, NSString *editTable, AndroidOsCancellationSignal *cancellationSignal);

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDirectCursorDriver *new_AndroidDatabaseSqliteSQLiteDirectCursorDriver_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, NSString *editTable, AndroidOsCancellationSignal *cancellationSignal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDirectCursorDriver *create_AndroidDatabaseSqliteSQLiteDirectCursorDriver_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, NSString *editTable, AndroidOsCancellationSignal *cancellationSignal);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseSqliteSQLiteDirectCursorDriver)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseSqliteSQLiteDirectCursorDriver")
