//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AndroidDatabaseCursor.h"
#include "CoTouchlabSqueakyDaoModelDao.h"
#include "CoTouchlabSqueakyDbSQLiteStatement.h"
#include "CoTouchlabSqueakyFieldDataPersister.h"
#include "CoTouchlabSqueakyFieldDataType.h"
#include "CoTouchlabSqueakyFieldFieldType.h"
#include "CoTouchlabSqueakyFieldFieldsEnum.h"
#include "CoTouchlabSqueakyFieldForeignCollectionInfo.h"
#include "CoTouchlabSqueakyFieldOrmLiteHelper.h"
#include "CoTouchlabSqueakyTableTableInfo.h"
#include "CoTouchlabSqueakyTableTransientCache.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "PDParty$Configuration.h"
#include "PDParty.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/List.h"

@interface PDParty_Configuration_Fields () {
 @public
  CoTouchlabSqueakyFieldFieldType *fieldType_;
}

@end

J2OBJC_FIELD_SETTER(PDParty_Configuration_Fields, fieldType_, CoTouchlabSqueakyFieldFieldType *)

__attribute__((unused)) static void PDParty_Configuration_Fields_initWithCoTouchlabSqueakyFieldFieldType_withNSString_withInt_(PDParty_Configuration_Fields *self, CoTouchlabSqueakyFieldFieldType *fieldType, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(PDParty_Configuration)

PDParty_Configuration *PDParty_Configuration_instance;

@implementation PDParty_Configuration

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PDParty_Configuration_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (PDParty *)createObjectWithAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results {
  PDParty *data = create_PDParty_init();
  return data;
}

- (void)fillRowWithId:(PDParty *)data
withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
withCoTouchlabSqueakyDaoModelDao:(CoTouchlabSqueakyDaoModelDao *)modelDao
withCoTouchlabSqueakyDaoDao_ForeignRefreshArray:(IOSObjectArray *)foreignRefreshMap
withCoTouchlabSqueakyTableTransientCache:(CoTouchlabSqueakyTableTransientCache *)objectCache {
  if (![((id<AndroidDatabaseCursor>) nil_chk(results)) isNullWithInt:0]) ((PDParty *) nil_chk(data))->id__ = [results getIntWithInt:0];
  JreStrongAssign(&((PDParty *) nil_chk(data))->name_, [results getStringWithInt:1]);
  if (![results isNullWithInt:2]) JreStrongAssign(&data->created_, (JavaUtilDate *) cast_chk([((id<CoTouchlabSqueakyFieldDataPersister>) nil_chk([((CoTouchlabSqueakyFieldFieldType *) nil_chk([((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType])) getDataPersister])) resultToJavaWithCoTouchlabSqueakyFieldFieldType:[((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType] withAndroidDatabaseCursor:results withInt:2], [JavaUtilDate class]));
}

- (void)assignIdWithId:(PDParty *)data
                withId:(id)val {
  ((PDParty *) nil_chk(data))->id__ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(CoTouchlabSqueakyFieldOrmLiteHelper_safeConvertWithIOSClass_withId_([IOSClass intClass], val), [JavaLangInteger class]))) intValue];
}

- (JavaLangInteger *)extractIdWithId:(PDParty *)data {
  if (data == nil) {
    return nil;
  }
  JavaLangInteger *val = JavaLangInteger_valueOfWithInt_(data->id__);
  val = [val intValue] == 0 ? nil : val;
  return val;
}

- (void)bindValsWithCoTouchlabSqueakyDbSQLiteStatement:(id<CoTouchlabSqueakyDbSQLiteStatement>)stmt
                                                withId:(PDParty *)data {
  NSString *val1 = ((PDParty *) nil_chk(data))->name_;
  if (val1 == nil) {
    [((id<CoTouchlabSqueakyDbSQLiteStatement>) nil_chk(stmt)) bindNullWithInt:1];
  }
  else {
    [((id<CoTouchlabSqueakyDbSQLiteStatement>) nil_chk(stmt)) bindStringWithInt:1 withNSString:data->name_];
  }
  id val2 = data->created_;
  if (val2 == nil) {
    [stmt bindNullWithInt:2];
  }
  else {
    [stmt bindStringWithInt:2 withNSString:[nil_chk([((id<CoTouchlabSqueakyFieldDataPersister>) nil_chk([((CoTouchlabSqueakyFieldFieldType *) nil_chk([((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType])) getDataPersister])) javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:[((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType] withId:val2]) description]];
  }
  [stmt bindLongWithInt:3 withLong:data->id__];
}

- (void)bindCreateValsWithCoTouchlabSqueakyDbSQLiteStatement:(id<CoTouchlabSqueakyDbSQLiteStatement>)stmt
                                                      withId:(PDParty *)data {
  NSString *val1 = ((PDParty *) nil_chk(data))->name_;
  if (val1 == nil) {
    [((id<CoTouchlabSqueakyDbSQLiteStatement>) nil_chk(stmt)) bindNullWithInt:1];
  }
  else {
    [((id<CoTouchlabSqueakyDbSQLiteStatement>) nil_chk(stmt)) bindStringWithInt:1 withNSString:data->name_];
  }
  id val2 = data->created_;
  if (val2 == nil) {
    [stmt bindNullWithInt:2];
  }
  else {
    [stmt bindStringWithInt:2 withNSString:[nil_chk([((id<CoTouchlabSqueakyFieldDataPersister>) nil_chk([((CoTouchlabSqueakyFieldFieldType *) nil_chk([((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType])) getDataPersister])) javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:[((id<CoTouchlabSqueakyFieldFieldsEnum>) nil_chk(IOSObjectArray_Get(nil_chk(fields_), 2))) getFieldType] withId:val2]) description]];
  }
}

- (NSString *)objectToStringWithId:(PDParty *)data {
  return @"heyo";
}

- (jboolean)objectsEqualWithId:(PDParty *)d1
                        withId:(PDParty *)d2 {
  return false;
}

- (void)fillForeignCollectionWithId:(PDParty *)data
   withCoTouchlabSqueakyDaoModelDao:(CoTouchlabSqueakyDaoModelDao *)modelDao
                       withNSString:(NSString *)fieldName {
}

+ (IOSObjectArray *)getFields {
  return PDParty_Configuration_getFields();
}

+ (IOSObjectArray *)getForeignConfigs {
  return PDParty_Configuration_getForeignConfigs();
}

- (CoTouchlabSqueakyTableTableInfo *)getTableConfig {
  CoTouchlabSqueakyTableTableInfo *config = create_CoTouchlabSqueakyTableTableInfo_initWithIOSClass_withNSString_withCoTouchlabSqueakyFieldFieldsEnumArray_withCoTouchlabSqueakyFieldForeignCollectionInfoArray_(PDParty_class_(), @"party", PDParty_Configuration_getFields(), PDParty_Configuration_getForeignConfigs());
  return config;
}

- (void)dealloc {
  RELEASE_(fields_);
  RELEASE_(foreignConfigs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPDParty;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 2, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 11, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, 9, 2, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 2, 18, -1, -1 },
    { NULL, "[LCoTouchlabSqueakyFieldFieldsEnum;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LCoTouchlabSqueakyFieldForeignCollectionInfo;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LCoTouchlabSqueakyTableTableInfo;", 0x1, -1, -1, 2, 19, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createObjectWithAndroidDatabaseCursor:);
  methods[2].selector = @selector(fillRowWithId:withAndroidDatabaseCursor:withCoTouchlabSqueakyDaoModelDao:withCoTouchlabSqueakyDaoDao_ForeignRefreshArray:withCoTouchlabSqueakyTableTransientCache:);
  methods[3].selector = @selector(assignIdWithId:withId:);
  methods[4].selector = @selector(extractIdWithId:);
  methods[5].selector = @selector(bindValsWithCoTouchlabSqueakyDbSQLiteStatement:withId:);
  methods[6].selector = @selector(bindCreateValsWithCoTouchlabSqueakyDbSQLiteStatement:withId:);
  methods[7].selector = @selector(objectToStringWithId:);
  methods[8].selector = @selector(objectsEqualWithId:withId:);
  methods[9].selector = @selector(fillForeignCollectionWithId:withCoTouchlabSqueakyDaoModelDao:withNSString:);
  methods[10].selector = @selector(getFields);
  methods[11].selector = @selector(getForeignConfigs);
  methods[12].selector = @selector(getTableConfig);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "instance", "LPDParty_Configuration;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "fields_", "[LCoTouchlabSqueakyFieldFieldsEnum;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "foreignConfigs_", "[LCoTouchlabSqueakyFieldForeignCollectionInfo;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "createObject", "LAndroidDatabaseCursor;", "LJavaSqlSQLException;", "fillRow", "LPDParty;LAndroidDatabaseCursor;LCoTouchlabSqueakyDaoModelDao;[LCoTouchlabSqueakyDaoDao_ForeignRefresh;LCoTouchlabSqueakyTableTransientCache;", "(Lcom/kgalligan/partyclicker/data/Party;Landroid/database/Cursor;Lco/touchlab/squeaky/dao/ModelDao<Lcom/kgalligan/partyclicker/data/Party;>;[Lco/touchlab/squeaky/dao/Dao$ForeignRefresh;Lco/touchlab/squeaky/table/TransientCache;)V", "assignId", "LPDParty;LNSObject;", "extractId", "LPDParty;", "bindVals", "LCoTouchlabSqueakyDbSQLiteStatement;LPDParty;", "bindCreateVals", "objectToString", "objectsEqual", "LPDParty;LPDParty;", "fillForeignCollection", "LPDParty;LCoTouchlabSqueakyDaoModelDao;LNSString;", "(Lcom/kgalligan/partyclicker/data/Party;Lco/touchlab/squeaky/dao/ModelDao<Lcom/kgalligan/partyclicker/data/Party;>;Ljava/lang/String;)V", "()Lco/touchlab/squeaky/table/TableInfo<Lcom/kgalligan/partyclicker/data/Party;>;", &PDParty_Configuration_instance, "LPDParty_Configuration_Fields;", "Ljava/lang/Object;Lco/touchlab/squeaky/table/GeneratedTableMapper<Lcom/kgalligan/partyclicker/data/Party;>;" };
  static const J2ObjcClassInfo _PDParty_Configuration = { "Party$Configuration", "com.kgalligan.partyclicker.data", ptrTable, methods, fields, 7, 0x11, 13, 3, -1, 21, -1, 22, -1 };
  return &_PDParty_Configuration;
}

+ (void)initialize {
  if (self == [PDParty_Configuration class]) {
    JreStrongAssignAndConsume(&PDParty_Configuration_instance, new_PDParty_Configuration_init());
    J2OBJC_SET_INITIALIZED(PDParty_Configuration)
  }
}

@end

void PDParty_Configuration_init(PDParty_Configuration *self) {
  NSObject_init(self);
  JreStrongAssign(&self->fields_, PDParty_Configuration_getFields());
  JreStrongAssign(&self->foreignConfigs_, PDParty_Configuration_getForeignConfigs());
}

PDParty_Configuration *new_PDParty_Configuration_init() {
  J2OBJC_NEW_IMPL(PDParty_Configuration, init)
}

PDParty_Configuration *create_PDParty_Configuration_init() {
  J2OBJC_CREATE_IMPL(PDParty_Configuration, init)
}

IOSObjectArray *PDParty_Configuration_getFields() {
  PDParty_Configuration_initialize();
  return PDParty_Configuration_Fields_values();
}

IOSObjectArray *PDParty_Configuration_getForeignConfigs() {
  PDParty_Configuration_initialize();
  id<JavaUtilList> list = create_JavaUtilArrayList_init();
  CoTouchlabSqueakyFieldForeignCollectionInfo *config = nil;
  return [list toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[list size] type:CoTouchlabSqueakyFieldForeignCollectionInfo_class_()]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PDParty_Configuration)

J2OBJC_INITIALIZED_DEFN(PDParty_Configuration_Fields)

PDParty_Configuration_Fields *PDParty_Configuration_Fields_values_[3];

@implementation PDParty_Configuration_Fields

- (CoTouchlabSqueakyFieldFieldType *)getFieldType {
  return fieldType_;
}

+ (IOSObjectArray *)values {
  return PDParty_Configuration_Fields_values();
}

+ (PDParty_Configuration_Fields *)valueOfWithNSString:(NSString *)name {
  return PDParty_Configuration_Fields_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LCoTouchlabSqueakyFieldFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LPDParty_Configuration_Fields;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPDParty_Configuration_Fields;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getFieldType);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "id", "LPDParty_Configuration_Fields;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "name", "LPDParty_Configuration_Fields;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "created", "LPDParty_Configuration_Fields;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "fieldType_", "LCoTouchlabSqueakyFieldFieldType;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(PDParty_Configuration_Fields, id), &JreEnum(PDParty_Configuration_Fields, name), &JreEnum(PDParty_Configuration_Fields, created), "LPDParty_Configuration;", "Ljava/lang/Enum<Lcom/kgalligan/partyclicker/data/Party$Configuration$Fields;>;Lco/touchlab/squeaky/field/FieldsEnum;" };
  static const J2ObjcClassInfo _PDParty_Configuration_Fields = { "Fields", "com.kgalligan.partyclicker.data", ptrTable, methods, fields, 7, 0x4019, 3, 4, 5, -1, -1, 6, -1 };
  return &_PDParty_Configuration_Fields;
}

+ (void)initialize {
  if (self == [PDParty_Configuration_Fields class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(PDParty_Configuration_Fields, id) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    PDParty_Configuration_Fields_initWithCoTouchlabSqueakyFieldFieldType_withNSString_withInt_(e, create_CoTouchlabSqueakyFieldFieldType_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withBoolean_withCoTouchlabSqueakyFieldDataType_withIOSClass_withBoolean_withNSString_withBoolean_withBoolean_withBoolean_withBoolean_withNSString_withNSString_withNSString_withBoolean_(@"party", @"id", @"id", true, true, false, JreLoadEnum(CoTouchlabSqueakyFieldDataType, INTEGER), [IOSClass intClass], true, nil, false, false, false, false, nil, nil, nil, false), @"id", 0);
    (JreEnum(PDParty_Configuration_Fields, name) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    PDParty_Configuration_Fields_initWithCoTouchlabSqueakyFieldFieldType_withNSString_withInt_(e, create_CoTouchlabSqueakyFieldFieldType_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withBoolean_withCoTouchlabSqueakyFieldDataType_withIOSClass_withBoolean_withNSString_withBoolean_withBoolean_withBoolean_withBoolean_withNSString_withNSString_withNSString_withBoolean_(@"party", @"name", @"name", false, false, false, JreLoadEnum(CoTouchlabSqueakyFieldDataType, STRING), NSString_class_(), true, nil, false, false, false, false, nil, nil, nil, false), @"name", 1);
    (JreEnum(PDParty_Configuration_Fields, created) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    PDParty_Configuration_Fields_initWithCoTouchlabSqueakyFieldFieldType_withNSString_withInt_(e, create_CoTouchlabSqueakyFieldFieldType_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withBoolean_withCoTouchlabSqueakyFieldDataType_withIOSClass_withBoolean_withNSString_withBoolean_withBoolean_withBoolean_withBoolean_withNSString_withNSString_withNSString_withBoolean_(@"party", @"created", @"created", false, false, false, JreLoadEnum(CoTouchlabSqueakyFieldDataType, DATE_LONG), JavaUtilDate_class_(), true, nil, false, false, false, false, nil, nil, nil, false), @"created", 2);
    J2OBJC_SET_INITIALIZED(PDParty_Configuration_Fields)
  }
}

@end

void PDParty_Configuration_Fields_initWithCoTouchlabSqueakyFieldFieldType_withNSString_withInt_(PDParty_Configuration_Fields *self, CoTouchlabSqueakyFieldFieldType *fieldType, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  JreStrongAssign(&self->fieldType_, fieldType);
}

IOSObjectArray *PDParty_Configuration_Fields_values() {
  PDParty_Configuration_Fields_initialize();
  return [IOSObjectArray arrayWithObjects:PDParty_Configuration_Fields_values_ count:3 type:PDParty_Configuration_Fields_class_()];
}

PDParty_Configuration_Fields *PDParty_Configuration_Fields_valueOfWithNSString_(NSString *name) {
  PDParty_Configuration_Fields_initialize();
  for (int i = 0; i < 3; i++) {
    PDParty_Configuration_Fields *e = PDParty_Configuration_Fields_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

PDParty_Configuration_Fields *PDParty_Configuration_Fields_fromOrdinal(NSUInteger ordinal) {
  PDParty_Configuration_Fields_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return PDParty_Configuration_Fields_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PDParty_Configuration_Fields)
