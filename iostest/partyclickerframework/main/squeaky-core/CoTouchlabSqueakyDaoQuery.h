//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyDaoQuery")
#ifdef RESTRICT_CoTouchlabSqueakyDaoQuery
#define INCLUDE_ALL_CoTouchlabSqueakyDaoQuery 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyDaoQuery 1
#endif
#undef RESTRICT_CoTouchlabSqueakyDaoQuery

#if !defined (CoTouchlabSqueakyDaoQuery_) && (INCLUDE_ALL_CoTouchlabSqueakyDaoQuery || defined(INCLUDE_CoTouchlabSqueakyDaoQuery))
#define CoTouchlabSqueakyDaoQuery_

@class IOSObjectArray;

@protocol CoTouchlabSqueakyDaoQuery < JavaObject >

- (NSString *)getFromStatementWithBoolean:(jboolean)joinsAllowed;

- (NSString *)getWhereStatementWithBoolean:(jboolean)joinsAllowed;

- (IOSObjectArray *)getParameters;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabSqueakyDaoQuery)

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyDaoQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyDaoQuery")