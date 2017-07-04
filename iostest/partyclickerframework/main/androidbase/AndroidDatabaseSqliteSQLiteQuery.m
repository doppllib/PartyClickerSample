//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseCursorWindow.h"
#include "AndroidDatabaseSqliteSQLiteDatabase.h"
#include "AndroidDatabaseSqliteSQLiteDatabaseCorruptException.h"
#include "AndroidDatabaseSqliteSQLiteException.h"
#include "AndroidDatabaseSqliteSQLiteProgram.h"
#include "AndroidDatabaseSqliteSQLiteQuery.h"
#include "AndroidDatabaseSqliteSQLiteSession.h"
#include "AndroidOsCancellationSignal.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/util/Log.h"

@interface AndroidDatabaseSqliteSQLiteQuery () {
 @public
  AndroidOsCancellationSignal *mCancellationSignal_;
}

@end

J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteQuery, mCancellationSignal_, AndroidOsCancellationSignal *)

inline NSString *AndroidDatabaseSqliteSQLiteQuery_get_TAG();
static NSString *AndroidDatabaseSqliteSQLiteQuery_TAG = @"SQLiteQuery";
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidDatabaseSqliteSQLiteQuery, TAG, NSString *)

@implementation AndroidDatabaseSqliteSQLiteQuery

- (instancetype)initWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                               withNSString:(NSString *)query
                            withAndroidOsCancellationSignal:(AndroidOsCancellationSignal *)cancellationSignal {
  AndroidDatabaseSqliteSQLiteQuery_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_(self, db, query, cancellationSignal);
  return self;
}

- (jint)fillWindowWithAndroidDatabaseCursorWindow:(AndroidDatabaseCursorWindow *)window
                                          withInt:(jint)startPos
                                          withInt:(jint)requiredPos
                                      withBoolean:(jboolean)countAllRows {
  [self acquireReference];
  @try {
    [((AndroidDatabaseCursorWindow *) nil_chk(window)) acquireReference];
    @try {
      jint numRows = [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeForCursorWindowWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withAndroidDatabaseCursorWindow:window withInt:startPos withInt:requiredPos withBoolean:countAllRows withInt:[self getConnectionFlags] withAndroidOsCancellationSignal:mCancellationSignal_];
      return numRows;
    }
    @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
      [self onCorruption];
      @throw ex;
    }
    @catch (AndroidDatabaseSqliteSQLiteException *ex) {
      AndroidUtilLog_eWithNSString_withNSString_(AndroidDatabaseSqliteSQLiteQuery_TAG, JreStrcat("$$$$", @"exception: ", [ex getMessage], @"; query: ", [self getSql]));
      @throw ex;
    }
    @finally {
      [window releaseReference];
    }
  }
  @finally {
    [self releaseReference];
  }
}

- (NSString *)description {
  return JreStrcat("$$", @"SQLiteQuery: ", [self getSql]);
}

- (void)dealloc {
  RELEASE_(mCancellationSignal_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithAndroidDatabaseSqliteSQLiteDatabase:withNSString:withAndroidOsCancellationSignal:);
  methods[1].selector = @selector(fillWindowWithAndroidDatabaseCursorWindow:withInt:withInt:withBoolean:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
    { "mCancellationSignal_", "LAndroidOsCancellationSignal;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidDatabaseSqliteSQLiteDatabase;LNSString;LAndroidOsCancellationSignal;", "fillWindow", "LAndroidDatabaseCursorWindow;IIZ", "toString", &AndroidDatabaseSqliteSQLiteQuery_TAG };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteQuery = { "SQLiteQuery", "android.database.sqlite", ptrTable, methods, fields, 7, 0x11, 3, 2, -1, -1, -1, -1, -1 };
  return &_AndroidDatabaseSqliteSQLiteQuery;
}

@end

void AndroidDatabaseSqliteSQLiteQuery_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteQuery *self, AndroidDatabaseSqliteSQLiteDatabase *db, NSString *query, AndroidOsCancellationSignal *cancellationSignal) {
  AndroidDatabaseSqliteSQLiteProgram_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_withAndroidOsCancellationSignal_(self, db, query, nil, cancellationSignal);
  JreStrongAssign(&self->mCancellationSignal_, cancellationSignal);
}

AndroidDatabaseSqliteSQLiteQuery *new_AndroidDatabaseSqliteSQLiteQuery_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *query, AndroidOsCancellationSignal *cancellationSignal) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteQuery, initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_, db, query, cancellationSignal)
}

AndroidDatabaseSqliteSQLiteQuery *create_AndroidDatabaseSqliteSQLiteQuery_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *query, AndroidOsCancellationSignal *cancellationSignal) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteQuery, initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withAndroidOsCancellationSignal_, db, query, cancellationSignal)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteQuery)
