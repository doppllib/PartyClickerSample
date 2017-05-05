//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesBaseDateType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesBaseDateType

#if !defined (CoTouchlabSqueakyFieldTypesBaseDateType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesBaseDateType))
#define CoTouchlabSqueakyFieldTypesBaseDateType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesBaseDataType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesBaseDataType 1
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"

@class CoTouchlabSqueakyFieldFieldType;
@class CoTouchlabSqueakyFieldSqlType;
@class CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig;
@class IOSObjectArray;
@class JavaUtilDate;

@interface CoTouchlabSqueakyFieldTypesBaseDateType : CoTouchlabSqueakyFieldTypesBaseDataType

#pragma mark Protected

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType;

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes;

+ (CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *)convertDateStringConfigWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                                            withCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig:(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *)defaultDateFormatConfig;

+ (NSString *)normalizeDateStringWithCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig:(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *)formatConfig
                                                                                       withNSString:(NSString *)dateStr;

+ (JavaUtilDate *)parseDateStringWithCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig:(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *)formatConfig
                                                                                       withNSString:(NSString *)dateStr;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesBaseDateType)

inline CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *CoTouchlabSqueakyFieldTypesBaseDateType_get_defaultDateFormatConfig();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *CoTouchlabSqueakyFieldTypesBaseDateType_defaultDateFormatConfig;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesBaseDateType, defaultDateFormatConfig, CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *)

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesBaseDateType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesBaseDateType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesBaseDateType_initWithCoTouchlabSqueakyFieldSqlType_(CoTouchlabSqueakyFieldTypesBaseDateType *self, CoTouchlabSqueakyFieldSqlType *sqlType);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *CoTouchlabSqueakyFieldTypesBaseDateType_convertDateStringConfigWithCoTouchlabSqueakyFieldFieldType_withCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_(CoTouchlabSqueakyFieldFieldType *fieldType, CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *defaultDateFormatConfig);

FOUNDATION_EXPORT JavaUtilDate *CoTouchlabSqueakyFieldTypesBaseDateType_parseDateStringWithCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_withNSString_(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *formatConfig, NSString *dateStr);

FOUNDATION_EXPORT NSString *CoTouchlabSqueakyFieldTypesBaseDateType_normalizeDateStringWithCoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_withNSString_(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *formatConfig, NSString *dateStr);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesBaseDateType)

#endif

#if !defined (CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig))
#define CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_

@class JavaTextDateFormat;

@interface CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig : NSObject {
 @public
  NSString *dateFormatStr_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)dateFormatStr;

- (JavaTextDateFormat *)getDateFormat;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig)

J2OBJC_FIELD_SETTER(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig, dateFormatStr_, NSString *)

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_initWithNSString_(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *self, NSString *dateFormatStr);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *new_CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_initWithNSString_(NSString *dateFormatStr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig *create_CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig_initWithNSString_(NSString *dateFormatStr);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesBaseDateType_DateStringFormatConfig)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesBaseDateType")
