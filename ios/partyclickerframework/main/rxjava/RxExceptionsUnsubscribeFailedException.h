//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxExceptionsUnsubscribeFailedException")
#ifdef RESTRICT_RxExceptionsUnsubscribeFailedException
#define INCLUDE_ALL_RxExceptionsUnsubscribeFailedException 0
#else
#define INCLUDE_ALL_RxExceptionsUnsubscribeFailedException 1
#endif
#undef RESTRICT_RxExceptionsUnsubscribeFailedException

#if !defined (RxExceptionsUnsubscribeFailedException_) && (INCLUDE_ALL_RxExceptionsUnsubscribeFailedException || defined(INCLUDE_RxExceptionsUnsubscribeFailedException))
#define RxExceptionsUnsubscribeFailedException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@interface RxExceptionsUnsubscribeFailedException : JavaLangRuntimeException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)throwable;
#define withJavaLangThrowable withNSException

- (instancetype)initWithNSException:(NSException *)throwable;
#define initWithJavaLangThrowable initWithNSException

@end

J2OBJC_EMPTY_STATIC_INIT(RxExceptionsUnsubscribeFailedException)

FOUNDATION_EXPORT void RxExceptionsUnsubscribeFailedException_initWithNSException_(RxExceptionsUnsubscribeFailedException *self, NSException *throwable);

FOUNDATION_EXPORT RxExceptionsUnsubscribeFailedException *new_RxExceptionsUnsubscribeFailedException_initWithNSException_(NSException *throwable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxExceptionsUnsubscribeFailedException *create_RxExceptionsUnsubscribeFailedException_initWithNSException_(NSException *throwable);

FOUNDATION_EXPORT void RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(RxExceptionsUnsubscribeFailedException *self, NSString *message, NSException *throwable);

FOUNDATION_EXPORT RxExceptionsUnsubscribeFailedException *new_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(NSString *message, NSException *throwable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxExceptionsUnsubscribeFailedException *create_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_(NSString *message, NSException *throwable);

J2OBJC_TYPE_LITERAL_HEADER(RxExceptionsUnsubscribeFailedException)

#endif

#pragma pop_macro("INCLUDE_ALL_RxExceptionsUnsubscribeFailedException")
