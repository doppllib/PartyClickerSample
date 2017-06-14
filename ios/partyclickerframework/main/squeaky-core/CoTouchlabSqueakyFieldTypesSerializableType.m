//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseCursor.h"
#include "CoTouchlabSqueakyFieldFieldType.h"
#include "CoTouchlabSqueakyFieldSqlType.h"
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"
#include "CoTouchlabSqueakyFieldTypesSerializableType.h"
#include "CoTouchlabSqueakyMiscIOUtils.h"
#include "CoTouchlabSqueakyMiscSqlExceptionUtil.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Exception.h"
#include "java/sql/SQLException.h"
#include "java/util/Arrays.h"

@interface CoTouchlabSqueakyFieldTypesSerializableType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesSerializableType *CoTouchlabSqueakyFieldTypesSerializableType_get_singleTon();
static CoTouchlabSqueakyFieldTypesSerializableType *CoTouchlabSqueakyFieldTypesSerializableType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesSerializableType, singleTon, CoTouchlabSqueakyFieldTypesSerializableType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesSerializableType_init(CoTouchlabSqueakyFieldTypesSerializableType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesSerializableType *new_CoTouchlabSqueakyFieldTypesSerializableType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesSerializableType *create_CoTouchlabSqueakyFieldTypesSerializableType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesSerializableType)

@implementation CoTouchlabSqueakyFieldTypesSerializableType

+ (CoTouchlabSqueakyFieldTypesSerializableType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesSerializableType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesSerializableType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesSerializableType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr {
  @throw create_JavaSqlSQLException_initWithNSString_(@"Default values for serializable types are not supported");
}

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos {
  return [((id<AndroidDatabaseCursor>) nil_chk(results)) getBlobWithInt:columnPos];
}

- (id)sqlArgToJavaWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)sqlArg
                                              withInt:(jint)columnPos {
  IOSByteArray *bytes = (IOSByteArray *) cast_chk(sqlArg, [IOSByteArray class]);
  JavaIoObjectInputStream *objInStream = nil;
  @try {
    objInStream = create_JavaIoObjectInputStream_initWithJavaIoInputStream_(create_JavaIoByteArrayInputStream_initWithByteArray_(bytes));
    return [objInStream readObject];
  }
  @catch (JavaLangException *e) {
    @throw nil_chk(CoTouchlabSqueakyMiscSqlExceptionUtil_createWithNSString_withNSException_(JreStrcat("$$$IC", @"Could not read serialized object from byte array: ", JavaUtilArrays_toStringWithByteArray_(bytes), @"(len ", ((IOSByteArray *) nil_chk(bytes))->size_, ')'), e));
  }
  @finally {
    CoTouchlabSqueakyMiscIOUtils_closeQuietlyWithJavaIoCloseable_(objInStream);
  }
}

- (id)javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)obj {
  JavaIoObjectOutputStream *objOutStream = nil;
  @try {
    JavaIoByteArrayOutputStream *outStream = create_JavaIoByteArrayOutputStream_init();
    objOutStream = create_JavaIoObjectOutputStream_initWithJavaIoOutputStream_(outStream);
    [objOutStream writeObjectWithId:obj];
    [objOutStream close];
    objOutStream = nil;
    return [outStream toByteArray];
  }
  @catch (JavaLangException *e) {
    @throw nil_chk(CoTouchlabSqueakyMiscSqlExceptionUtil_createWithNSString_withNSException_(JreStrcat("$@", @"Could not write serialized object to byte array: ", obj), e));
  }
  @finally {
    CoTouchlabSqueakyMiscIOUtils_closeQuietlyWithJavaIoCloseable_(objOutStream);
  }
}

- (jboolean)isComparable {
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LCoTouchlabSqueakyFieldTypesSerializableType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 5, 6, 4, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 8, 4, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 10, 4, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
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
  methods[7].selector = @selector(isComparable);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "singleTon", "LCoTouchlabSqueakyFieldTypesSerializableType;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "LCoTouchlabSqueakyFieldSqlType;[LIOSClass;", "(Lco/touchlab/squeaky/field/SqlType;[Ljava/lang/Class<*>;)V", "parseDefaultString", "LCoTouchlabSqueakyFieldFieldType;LNSString;", "LJavaSqlSQLException;", "resultToSqlArg", "LCoTouchlabSqueakyFieldFieldType;LAndroidDatabaseCursor;I", "sqlArgToJava", "LCoTouchlabSqueakyFieldFieldType;LNSObject;I", "javaToSqlArg", "LCoTouchlabSqueakyFieldFieldType;LNSObject;", &CoTouchlabSqueakyFieldTypesSerializableType_singleTon };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesSerializableType = { "SerializableType", "co.touchlab.squeaky.field.types", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyFieldTypesSerializableType;
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesSerializableType class]) {
    JreStrongAssignAndConsume(&CoTouchlabSqueakyFieldTypesSerializableType_singleTon, new_CoTouchlabSqueakyFieldTypesSerializableType_init());
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesSerializableType)
  }
}

@end

CoTouchlabSqueakyFieldTypesSerializableType *CoTouchlabSqueakyFieldTypesSerializableType_getSingleton() {
  CoTouchlabSqueakyFieldTypesSerializableType_initialize();
  return CoTouchlabSqueakyFieldTypesSerializableType_singleTon;
}

void CoTouchlabSqueakyFieldTypesSerializableType_init(CoTouchlabSqueakyFieldTypesSerializableType *self) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, SERIALIZABLE));
}

CoTouchlabSqueakyFieldTypesSerializableType *new_CoTouchlabSqueakyFieldTypesSerializableType_init() {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesSerializableType, init)
}

CoTouchlabSqueakyFieldTypesSerializableType *create_CoTouchlabSqueakyFieldTypesSerializableType_init() {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesSerializableType, init)
}

void CoTouchlabSqueakyFieldTypesSerializableType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesSerializableType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesSerializableType *new_CoTouchlabSqueakyFieldTypesSerializableType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_NEW_IMPL(CoTouchlabSqueakyFieldTypesSerializableType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

CoTouchlabSqueakyFieldTypesSerializableType *create_CoTouchlabSqueakyFieldTypesSerializableType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  J2OBJC_CREATE_IMPL(CoTouchlabSqueakyFieldTypesSerializableType, initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_, sqlType, classes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesSerializableType)
