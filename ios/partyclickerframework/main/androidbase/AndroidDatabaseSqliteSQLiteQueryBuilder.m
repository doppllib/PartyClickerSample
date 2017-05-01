//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseCursor.h"
#include "AndroidDatabaseDatabaseUtils.h"
#include "AndroidDatabaseSqliteSQLiteDatabase.h"
#include "AndroidDatabaseSqliteSQLiteQueryBuilder.h"
#include "AndroidDatabaseSqliteSQLiteSession.h"
#include "AndroidProviderBaseColumns.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/text/TextUtils.h"
#include "android/util/Log.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"

@interface AndroidDatabaseSqliteSQLiteQueryBuilder () {
 @public
  id<JavaUtilMap> mProjectionMap_;
  NSString *mTables_;
  JavaLangStringBuilder *mWhereClause_;
  jboolean mDistinct_;
  id<AndroidDatabaseSqliteSQLiteDatabase_CursorFactory> mFactory_;
  jboolean mStrict_;
}

+ (void)appendClauseWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                                 withNSString:(NSString *)name
                                 withNSString:(NSString *)clause;

- (void)validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                   withNSString:(NSString *)sql;

- (IOSObjectArray *)computeProjectionWithNSStringArray:(IOSObjectArray *)projectionIn;

@end

J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteQueryBuilder, mProjectionMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteQueryBuilder, mTables_, NSString *)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteQueryBuilder, mWhereClause_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(AndroidDatabaseSqliteSQLiteQueryBuilder, mFactory_, id<AndroidDatabaseSqliteSQLiteDatabase_CursorFactory>)

inline NSString *AndroidDatabaseSqliteSQLiteQueryBuilder_get_TAG();
static NSString *AndroidDatabaseSqliteSQLiteQueryBuilder_TAG = @"SQLiteQueryBuilder";
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidDatabaseSqliteSQLiteQueryBuilder, TAG, NSString *)

inline JavaUtilRegexPattern *AndroidDatabaseSqliteSQLiteQueryBuilder_get_sLimitPattern();
static JavaUtilRegexPattern *AndroidDatabaseSqliteSQLiteQueryBuilder_sLimitPattern;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidDatabaseSqliteSQLiteQueryBuilder, sLimitPattern, JavaUtilRegexPattern *)

__attribute__((unused)) static void AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(JavaLangStringBuilder *s, NSString *name, NSString *clause);

__attribute__((unused)) static void AndroidDatabaseSqliteSQLiteQueryBuilder_validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_(AndroidDatabaseSqliteSQLiteQueryBuilder *self, AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql);

__attribute__((unused)) static IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder_computeProjectionWithNSStringArray_(AndroidDatabaseSqliteSQLiteQueryBuilder *self, IOSObjectArray *projectionIn);

__attribute__((unused)) static IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$0();

__attribute__((unused)) static IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$1();

J2OBJC_INITIALIZED_DEFN(AndroidDatabaseSqliteSQLiteQueryBuilder)

@implementation AndroidDatabaseSqliteSQLiteQueryBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseSqliteSQLiteQueryBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setDistinctWithBoolean:(jboolean)distinct {
  mDistinct_ = distinct;
}

- (NSString *)getTables {
  return mTables_;
}

- (void)setTablesWithNSString:(NSString *)inTables {
  JreStrongAssign(&mTables_, inTables);
}

- (void)appendWhereWithJavaLangCharSequence:(id<JavaLangCharSequence>)inWhere {
  if (mWhereClause_ == nil) {
    JreStrongAssignAndConsume(&mWhereClause_, new_JavaLangStringBuilder_initWithInt_([((id<JavaLangCharSequence>) nil_chk(inWhere)) java_length] + 16));
  }
  if ([mWhereClause_ java_length] == 0) {
    [((JavaLangStringBuilder *) nil_chk(mWhereClause_)) appendWithChar:'('];
  }
  [((JavaLangStringBuilder *) nil_chk(mWhereClause_)) appendWithJavaLangCharSequence:inWhere];
}

- (void)appendWhereEscapeStringWithNSString:(NSString *)inWhere {
  if (mWhereClause_ == nil) {
    JreStrongAssignAndConsume(&mWhereClause_, new_JavaLangStringBuilder_initWithInt_([((NSString *) nil_chk(inWhere)) java_length] + 16));
  }
  if ([mWhereClause_ java_length] == 0) {
    [((JavaLangStringBuilder *) nil_chk(mWhereClause_)) appendWithChar:'('];
  }
  AndroidDatabaseDatabaseUtils_appendEscapedSQLStringWithJavaLangStringBuilder_withNSString_(mWhereClause_, inWhere);
}

- (void)setProjectionMapWithJavaUtilMap:(id<JavaUtilMap>)columnMap {
  JreStrongAssign(&mProjectionMap_, columnMap);
}

- (void)setCursorFactoryWithAndroidDatabaseSqliteSQLiteDatabase_CursorFactory:(id<AndroidDatabaseSqliteSQLiteDatabase_CursorFactory>)factory {
  JreStrongAssign(&mFactory_, factory);
}

- (void)setStrictWithBoolean:(jboolean)flag {
  mStrict_ = flag;
}

+ (NSString *)buildQueryStringWithBoolean:(jboolean)distinct
                             withNSString:(NSString *)tables
                        withNSStringArray:(IOSObjectArray *)columns
                             withNSString:(NSString *)where
                             withNSString:(NSString *)groupBy
                             withNSString:(NSString *)having
                             withNSString:(NSString *)orderBy
                             withNSString:(NSString *)limit {
  return AndroidDatabaseSqliteSQLiteQueryBuilder_buildQueryStringWithBoolean_withNSString_withNSStringArray_withNSString_withNSString_withNSString_withNSString_withNSString_(distinct, tables, columns, where, groupBy, having, orderBy, limit);
}

+ (void)appendClauseWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                                 withNSString:(NSString *)name
                                 withNSString:(NSString *)clause {
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(s, name, clause);
}

+ (void)appendColumnsWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                             withNSStringArray:(IOSObjectArray *)columns {
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendColumnsWithJavaLangStringBuilder_withNSStringArray_(s, columns);
}

- (id<AndroidDatabaseCursor>)queryWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                        withNSStringArray:(IOSObjectArray *)projectionIn
                                                             withNSString:(NSString *)selection
                                                        withNSStringArray:(IOSObjectArray *)selectionArgs
                                                             withNSString:(NSString *)groupBy
                                                             withNSString:(NSString *)having
                                                             withNSString:(NSString *)sortOrder {
  return [self queryWithAndroidDatabaseSqliteSQLiteDatabase:db withNSStringArray:projectionIn withNSString:selection withNSStringArray:selectionArgs withNSString:groupBy withNSString:having withNSString:sortOrder withNSString:nil];
}

- (id<AndroidDatabaseCursor>)queryWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                        withNSStringArray:(IOSObjectArray *)projectionIn
                                                             withNSString:(NSString *)selection
                                                        withNSStringArray:(IOSObjectArray *)selectionArgs
                                                             withNSString:(NSString *)groupBy
                                                             withNSString:(NSString *)having
                                                             withNSString:(NSString *)sortOrder
                                                             withNSString:(NSString *)limit {
  if (mTables_ == nil) {
    return nil;
  }
  if (mStrict_ && selection != nil && [selection java_length] > 0) {
    NSString *sqlForValidation = [self buildQueryWithNSStringArray:projectionIn withNSString:JreStrcat("C$C", '(', selection, ')') withNSString:groupBy withNSString:having withNSString:sortOrder withNSString:limit];
    AndroidDatabaseSqliteSQLiteQueryBuilder_validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_(self, db, sqlForValidation);
  }
  NSString *sql = [self buildQueryWithNSStringArray:projectionIn withNSString:selection withNSString:groupBy withNSString:having withNSString:sortOrder withNSString:limit];
  if (AndroidUtilLog_isLoggableWithNSString_withInt_(AndroidDatabaseSqliteSQLiteQueryBuilder_TAG, AndroidUtilLog_DEBUG)) {
    AndroidUtilLog_dWithNSString_withNSString_(AndroidDatabaseSqliteSQLiteQueryBuilder_TAG, JreStrcat("$$", @"Performing query: ", sql));
  }
  return [((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk(db)) rawQueryWithFactoryWithAndroidDatabaseSqliteSQLiteDatabase_CursorFactory:mFactory_ withNSString:sql withNSStringArray:selectionArgs withNSString:AndroidDatabaseSqliteSQLiteDatabase_findEditTableWithNSString_(mTables_)];
}

- (void)validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                   withNSString:(NSString *)sql {
  AndroidDatabaseSqliteSQLiteQueryBuilder_validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_(self, db, sql);
}

- (NSString *)buildQueryWithNSStringArray:(IOSObjectArray *)projectionIn
                             withNSString:(NSString *)selection
                             withNSString:(NSString *)groupBy
                             withNSString:(NSString *)having
                             withNSString:(NSString *)sortOrder
                             withNSString:(NSString *)limit {
  IOSObjectArray *projection = AndroidDatabaseSqliteSQLiteQueryBuilder_computeProjectionWithNSStringArray_(self, projectionIn);
  JavaLangStringBuilder *where = create_JavaLangStringBuilder_init();
  jboolean hasBaseWhereClause = mWhereClause_ != nil && [mWhereClause_ java_length] > 0;
  if (hasBaseWhereClause) {
    [where appendWithNSString:[((JavaLangStringBuilder *) nil_chk(mWhereClause_)) description]];
    [where appendWithChar:')'];
  }
  if (selection != nil && [selection java_length] > 0) {
    if (hasBaseWhereClause) {
      [where appendWithNSString:@" AND "];
    }
    [where appendWithChar:'('];
    [where appendWithNSString:selection];
    [where appendWithChar:')'];
  }
  return AndroidDatabaseSqliteSQLiteQueryBuilder_buildQueryStringWithBoolean_withNSString_withNSStringArray_withNSString_withNSString_withNSString_withNSString_withNSString_(mDistinct_, mTables_, projection, [where description], groupBy, having, sortOrder, limit);
}

- (NSString *)buildQueryWithNSStringArray:(IOSObjectArray *)projectionIn
                             withNSString:(NSString *)selection
                        withNSStringArray:(IOSObjectArray *)selectionArgs
                             withNSString:(NSString *)groupBy
                             withNSString:(NSString *)having
                             withNSString:(NSString *)sortOrder
                             withNSString:(NSString *)limit {
  return [self buildQueryWithNSStringArray:projectionIn withNSString:selection withNSString:groupBy withNSString:having withNSString:sortOrder withNSString:limit];
}

- (NSString *)buildUnionSubQueryWithNSString:(NSString *)typeDiscriminatorColumn
                           withNSStringArray:(IOSObjectArray *)unionColumns
                             withJavaUtilSet:(id<JavaUtilSet>)columnsPresentInTable
                                     withInt:(jint)computedColumnsOffset
                                withNSString:(NSString *)typeDiscriminatorValue
                                withNSString:(NSString *)selection
                                withNSString:(NSString *)groupBy
                                withNSString:(NSString *)having {
  jint unionColumnsCount = ((IOSObjectArray *) nil_chk(unionColumns))->size_;
  IOSObjectArray *projectionIn = [IOSObjectArray arrayWithLength:unionColumnsCount type:NSString_class_()];
  for (jint i = 0; i < unionColumnsCount; i++) {
    NSString *unionColumn = IOSObjectArray_Get(unionColumns, i);
    if ([((NSString *) nil_chk(unionColumn)) isEqual:typeDiscriminatorColumn]) {
      IOSObjectArray_Set(projectionIn, i, JreStrcat("C$$$", '\'', typeDiscriminatorValue, @"' AS ", typeDiscriminatorColumn));
    }
    else if (i <= computedColumnsOffset || [((id<JavaUtilSet>) nil_chk(columnsPresentInTable)) containsWithId:unionColumn]) {
      IOSObjectArray_Set(projectionIn, i, unionColumn);
    }
    else {
      IOSObjectArray_Set(projectionIn, i, JreStrcat("$$", @"NULL AS ", unionColumn));
    }
  }
  return [self buildQueryWithNSStringArray:projectionIn withNSString:selection withNSString:groupBy withNSString:having withNSString:nil withNSString:nil];
}

- (NSString *)buildUnionSubQueryWithNSString:(NSString *)typeDiscriminatorColumn
                           withNSStringArray:(IOSObjectArray *)unionColumns
                             withJavaUtilSet:(id<JavaUtilSet>)columnsPresentInTable
                                     withInt:(jint)computedColumnsOffset
                                withNSString:(NSString *)typeDiscriminatorValue
                                withNSString:(NSString *)selection
                           withNSStringArray:(IOSObjectArray *)selectionArgs
                                withNSString:(NSString *)groupBy
                                withNSString:(NSString *)having {
  return [self buildUnionSubQueryWithNSString:typeDiscriminatorColumn withNSStringArray:unionColumns withJavaUtilSet:columnsPresentInTable withInt:computedColumnsOffset withNSString:typeDiscriminatorValue withNSString:selection withNSString:groupBy withNSString:having];
}

- (NSString *)buildUnionQueryWithNSStringArray:(IOSObjectArray *)subQueries
                                  withNSString:(NSString *)sortOrder
                                  withNSString:(NSString *)limit {
  JavaLangStringBuilder *query = create_JavaLangStringBuilder_initWithInt_(128);
  jint subQueryCount = ((IOSObjectArray *) nil_chk(subQueries))->size_;
  NSString *unionOperator = mDistinct_ ? @" UNION " : @" UNION ALL ";
  for (jint i = 0; i < subQueryCount; i++) {
    if (i > 0) {
      [query appendWithNSString:unionOperator];
    }
    [query appendWithNSString:IOSObjectArray_Get(subQueries, i)];
  }
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" ORDER BY ", sortOrder);
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" LIMIT ", limit);
  return [query description];
}

- (IOSObjectArray *)computeProjectionWithNSStringArray:(IOSObjectArray *)projectionIn {
  return AndroidDatabaseSqliteSQLiteQueryBuilder_computeProjectionWithNSStringArray_(self, projectionIn);
}

- (void)dealloc {
  RELEASE_(mProjectionMap_);
  RELEASE_(mTables_);
  RELEASE_(mWhereClause_);
  RELEASE_(mFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, 9, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 17, 18, -1, -1, -1, -1 },
    { NULL, "LAndroidDatabaseCursor;", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "LAndroidDatabaseCursor;", 0x1, 19, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 22, 23, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 24, 26, -1, -1, 27, -1 },
    { NULL, "LNSString;", 0x1, 28, 29, -1, 30, -1, -1 },
    { NULL, "LNSString;", 0x1, 28, 31, -1, 32, 33, -1 },
    { NULL, "LNSString;", 0x1, 34, 35, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x2, 36, 37, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setDistinctWithBoolean:);
  methods[2].selector = @selector(getTables);
  methods[3].selector = @selector(setTablesWithNSString:);
  methods[4].selector = @selector(appendWhereWithJavaLangCharSequence:);
  methods[5].selector = @selector(appendWhereEscapeStringWithNSString:);
  methods[6].selector = @selector(setProjectionMapWithJavaUtilMap:);
  methods[7].selector = @selector(setCursorFactoryWithAndroidDatabaseSqliteSQLiteDatabase_CursorFactory:);
  methods[8].selector = @selector(setStrictWithBoolean:);
  methods[9].selector = @selector(buildQueryStringWithBoolean:withNSString:withNSStringArray:withNSString:withNSString:withNSString:withNSString:withNSString:);
  methods[10].selector = @selector(appendClauseWithJavaLangStringBuilder:withNSString:withNSString:);
  methods[11].selector = @selector(appendColumnsWithJavaLangStringBuilder:withNSStringArray:);
  methods[12].selector = @selector(queryWithAndroidDatabaseSqliteSQLiteDatabase:withNSStringArray:withNSString:withNSStringArray:withNSString:withNSString:withNSString:);
  methods[13].selector = @selector(queryWithAndroidDatabaseSqliteSQLiteDatabase:withNSStringArray:withNSString:withNSStringArray:withNSString:withNSString:withNSString:withNSString:);
  methods[14].selector = @selector(validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase:withNSString:);
  methods[15].selector = @selector(buildQueryWithNSStringArray:withNSString:withNSString:withNSString:withNSString:withNSString:);
  methods[16].selector = @selector(buildQueryWithNSStringArray:withNSString:withNSStringArray:withNSString:withNSString:withNSString:withNSString:);
  methods[17].selector = @selector(buildUnionSubQueryWithNSString:withNSStringArray:withJavaUtilSet:withInt:withNSString:withNSString:withNSString:withNSString:);
  methods[18].selector = @selector(buildUnionSubQueryWithNSString:withNSStringArray:withJavaUtilSet:withInt:withNSString:withNSString:withNSStringArray:withNSString:withNSString:);
  methods[19].selector = @selector(buildUnionQueryWithNSStringArray:withNSString:withNSString:);
  methods[20].selector = @selector(computeProjectionWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 38, -1, -1 },
    { "sLimitPattern", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x1a, -1, 39, -1, -1 },
    { "mProjectionMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 40, -1 },
    { "mTables_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mWhereClause_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDistinct_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFactory_", "LAndroidDatabaseSqliteSQLiteDatabase_CursorFactory;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStrict_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setDistinct", "Z", "setTables", "LNSString;", "appendWhere", "LJavaLangCharSequence;", "appendWhereEscapeString", "setProjectionMap", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "setCursorFactory", "LAndroidDatabaseSqliteSQLiteDatabase_CursorFactory;", "setStrict", "buildQueryString", "ZLNSString;[LNSString;LNSString;LNSString;LNSString;LNSString;LNSString;", "appendClause", "LJavaLangStringBuilder;LNSString;LNSString;", "appendColumns", "LJavaLangStringBuilder;[LNSString;", "query", "LAndroidDatabaseSqliteSQLiteDatabase;[LNSString;LNSString;[LNSString;LNSString;LNSString;LNSString;", "LAndroidDatabaseSqliteSQLiteDatabase;[LNSString;LNSString;[LNSString;LNSString;LNSString;LNSString;LNSString;", "validateQuerySql", "LAndroidDatabaseSqliteSQLiteDatabase;LNSString;", "buildQuery", "[LNSString;LNSString;LNSString;LNSString;LNSString;LNSString;", "[LNSString;LNSString;[LNSString;LNSString;LNSString;LNSString;LNSString;", (void *)&AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$0, "buildUnionSubQuery", "LNSString;[LNSString;LJavaUtilSet;ILNSString;LNSString;LNSString;LNSString;", "(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "LNSString;[LNSString;LJavaUtilSet;ILNSString;LNSString;[LNSString;LNSString;LNSString;", "(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", (void *)&AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$1, "buildUnionQuery", "[LNSString;LNSString;LNSString;", "computeProjection", "[LNSString;", &AndroidDatabaseSqliteSQLiteQueryBuilder_TAG, &AndroidDatabaseSqliteSQLiteQueryBuilder_sLimitPattern, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteQueryBuilder = { "SQLiteQueryBuilder", "android.database.sqlite", ptrTable, methods, fields, 7, 0x1, 21, 8, -1, -1, -1, -1, -1 };
  return &_AndroidDatabaseSqliteSQLiteQueryBuilder;
}

+ (void)initialize {
  if (self == [AndroidDatabaseSqliteSQLiteQueryBuilder class]) {
    JreStrongAssign(&AndroidDatabaseSqliteSQLiteQueryBuilder_sLimitPattern, JavaUtilRegexPattern_compileWithNSString_(@"\\s*\\d+\\s*(,\\s*\\d+\\s*)?"));
    J2OBJC_SET_INITIALIZED(AndroidDatabaseSqliteSQLiteQueryBuilder)
  }
}

@end

void AndroidDatabaseSqliteSQLiteQueryBuilder_init(AndroidDatabaseSqliteSQLiteQueryBuilder *self) {
  NSObject_init(self);
  JreStrongAssign(&self->mProjectionMap_, nil);
  JreStrongAssign(&self->mTables_, @"");
  JreStrongAssign(&self->mWhereClause_, nil);
  self->mDistinct_ = false;
  JreStrongAssign(&self->mFactory_, nil);
}

AndroidDatabaseSqliteSQLiteQueryBuilder *new_AndroidDatabaseSqliteSQLiteQueryBuilder_init() {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteQueryBuilder, init)
}

AndroidDatabaseSqliteSQLiteQueryBuilder *create_AndroidDatabaseSqliteSQLiteQueryBuilder_init() {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteQueryBuilder, init)
}

NSString *AndroidDatabaseSqliteSQLiteQueryBuilder_buildQueryStringWithBoolean_withNSString_withNSStringArray_withNSString_withNSString_withNSString_withNSString_withNSString_(jboolean distinct, NSString *tables, IOSObjectArray *columns, NSString *where, NSString *groupBy, NSString *having, NSString *orderBy, NSString *limit) {
  AndroidDatabaseSqliteSQLiteQueryBuilder_initialize();
  if (AndroidTextTextUtils_isEmptyWithJavaLangCharSequence_(groupBy) && !AndroidTextTextUtils_isEmptyWithJavaLangCharSequence_(having)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"HAVING clauses are only permitted when using a groupBy clause");
  }
  if (!AndroidTextTextUtils_isEmptyWithJavaLangCharSequence_(limit) && ![((JavaUtilRegexMatcher *) nil_chk([((JavaUtilRegexPattern *) nil_chk(AndroidDatabaseSqliteSQLiteQueryBuilder_sLimitPattern)) matcherWithJavaLangCharSequence:limit])) matches]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"invalid LIMIT clauses:", limit));
  }
  JavaLangStringBuilder *query = create_JavaLangStringBuilder_initWithInt_(120);
  [query appendWithNSString:@"SELECT "];
  if (distinct) {
    [query appendWithNSString:@"DISTINCT "];
  }
  if (columns != nil && columns->size_ != 0) {
    AndroidDatabaseSqliteSQLiteQueryBuilder_appendColumnsWithJavaLangStringBuilder_withNSStringArray_(query, columns);
  }
  else {
    [query appendWithNSString:@"* "];
  }
  [query appendWithNSString:@"FROM "];
  [query appendWithNSString:tables];
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" WHERE ", where);
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" GROUP BY ", groupBy);
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" HAVING ", having);
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" ORDER BY ", orderBy);
  AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(query, @" LIMIT ", limit);
  return [query description];
}

void AndroidDatabaseSqliteSQLiteQueryBuilder_appendClauseWithJavaLangStringBuilder_withNSString_withNSString_(JavaLangStringBuilder *s, NSString *name, NSString *clause) {
  AndroidDatabaseSqliteSQLiteQueryBuilder_initialize();
  if (!AndroidTextTextUtils_isEmptyWithJavaLangCharSequence_(clause)) {
    [((JavaLangStringBuilder *) nil_chk(s)) appendWithNSString:name];
    [s appendWithNSString:clause];
  }
}

void AndroidDatabaseSqliteSQLiteQueryBuilder_appendColumnsWithJavaLangStringBuilder_withNSStringArray_(JavaLangStringBuilder *s, IOSObjectArray *columns) {
  AndroidDatabaseSqliteSQLiteQueryBuilder_initialize();
  jint n = ((IOSObjectArray *) nil_chk(columns))->size_;
  for (jint i = 0; i < n; i++) {
    NSString *column = IOSObjectArray_Get(columns, i);
    if (column != nil) {
      if (i > 0) {
        [((JavaLangStringBuilder *) nil_chk(s)) appendWithNSString:@", "];
      }
      [((JavaLangStringBuilder *) nil_chk(s)) appendWithNSString:column];
    }
  }
  [((JavaLangStringBuilder *) nil_chk(s)) appendWithChar:' '];
}

void AndroidDatabaseSqliteSQLiteQueryBuilder_validateQuerySqlWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_(AndroidDatabaseSqliteSQLiteQueryBuilder *self, AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql) {
  [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk(db)) getThreadSession])) prepareWithNSString:sql withInt:[db getThreadDefaultConnectionFlagsWithBoolean:true] withAndroidDatabaseSqliteSQLiteStatementInfo:nil];
}

IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder_computeProjectionWithNSStringArray_(AndroidDatabaseSqliteSQLiteQueryBuilder *self, IOSObjectArray *projectionIn) {
  if (projectionIn != nil && projectionIn->size_ > 0) {
    if (self->mProjectionMap_ != nil) {
      IOSObjectArray *projection = [IOSObjectArray arrayWithLength:projectionIn->size_ type:NSString_class_()];
      jint length = projectionIn->size_;
      for (jint i = 0; i < length; i++) {
        NSString *userColumn = IOSObjectArray_Get(projectionIn, i);
        NSString *column = [((id<JavaUtilMap>) nil_chk(self->mProjectionMap_)) getWithId:userColumn];
        if (column != nil) {
          IOSObjectArray_Set(projection, i, column);
          continue;
        }
        if (!self->mStrict_ && ([((NSString *) nil_chk(userColumn)) java_contains:@" AS "] || [userColumn java_contains:@" as "])) {
          IOSObjectArray_Set(projection, i, userColumn);
          continue;
        }
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Invalid column ", IOSObjectArray_Get(projectionIn, i)));
      }
      return projection;
    }
    else {
      return projectionIn;
    }
  }
  else if (self->mProjectionMap_ != nil) {
    id<JavaUtilSet> entrySet = [self->mProjectionMap_ entrySet];
    IOSObjectArray *projection = [IOSObjectArray arrayWithLength:[((id<JavaUtilSet>) nil_chk(entrySet)) size] type:NSString_class_()];
    id<JavaUtilIterator> entryIter = [entrySet iterator];
    jint i = 0;
    while ([((id<JavaUtilIterator>) nil_chk(entryIter)) hasNext]) {
      id<JavaUtilMap_Entry> entry_ = [entryIter next];
      if ([((NSString *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey])) isEqual:AndroidProviderBaseColumns__COUNT]) {
        continue;
      }
      IOSObjectArray_Set(projection, i++, [entry_ getValue]);
    }
    return projection;
  }
  return nil;
}

IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *AndroidDatabaseSqliteSQLiteQueryBuilder__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteQueryBuilder)