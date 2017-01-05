//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/Squeaky-doppl/core/src/main/java/co/touchlab/squeaky/field/types/StringType.java
//

#include "AndroidDatabaseCursor.h"
#include "CoTouchlabSqueakyFieldFieldType.h"
#include "CoTouchlabSqueakyFieldSqlType.h"
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"
#include "CoTouchlabSqueakyFieldTypesStringType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"

@interface CoTouchlabSqueakyFieldTypesStringType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesStringType *CoTouchlabSqueakyFieldTypesStringType_get_singleTon();
static CoTouchlabSqueakyFieldTypesStringType *CoTouchlabSqueakyFieldTypesStringType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesStringType, singleTon, CoTouchlabSqueakyFieldTypesStringType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesStringType_init(CoTouchlabSqueakyFieldTypesStringType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesStringType *new_CoTouchlabSqueakyFieldTypesStringType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesStringType *create_CoTouchlabSqueakyFieldTypesStringType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesStringType)

@implementation CoTouchlabSqueakyFieldTypesStringType

+ (CoTouchlabSqueakyFieldTypesStringType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesStringType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesStringType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType {
  CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_(self, sqlType);
  return self;
}

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr {
  return defaultStr;
}

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos {
  return [((id<AndroidDatabaseCursor>) nil_chk(results)) getStringWithInt:columnPos];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LCoTouchlabSqueakyFieldTypesStringType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getSingleton);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:);
  methods[3].selector = @selector(initWithCoTouchlabSqueakyFieldSqlType:);
  methods[4].selector = @selector(parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:withNSString:);
  methods[5].selector = @selector(resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:withAndroidDatabaseCursor:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "singleTon", "LCoTouchlabSqueakyFieldTypesStringType;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "LCoTouchlabSqueakyFieldSqlType;[LIOSClass;", "LCoTouchlabSqueakyFieldSqlType;", "parseDefaultString", "LCoTouchlabSqueakyFieldFieldType;LNSString;", "resultToSqlArg", "LCoTouchlabSqueakyFieldFieldType;LAndroidDatabaseCursor;I", "LJavaSqlSQLException;", &CoTouchlabSqueakyFieldTypesStringType_singleTon };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesStringType = { "StringType", "co.touchlab.squeaky.field.types", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyFieldTypesStringType;
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesStringType class]) {
    JreStrongAssignAndConsume(&CoTouchlabSqueakyFieldTypesStringType_singleTon, new_CoTouchlabSqueakyFieldTypesStringType_init());
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesStringType)
  }
}

@end

CoTouchlabSqueakyFieldTypesStringType *CoTouchlabSqueakyFieldTypesStringType_getSingleton() {
  CoTouchlabSqueakyFieldTypesStringType_initialize();
  return CoTouchlabSqueakyFieldTypesStringType_singleTon;
}

void CoTouchlabSqueakyFieldTypesStringType_init(CoTouchlabSqueakyFieldTypesStringType *self) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, STRING), [IOSObjectArray arrayWithObjects:(id[]){ NSString_class_() } count:1 type:IOSClass_class_()]);
}

CoTouchlabSqueakyFieldTypesStringType *new_CoTouchlabSqueakyFieldTypesStringType_init() {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesStringType, init)
}

CoTouchlabSqueakyFieldTypesStringType *create_CoTouchlabSqueakyFieldTypesStringType_init() {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesStringType, init)
}

void CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesStringType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesStringType *new_CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesStringType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

CoTouchlabSqueakyFieldTypesStringType *create_CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesStringType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

void CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_(CoTouchlabSqueakyFieldTypesStringType *self, CoTouchlabSqueakyFieldSqlType *sqlType) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_(self, sqlType);
}

CoTouchlabSqueakyFieldTypesStringType *new_CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_(CoTouchlabSqueakyFieldSqlType *sqlType) {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesStringType, initWithCoTouchlabSqueakyFieldSqlType_, sqlType)
}

CoTouchlabSqueakyFieldTypesStringType *create_CoTouchlabSqueakyFieldTypesStringType_initWithCoTouchlabSqueakyFieldSqlType_(CoTouchlabSqueakyFieldSqlType *sqlType) {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesStringType, initWithCoTouchlabSqueakyFieldSqlType_, sqlType)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesStringType)
