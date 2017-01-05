//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/Squeaky-doppl/core/src/main/java/co/touchlab/squeaky/field/types/BigDecimalStringType.java
//

#include "AndroidDatabaseCursor.h"
#include "CoTouchlabSqueakyFieldFieldType.h"
#include "CoTouchlabSqueakyFieldSqlType.h"
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"
#include "CoTouchlabSqueakyFieldTypesBigDecimalStringType.h"
#include "CoTouchlabSqueakyMiscSqlExceptionUtil.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigDecimal.h"
#include "java/sql/SQLException.h"

@interface CoTouchlabSqueakyFieldTypesBigDecimalStringType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesBigDecimalStringType *CoTouchlabSqueakyFieldTypesBigDecimalStringType_get_singleTon();
static CoTouchlabSqueakyFieldTypesBigDecimalStringType *CoTouchlabSqueakyFieldTypesBigDecimalStringType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesBigDecimalStringType, singleTon, CoTouchlabSqueakyFieldTypesBigDecimalStringType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesBigDecimalStringType_init(CoTouchlabSqueakyFieldTypesBigDecimalStringType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesBigDecimalStringType *new_CoTouchlabSqueakyFieldTypesBigDecimalStringType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesBigDecimalStringType *create_CoTouchlabSqueakyFieldTypesBigDecimalStringType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesBigDecimalStringType)

jint CoTouchlabSqueakyFieldTypesBigDecimalStringType_DEFAULT_WIDTH = 255;

@implementation CoTouchlabSqueakyFieldTypesBigDecimalStringType

+ (CoTouchlabSqueakyFieldTypesBigDecimalStringType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesBigDecimalStringType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesBigDecimalStringType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesBigDecimalStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr {
  @try {
    return [create_JavaMathBigDecimal_initWithNSString_(defaultStr) description];
  }
  @catch (JavaLangIllegalArgumentException *e) {
    @throw CoTouchlabSqueakyMiscSqlExceptionUtil_createWithNSString_withNSException_(JreStrcat("$@$$C", @"Problems with field ", fieldType, @" parsing default BigDecimal string '", defaultStr, '\''), e);
  }
}

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos {
  return [((id<AndroidDatabaseCursor>) nil_chk(results)) getStringWithInt:columnPos];
}

- (id)sqlArgToJavaWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)sqlArg
                                              withInt:(jint)columnPos {
  @try {
    return create_JavaMathBigDecimal_initWithNSString_((NSString *) cast_chk(sqlArg, [NSString class]));
  }
  @catch (JavaLangIllegalArgumentException *e) {
    @throw CoTouchlabSqueakyMiscSqlExceptionUtil_createWithNSString_withNSException_(JreStrcat("$I$@C", @"Problems with column ", columnPos, @" parsing BigDecimal string '", sqlArg, '\''), e);
  }
}

- (id)javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)obj {
  JavaMathBigDecimal *bigInteger = (JavaMathBigDecimal *) cast_chk(obj, [JavaMathBigDecimal class]);
  return [((JavaMathBigDecimal *) nil_chk(bigInteger)) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LCoTouchlabSqueakyFieldTypesBigDecimalStringType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 6, 7, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getSingleton);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:);
  methods[3].selector = @selector(parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:withNSString:);
  methods[4].selector = @selector(resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:withAndroidDatabaseCursor:withInt:);
  methods[5].selector = @selector(sqlArgToJavaWithCoTouchlabSqueakyFieldFieldType:withId:withInt:);
  methods[6].selector = @selector(javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_WIDTH", "I", .constantValue.asLong = 0, 0x9, -1, 10, -1, -1 },
    { "singleTon", "LCoTouchlabSqueakyFieldTypesBigDecimalStringType;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "LCoTouchlabSqueakyFieldSqlType;[LIOSClass;", "parseDefaultString", "LCoTouchlabSqueakyFieldFieldType;LNSString;", "LJavaSqlSQLException;", "resultToSqlArg", "LCoTouchlabSqueakyFieldFieldType;LAndroidDatabaseCursor;I", "sqlArgToJava", "LCoTouchlabSqueakyFieldFieldType;LNSObject;I", "javaToSqlArg", "LCoTouchlabSqueakyFieldFieldType;LNSObject;", &CoTouchlabSqueakyFieldTypesBigDecimalStringType_DEFAULT_WIDTH, &CoTouchlabSqueakyFieldTypesBigDecimalStringType_singleTon };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesBigDecimalStringType = { "BigDecimalStringType", "co.touchlab.squeaky.field.types", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyFieldTypesBigDecimalStringType;
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesBigDecimalStringType class]) {
    JreStrongAssignAndConsume(&CoTouchlabSqueakyFieldTypesBigDecimalStringType_singleTon, new_CoTouchlabSqueakyFieldTypesBigDecimalStringType_init());
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesBigDecimalStringType)
  }
}

@end

CoTouchlabSqueakyFieldTypesBigDecimalStringType *CoTouchlabSqueakyFieldTypesBigDecimalStringType_getSingleton() {
  CoTouchlabSqueakyFieldTypesBigDecimalStringType_initialize();
  return CoTouchlabSqueakyFieldTypesBigDecimalStringType_singleTon;
}

void CoTouchlabSqueakyFieldTypesBigDecimalStringType_init(CoTouchlabSqueakyFieldTypesBigDecimalStringType *self) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, STRING), [IOSObjectArray arrayWithObjects:(id[]){ JavaMathBigDecimal_class_() } count:1 type:IOSClass_class_()]);
}

CoTouchlabSqueakyFieldTypesBigDecimalStringType *new_CoTouchlabSqueakyFieldTypesBigDecimalStringType_init() {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesBigDecimalStringType, init)
}

CoTouchlabSqueakyFieldTypesBigDecimalStringType *create_CoTouchlabSqueakyFieldTypesBigDecimalStringType_init() {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesBigDecimalStringType, init)
}

void CoTouchlabSqueakyFieldTypesBigDecimalStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesBigDecimalStringType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesBigDecimalStringType *new_CoTouchlabSqueakyFieldTypesBigDecimalStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesBigDecimalStringType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

CoTouchlabSqueakyFieldTypesBigDecimalStringType *create_CoTouchlabSqueakyFieldTypesBigDecimalStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesBigDecimalStringType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesBigDecimalStringType)
