//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyStmtWhere")
#ifdef RESTRICT_CoTouchlabSqueakyStmtWhere
#define INCLUDE_ALL_CoTouchlabSqueakyStmtWhere 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyStmtWhere 1
#endif
#undef RESTRICT_CoTouchlabSqueakyStmtWhere

#if !defined (CoTouchlabSqueakyStmtWhere_) && (INCLUDE_ALL_CoTouchlabSqueakyStmtWhere || defined(INCLUDE_CoTouchlabSqueakyStmtWhere))
#define CoTouchlabSqueakyStmtWhere_

#define RESTRICT_CoTouchlabSqueakyStmtQueryQueryable 1
#define INCLUDE_CoTouchlabSqueakyStmtQueryQueryable 1
#include "CoTouchlabSqueakyStmtQueryQueryable.h"

#define RESTRICT_CoTouchlabSqueakyDaoQuery 1
#define INCLUDE_CoTouchlabSqueakyDaoQuery 1
#include "CoTouchlabSqueakyDaoQuery.h"

@class CoTouchlabSqueakyStmtJoinAlias;
@class CoTouchlabSqueakyStmtQueryManyClause;
@class CoTouchlabSqueakyStmtQueryNot;
@class CoTouchlabSqueakyStmtQueryQueryFactory;
@class IOSObjectArray;
@class JavaLangStringBuilder;
@protocol CoTouchlabSqueakyDaoDao;
@protocol CoTouchlabSqueakyDaoDao_QueryModifiers;
@protocol JavaLangIterable;

@interface CoTouchlabSqueakyStmtWhere : NSObject < CoTouchlabSqueakyStmtQueryQueryable, CoTouchlabSqueakyDaoQuery >

#pragma mark Public

- (instancetype)initWithCoTouchlabSqueakyDaoDao:(id<CoTouchlabSqueakyDaoDao>)d;

- (CoTouchlabSqueakyStmtQueryManyClause *)and__;

- (CoTouchlabSqueakyStmtWhere *)betweenWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                             withNSString:(NSString *)columnFieldName
                                                                   withId:(id)low
                                                                   withId:(id)high;

- (CoTouchlabSqueakyStmtWhere *)betweenWithNSString:(NSString *)columnFieldName
                                             withId:(id)low
                                             withId:(id)high;

- (CoTouchlabSqueakyStmtQueryQueryFactory *)createQueryFactory;

- (id<CoTouchlabSqueakyStmtQueryQueryable>)end;

- (CoTouchlabSqueakyStmtWhere *)eqWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)eqWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)geWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)geWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (NSString *)getFromStatementWithBoolean:(jboolean)joinsAllowed;

- (IOSObjectArray *)getParameters;

- (NSString *)getWhereStatementWithBoolean:(jboolean)joinsAllowed;

- (CoTouchlabSqueakyStmtWhere *)gtWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)gtWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)inWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                withJavaLangIterable:(id<JavaLangIterable>)objects;

- (CoTouchlabSqueakyStmtWhere *)inWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                   withNSObjectArray:(IOSObjectArray *)objects;

- (CoTouchlabSqueakyStmtWhere *)inWithNSString:(NSString *)columnFieldName
                          withJavaLangIterable:(id<JavaLangIterable>)objects;

- (CoTouchlabSqueakyStmtWhere *)inWithNSString:(NSString *)columnFieldName
                             withNSObjectArray:(IOSObjectArray *)objects;

- (CoTouchlabSqueakyStmtWhere *)isNotNullWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                               withNSString:(NSString *)columnFieldName;

- (CoTouchlabSqueakyStmtWhere *)isNotNullWithNSString:(NSString *)columnFieldName;

- (CoTouchlabSqueakyStmtWhere *)isNullWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                            withNSString:(NSString *)columnFieldName;

- (CoTouchlabSqueakyStmtWhere *)isNullWithNSString:(NSString *)columnFieldName;

- (CoTouchlabSqueakyStmtJoinAlias *)joinWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)parent
                                                              withNSString:(NSString *)field;

- (CoTouchlabSqueakyStmtJoinAlias *)joinWithNSString:(NSString *)field;

- (CoTouchlabSqueakyStmtWhere *)leWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)leWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)likeWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                          withNSString:(NSString *)columnFieldName
                                                                withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)likeWithNSString:(NSString *)columnFieldName
                                          withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)ltWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)ltWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)neWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                        withNSString:(NSString *)columnFieldName
                                                              withId:(id)value;

- (CoTouchlabSqueakyStmtWhere *)neWithNSString:(NSString *)columnFieldName
                                        withId:(id)value;

- (CoTouchlabSqueakyStmtQueryNot *)not__;

- (CoTouchlabSqueakyStmtWhere *)notInWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                           withNSString:(NSString *)columnFieldName
                                                   withJavaLangIterable:(id<JavaLangIterable>)objects;

- (CoTouchlabSqueakyStmtWhere *)notInWithCoTouchlabSqueakyStmtJoinAlias:(CoTouchlabSqueakyStmtJoinAlias *)joinAlias
                                                           withNSString:(NSString *)columnFieldName
                                                      withNSObjectArray:(IOSObjectArray *)objects;

- (CoTouchlabSqueakyStmtWhere *)notInWithNSString:(NSString *)columnFieldName
                             withJavaLangIterable:(id<JavaLangIterable>)objects;

- (CoTouchlabSqueakyStmtWhere *)notInWithNSString:(NSString *)columnFieldName
                                withNSObjectArray:(IOSObjectArray *)objects;

- (CoTouchlabSqueakyStmtQueryManyClause *)or__;

- (id<CoTouchlabSqueakyDaoDao_QueryModifiers>)query;

- (CoTouchlabSqueakyStmtWhere *)reset;

- (NSString *)description;

#pragma mark Package-Private

- (void)appendSqlWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                               withBoolean:(jboolean)joinsAllowed;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabSqueakyStmtWhere)

FOUNDATION_EXPORT void CoTouchlabSqueakyStmtWhere_initWithCoTouchlabSqueakyDaoDao_(CoTouchlabSqueakyStmtWhere *self, id<CoTouchlabSqueakyDaoDao> d);

FOUNDATION_EXPORT CoTouchlabSqueakyStmtWhere *new_CoTouchlabSqueakyStmtWhere_initWithCoTouchlabSqueakyDaoDao_(id<CoTouchlabSqueakyDaoDao> d) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyStmtWhere *create_CoTouchlabSqueakyStmtWhere_initWithCoTouchlabSqueakyDaoDao_(id<CoTouchlabSqueakyDaoDao> d);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyStmtWhere)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyStmtWhere")
