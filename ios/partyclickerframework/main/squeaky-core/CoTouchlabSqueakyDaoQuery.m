//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "CoTouchlabSqueakyDaoQuery.h"
#include "J2ObjC_source.h"

@interface CoTouchlabSqueakyDaoQuery : NSObject

@end

@implementation CoTouchlabSqueakyDaoQuery

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 3, 1, 2, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getFromStatementWithBoolean:);
  methods[1].selector = @selector(getWhereStatementWithBoolean:);
  methods[2].selector = @selector(getParameters);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getFromStatement", "Z", "LJavaSqlSQLException;", "getWhereStatement" };
  static const J2ObjcClassInfo _CoTouchlabSqueakyDaoQuery = { "Query", "co.touchlab.squeaky.dao", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_CoTouchlabSqueakyDaoQuery;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyDaoQuery)
