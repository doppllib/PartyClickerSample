//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "CoTouchlabSqueakyStmtQueryClause.h"
#include "J2ObjC_source.h"

@interface CoTouchlabSqueakyStmtQueryClause : NSObject

@end

@implementation CoTouchlabSqueakyStmtQueryClause

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 2, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(appendSqlWithCoTouchlabSqueakyDaoSqueakyContext:withJavaLangStringBuilder:withBoolean:);
  methods[1].selector = @selector(appendValueWithCoTouchlabSqueakyDaoSqueakyContext:withJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "appendSql", "LCoTouchlabSqueakyDaoSqueakyContext;LJavaLangStringBuilder;Z", "LJavaSqlSQLException;", "appendValue", "LCoTouchlabSqueakyDaoSqueakyContext;LJavaUtilList;", "(Lco/touchlab/squeaky/dao/SqueakyContext;Ljava/util/List<Ljava/lang/String;>;)V" };
  static const J2ObjcClassInfo _CoTouchlabSqueakyStmtQueryClause = { "Clause", "co.touchlab.squeaky.stmt.query", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyStmtQueryClause;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyStmtQueryClause)
