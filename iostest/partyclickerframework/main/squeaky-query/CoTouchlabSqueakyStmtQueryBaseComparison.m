//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "CoTouchlabSqueakyDaoSqueakyContext.h"
#include "CoTouchlabSqueakyFieldDataPersister.h"
#include "CoTouchlabSqueakyFieldFieldType.h"
#include "CoTouchlabSqueakySqlSqlHelper.h"
#include "CoTouchlabSqueakyStmtJoinAlias.h"
#include "CoTouchlabSqueakyStmtQueryBaseComparison.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/sql/SQLException.h"
#include "java/util/List.h"

@interface CoTouchlabSqueakyStmtQueryBaseComparison () {
 @public
  CoTouchlabSqueakyStmtJoinAlias *joinAlias_;
  id value_;
}

@end

J2OBJC_FIELD_SETTER(CoTouchlabSqueakyStmtQueryBaseComparison, joinAlias_, CoTouchlabSqueakyStmtJoinAlias *)
J2OBJC_FIELD_SETTER(CoTouchlabSqueakyStmtQueryBaseComparison, value_, id)

inline NSString *CoTouchlabSqueakyStmtQueryBaseComparison_get_NUMBER_CHARACTERS();
static NSString *CoTouchlabSqueakyStmtQueryBaseComparison_NUMBER_CHARACTERS = @"0123456789.-+";
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyStmtQueryBaseComparison, NUMBER_CHARACTERS, NSString *)

@implementation CoTouchlabSqueakyStmtQueryBaseComparison

- (instancetype)initWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                                 withId:(id)value
                                            withBoolean:(jboolean)isComparison
                     withCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias {
  CoTouchlabSqueakyStmtQueryBaseComparison_initWithCoTouchlabSqueakyFieldFieldType_withId_withBoolean_withCoTouchlabSqueakyStmtJoinAlias_(self, fieldType, value, isComparison, joinAlias);
  return self;
}

- (NSString *)getOperation {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)appendSqlWithCoTouchlabSqueakyDaoSqueakyContext:(CoTouchlabSqueakyDaoSqueakyContext *)squeakyContext
                              withJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                                            withBoolean:(jboolean)joinsAllowed {
  CoTouchlabSqueakySqlSqlHelper_appendWhereClauseBodyWithJavaLangStringBuilder_withNSString_withNSString_withCoTouchlabSqueakyFieldFieldType_(sb, joinsAllowed ? ((CoTouchlabSqueakyStmtJoinAlias *) nil_chk(joinAlias_))->tablePrefix_ : nil, [self getOperation], fieldType_);
}

- (void)appendValueWithCoTouchlabSqueakyDaoSqueakyContext:(CoTouchlabSqueakyDaoSqueakyContext *)squeakyContext
                                         withJavaUtilList:(id<JavaUtilList>)params {
  CoTouchlabSqueakySqlSqlHelper_appendArgOrValueWithCoTouchlabSqueakyDaoSqueakyContext_withCoTouchlabSqueakyFieldFieldType_withJavaUtilList_withId_(squeakyContext, fieldType_, params, value_);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:[((CoTouchlabSqueakyFieldFieldType *) nil_chk(fieldType_)) getColumnName]])) appendWithChar:' '];
  [sb appendWithNSString:[self getOperation]];
  [sb appendWithChar:' '];
  [sb appendWithId:value_];
  return [sb description];
}

- (void)dealloc {
  RELEASE_(fieldType_);
  RELEASE_(joinAlias_);
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, 6, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithCoTouchlabSqueakyFieldFieldType:withId:withBoolean:withCoTouchlabSqueakyStmtJoinAlias:);
  methods[1].selector = @selector(getOperation);
  methods[2].selector = @selector(appendSqlWithCoTouchlabSqueakyDaoSqueakyContext:withJavaLangStringBuilder:withBoolean:);
  methods[3].selector = @selector(appendValueWithCoTouchlabSqueakyDaoSqueakyContext:withJavaUtilList:);
  methods[4].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NUMBER_CHARACTERS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "fieldType_", "LCoTouchlabSqueakyFieldFieldType;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "joinAlias_", "LCoTouchlabSqueakyStmtJoinAlias;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LCoTouchlabSqueakyFieldFieldType;LNSObject;ZLCoTouchlabSqueakyStmtJoinAlias;", "LJavaSqlSQLException;", "appendSql", "LCoTouchlabSqueakyDaoSqueakyContext;LJavaLangStringBuilder;Z", "appendValue", "LCoTouchlabSqueakyDaoSqueakyContext;LJavaUtilList;", "(Lco/touchlab/squeaky/dao/SqueakyContext;Ljava/util/List<Ljava/lang/String;>;)V", "toString", &CoTouchlabSqueakyStmtQueryBaseComparison_NUMBER_CHARACTERS };
  static const J2ObjcClassInfo _CoTouchlabSqueakyStmtQueryBaseComparison = { "BaseComparison", "co.touchlab.squeaky.stmt.query", ptrTable, methods, fields, 7, 0x400, 5, 4, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyStmtQueryBaseComparison;
}

@end

void CoTouchlabSqueakyStmtQueryBaseComparison_initWithCoTouchlabSqueakyFieldFieldType_withId_withBoolean_withCoTouchlabSqueakyStmtJoinAlias_(CoTouchlabSqueakyStmtQueryBaseComparison *self, CoTouchlabSqueakyFieldFieldType *fieldType, id value, jboolean isComparison, CoTouchlabSqueakyStmtJoinAlias *joinAlias) {
  NSObject_init(self);
  JreStrongAssign(&self->joinAlias_, joinAlias);
  if (isComparison && fieldType != nil && ![fieldType isComparable]) {
    @throw create_JavaSqlSQLException_initWithNSString_(JreStrcat("$$$@$", @"Field '", [fieldType getColumnName], @"' is of data type ", [fieldType getDataPersister], @" which can not be compared"));
  }
  JreStrongAssign(&self->fieldType_, fieldType);
  JreStrongAssign(&self->value_, value);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyStmtQueryBaseComparison)