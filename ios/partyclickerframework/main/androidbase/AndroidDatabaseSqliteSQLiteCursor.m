//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseAbstractWindowedCursor.h"
#include "AndroidDatabaseCursorWindow.h"
#include "AndroidDatabaseDatabaseUtils.h"
#include "AndroidDatabaseSqliteSQLiteCursor.h"
#include "AndroidDatabaseSqliteSQLiteCursorDriver.h"
#include "AndroidDatabaseSqliteSQLiteDatabase.h"
#include "AndroidDatabaseSqliteSQLiteQuery.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/util/Log.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/io/StringWriter.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@interface AndroidDatabaseSqliteSQLiteCursor () {
 @public
  NSString *mEditTable_;
  IOSObjectArray *mColumns_;
  AndroidDatabaseSqliteSQLiteQuery *mQuery_;
  id<AndroidDatabaseSqliteSQLiteCursorDriver> mDriver_;
  jint mCount_;
  jint mCursorWindowCapacity_;
  id<JavaUtilMap> mColumnNameMap_;
  NSException *mStackTrace_;
}

- (void)fillWindowWithInt:(jint)requiredPos;

@end

J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mEditTable_, NSString *)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mColumns_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mQuery_, AndroidDatabaseSqliteSQLiteQuery *)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mDriver_, id<AndroidDatabaseSqliteSQLiteCursorDriver>)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mColumnNameMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteCursor, mStackTrace_, NSException *)

__attribute__((unused)) static void AndroidDatabaseSqliteSQLiteCursor_fillWindowWithInt_(AndroidDatabaseSqliteSQLiteCursor *self, jint requiredPos);

__attribute__((unused)) static IOSObjectArray *AndroidDatabaseSqliteSQLiteCursor__Annotations$0();

NSString *AndroidDatabaseSqliteSQLiteCursor_TAG = @"SQLiteCursor";

@implementation AndroidDatabaseSqliteSQLiteCursor

- (instancetype)initWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                withAndroidDatabaseSqliteSQLiteCursorDriver:(id<AndroidDatabaseSqliteSQLiteCursorDriver>)driver
                                               withNSString:(NSString *)editTable
                       withAndroidDatabaseSqliteSQLiteQuery:(AndroidDatabaseSqliteSQLiteQuery *)query {
  AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(self, db, driver, editTable, query);
  return self;
}

- (instancetype)initWithAndroidDatabaseSqliteSQLiteCursorDriver:(id<AndroidDatabaseSqliteSQLiteCursorDriver>)driver
                                                   withNSString:(NSString *)editTable
                           withAndroidDatabaseSqliteSQLiteQuery:(AndroidDatabaseSqliteSQLiteQuery *)query {
  AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(self, driver, editTable, query);
  return self;
}

- (AndroidDatabaseSqliteSQLiteDatabase *)getDatabase {
  return [((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(mQuery_)) getDatabase];
}

- (jboolean)onMoveWithInt:(jint)oldPosition
                  withInt:(jint)newPosition {
  if (mWindow_ == nil || newPosition < [mWindow_ getStartPosition] || newPosition >= ([((AndroidDatabaseCursorWindow *) nil_chk(mWindow_)) getStartPosition] + [((AndroidDatabaseCursorWindow *) nil_chk(mWindow_)) getNumRows])) {
    AndroidDatabaseSqliteSQLiteCursor_fillWindowWithInt_(self, newPosition);
  }
  return true;
}

- (jint)getCount {
  if (mCount_ == AndroidDatabaseSqliteSQLiteCursor_NO_COUNT) {
    AndroidDatabaseSqliteSQLiteCursor_fillWindowWithInt_(self, 0);
  }
  return mCount_;
}

- (void)fillWindowWithInt:(jint)requiredPos {
  AndroidDatabaseSqliteSQLiteCursor_fillWindowWithInt_(self, requiredPos);
}

- (jint)getColumnIndexWithNSString:(NSString *)columnName {
  if (mColumnNameMap_ == nil) {
    IOSObjectArray *columns = mColumns_;
    jint columnCount = ((IOSObjectArray *) nil_chk(columns))->size_;
    JavaUtilHashMap *map = create_JavaUtilHashMap_initWithInt_withFloat_(columnCount, 1);
    for (jint i = 0; i < columnCount; i++) {
      [map putWithId:IOSObjectArray_Get(columns, i) withId:JavaLangInteger_valueOfWithInt_(i)];
    }
    JreStrongAssign(&mColumnNameMap_, map);
  }
  jint periodIndex = [((NSString *) nil_chk(columnName)) java_lastIndexOf:'.'];
  if (periodIndex != -1) {
    JavaLangException *e = create_JavaLangException_init();
    AndroidUtilLog_eWithNSString_withNSString_withNSException_(AndroidDatabaseSqliteSQLiteCursor_TAG, JreStrcat("$$", @"requesting column name with table name -- ", columnName), e);
    columnName = [columnName java_substring:periodIndex + 1];
  }
  JavaLangInteger *i = [((id<JavaUtilMap>) nil_chk(mColumnNameMap_)) getWithId:columnName];
  if (i != nil) {
    return [i intValue];
  }
  else {
    return -1;
  }
}

- (IOSObjectArray *)getColumnNames {
  return mColumns_;
}

- (void)deactivate {
  [super deactivate];
  [((id<AndroidDatabaseSqliteSQLiteCursorDriver>) nil_chk(mDriver_)) cursorDeactivated];
}

- (void)close {
  [super close];
  @synchronized(self) {
    [((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(mQuery_)) close];
    [((id<AndroidDatabaseSqliteSQLiteCursorDriver>) nil_chk(mDriver_)) cursorClosed];
  }
}

- (jboolean)requery {
  if ([self isClosed]) {
    return false;
  }
  @synchronized(self) {
    if (![((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk([((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(mQuery_)) getDatabase])) isOpen]) {
      return false;
    }
    if (mWindow_ != nil) {
      [mWindow_ clear];
    }
    mPos_ = -1;
    mCount_ = AndroidDatabaseSqliteSQLiteCursor_NO_COUNT;
    [((id<AndroidDatabaseSqliteSQLiteCursorDriver>) nil_chk(mDriver_)) cursorRequeriedWithAndroidDatabaseCursor:self];
  }
  @try {
    return [super requery];
  }
  @catch (JavaLangIllegalStateException *e) {
    AndroidUtilLog_wWithNSString_withNSString_withNSException_(AndroidDatabaseSqliteSQLiteCursor_TAG, JreStrcat("$$", @"requery() failed ", [((JavaLangIllegalStateException *) nil_chk(e)) getMessage]), e);
    return false;
  }
}

- (void)setWindowWithAndroidDatabaseCursorWindow:(AndroidDatabaseCursorWindow *)window {
  [super setWindowWithAndroidDatabaseCursorWindow:window];
  mCount_ = AndroidDatabaseSqliteSQLiteCursor_NO_COUNT;
}

- (void)setSelectionArgumentsWithNSStringArray:(IOSObjectArray *)selectionArgs {
  [((id<AndroidDatabaseSqliteSQLiteCursorDriver>) nil_chk(mDriver_)) setBindArgumentsWithNSStringArray:selectionArgs];
}

- (void)java_finalize {
  @try {
    if (mWindow_ != nil) {
      if (mStackTrace_ != nil) {
        NSString *sql = [((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(mQuery_)) getSql];
        jint len = [((NSString *) nil_chk(sql)) java_length];
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$$", @"Finalizing a Cursor that has not been deactivated or closed. database = ", [((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk([mQuery_ getDatabase])) getLabel], @", table = ", mEditTable_, @", query = ", [sql java_substring:0 endIndex:(len > 1000) ? 1000 : len])];
        JavaIoStringWriter *stringWriter = create_JavaIoStringWriter_init();
        JavaIoPrintWriter *printWriter = create_JavaIoPrintWriter_initWithJavaIoWriter_(stringWriter);
        [mStackTrace_ printStackTraceWithJavaIoPrintWriter:printWriter];
        [printWriter close];
        [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:[stringWriter description]];
      }
      [self close];
    }
  }
  @finally {
    [super java_finalize];
  }
}

- (void)dealloc {
  JreCheckFinalize(self, [AndroidDatabaseSqliteSQLiteCursor class]);
  RELEASE_(mEditTable_);
  RELEASE_(mColumns_);
  RELEASE_(mQuery_);
  RELEASE_(mDriver_);
  RELEASE_(mColumnNameMap_);
  RELEASE_(mStackTrace_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, 1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LAndroidDatabaseSqliteSQLiteDatabase;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 13, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithAndroidDatabaseSqliteSQLiteDatabase:withAndroidDatabaseSqliteSQLiteCursorDriver:withNSString:withAndroidDatabaseSqliteSQLiteQuery:);
  methods[1].selector = @selector(initWithAndroidDatabaseSqliteSQLiteCursorDriver:withNSString:withAndroidDatabaseSqliteSQLiteQuery:);
  methods[2].selector = @selector(getDatabase);
  methods[3].selector = @selector(onMoveWithInt:withInt:);
  methods[4].selector = @selector(getCount);
  methods[5].selector = @selector(fillWindowWithInt:);
  methods[6].selector = @selector(getColumnIndexWithNSString:);
  methods[7].selector = @selector(getColumnNames);
  methods[8].selector = @selector(deactivate);
  methods[9].selector = @selector(close);
  methods[10].selector = @selector(requery);
  methods[11].selector = @selector(setWindowWithAndroidDatabaseCursorWindow:);
  methods[12].selector = @selector(setSelectionArgumentsWithNSStringArray:);
  methods[13].selector = @selector(java_finalize);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 14, -1, -1 },
    { "NO_COUNT", "I", .constantValue.asInt = AndroidDatabaseSqliteSQLiteCursor_NO_COUNT, 0x18, -1, -1, -1, -1 },
    { "mEditTable_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mColumns_", "[LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mQuery_", "LAndroidDatabaseSqliteSQLiteQuery;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mDriver_", "LAndroidDatabaseSqliteSQLiteCursorDriver;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCursorWindowCapacity_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mColumnNameMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 15, -1 },
    { "mStackTrace_", "LNSException;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidDatabaseSqliteSQLiteDatabase;LAndroidDatabaseSqliteSQLiteCursorDriver;LNSString;LAndroidDatabaseSqliteSQLiteQuery;", (void *)&AndroidDatabaseSqliteSQLiteCursor__Annotations$0, "LAndroidDatabaseSqliteSQLiteCursorDriver;LNSString;LAndroidDatabaseSqliteSQLiteQuery;", "onMove", "II", "fillWindow", "I", "getColumnIndex", "LNSString;", "setWindow", "LAndroidDatabaseCursorWindow;", "setSelectionArguments", "[LNSString;", "finalize", &AndroidDatabaseSqliteSQLiteCursor_TAG, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;" };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteCursor = { "SQLiteCursor", "android.database.sqlite", ptrTable, methods, fields, 7, 0x1, 14, 10, -1, -1, -1, -1, -1 };
  return &_AndroidDatabaseSqliteSQLiteCursor;
}

@end

void AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(AndroidDatabaseSqliteSQLiteCursor *self, AndroidDatabaseSqliteSQLiteDatabase *db, id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(self, driver, editTable, query);
}

AndroidDatabaseSqliteSQLiteCursor *new_AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(AndroidDatabaseSqliteSQLiteDatabase *db, id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteCursor, initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_, db, driver, editTable, query)
}

AndroidDatabaseSqliteSQLiteCursor *create_AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(AndroidDatabaseSqliteSQLiteDatabase *db, id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteCursor, initWithAndroidDatabaseSqliteSQLiteDatabase_withAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_, db, driver, editTable, query)
}

void AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(AndroidDatabaseSqliteSQLiteCursor *self, id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  AndroidDatabaseAbstractWindowedCursor_init(self);
  self->mCount_ = AndroidDatabaseSqliteSQLiteCursor_NO_COUNT;
  if (query == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"query object cannot be null");
  }
  JreStrongAssign(&self->mStackTrace_, nil);
  JreStrongAssign(&self->mDriver_, driver);
  JreStrongAssign(&self->mEditTable_, editTable);
  JreStrongAssign(&self->mColumnNameMap_, nil);
  JreStrongAssign(&self->mQuery_, query);
  JreStrongAssign(&self->mColumns_, [query getColumnNames]);
  self->mRowIdColumnIndex_ = AndroidDatabaseDatabaseUtils_findRowIdColumnIndexWithNSStringArray_(self->mColumns_);
}

AndroidDatabaseSqliteSQLiteCursor *new_AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteCursor, initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_, driver, editTable, query)
}

AndroidDatabaseSqliteSQLiteCursor *create_AndroidDatabaseSqliteSQLiteCursor_initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_(id<AndroidDatabaseSqliteSQLiteCursorDriver> driver, NSString *editTable, AndroidDatabaseSqliteSQLiteQuery *query) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteCursor, initWithAndroidDatabaseSqliteSQLiteCursorDriver_withNSString_withAndroidDatabaseSqliteSQLiteQuery_, driver, editTable, query)
}

void AndroidDatabaseSqliteSQLiteCursor_fillWindowWithInt_(AndroidDatabaseSqliteSQLiteCursor *self, jint requiredPos) {
  [self clearOrCreateWindowWithNSString:[((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk([self getDatabase])) getPath]];
  @try {
    if (self->mCount_ == AndroidDatabaseSqliteSQLiteCursor_NO_COUNT) {
      jint startPos = AndroidDatabaseDatabaseUtils_cursorPickFillWindowStartPositionWithInt_withInt_(requiredPos, 0);
      self->mCount_ = [((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(self->mQuery_)) fillWindowWithAndroidDatabaseCursorWindow:self->mWindow_ withInt:startPos withInt:requiredPos withBoolean:true];
      self->mCursorWindowCapacity_ = [((AndroidDatabaseCursorWindow *) nil_chk(self->mWindow_)) getNumRows];
      if (AndroidUtilLog_isLoggableWithNSString_withInt_(AndroidDatabaseSqliteSQLiteCursor_TAG, AndroidUtilLog_DEBUG)) {
        AndroidUtilLog_dWithNSString_withNSString_(AndroidDatabaseSqliteSQLiteCursor_TAG, JreStrcat("$I", @"received count(*) from native_fill_window: ", self->mCount_));
      }
    }
    else {
      jint startPos = AndroidDatabaseDatabaseUtils_cursorPickFillWindowStartPositionWithInt_withInt_(requiredPos, self->mCursorWindowCapacity_);
      [((AndroidDatabaseSqliteSQLiteQuery *) nil_chk(self->mQuery_)) fillWindowWithAndroidDatabaseCursorWindow:self->mWindow_ withInt:startPos withInt:requiredPos withBoolean:false];
    }
  }
  @catch (JavaLangRuntimeException *ex) {
    [self closeWindow];
    @throw ex;
  }
}

IOSObjectArray *AndroidDatabaseSqliteSQLiteCursor__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteCursor)
