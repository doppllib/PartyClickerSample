//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "CoTouchlabSqueakyTableDatabaseTable.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *CoTouchlabSqueakyTableDatabaseTable__Annotations$0();

@implementation CoTouchlabSqueakyTableDatabaseTable

@synthesize tableName = tableName_;

+ (NSString *)tableNameDefault {
  return @"";
}

- (IOSClass *)annotationType {
  return CoTouchlabSqueakyTableDatabaseTable_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@co.touchlab.squeaky.table.DatabaseTable(tableName=%@)", tableName_];
}

- (void)dealloc {
  RELEASE_(tableName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(tableName);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tableName_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&CoTouchlabSqueakyTableDatabaseTable__Annotations$0 };
  static const J2ObjcClassInfo _CoTouchlabSqueakyTableDatabaseTable = { "DatabaseTable", "co.touchlab.squeaky.table", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 0 };
  return &_CoTouchlabSqueakyTableDatabaseTable;
}

@end

id<CoTouchlabSqueakyTableDatabaseTable> create_CoTouchlabSqueakyTableDatabaseTable(NSString *tableName) {
  CoTouchlabSqueakyTableDatabaseTable *self = AUTORELEASE([[CoTouchlabSqueakyTableDatabaseTable alloc] init]);
  self->tableName_ = RETAIN_(tableName);
  return self;
}

IOSObjectArray *CoTouchlabSqueakyTableDatabaseTable__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray arrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyTableDatabaseTable)
