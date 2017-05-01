//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyLoggerOLog")
#ifdef RESTRICT_CoTouchlabSqueakyLoggerOLog
#define INCLUDE_ALL_CoTouchlabSqueakyLoggerOLog 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyLoggerOLog 1
#endif
#undef RESTRICT_CoTouchlabSqueakyLoggerOLog

#if !defined (CoTouchlabSqueakyLoggerOLog_) && (INCLUDE_ALL_CoTouchlabSqueakyLoggerOLog || defined(INCLUDE_CoTouchlabSqueakyLoggerOLog))
#define CoTouchlabSqueakyLoggerOLog_

@protocol CoTouchlabSqueakyLoggerOLogImpl;

@interface CoTouchlabSqueakyLoggerOLog : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message
      withNSException:(NSException *)t;

+ (void)eWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)eWithNSString:(NSString *)tag
         withNSString:(NSString *)message
      withNSException:(NSException *)t;

+ (void)iWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)iWithNSString:(NSString *)tag
         withNSString:(NSString *)message
      withNSException:(NSException *)t;

+ (void)setLogWithCoTouchlabSqueakyLoggerOLogImpl:(id<CoTouchlabSqueakyLoggerOLogImpl>)log;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message
      withNSException:(NSException *)t;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyLoggerOLog)

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_init(CoTouchlabSqueakyLoggerOLog *self);

FOUNDATION_EXPORT CoTouchlabSqueakyLoggerOLog *new_CoTouchlabSqueakyLoggerOLog_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyLoggerOLog *create_CoTouchlabSqueakyLoggerOLog_init();

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_setLogWithCoTouchlabSqueakyLoggerOLogImpl_(id<CoTouchlabSqueakyLoggerOLogImpl> log);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_dWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_dWithNSString_withNSString_withNSException_(NSString *tag, NSString *message, NSException *t);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_iWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_iWithNSString_withNSString_withNSException_(NSString *tag, NSString *message, NSException *t);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_wWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_wWithNSString_withNSString_withNSException_(NSString *tag, NSString *message, NSException *t);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_eWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void CoTouchlabSqueakyLoggerOLog_eWithNSString_withNSString_withNSException_(NSString *tag, NSString *message, NSException *t);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyLoggerOLog)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyLoggerOLog")