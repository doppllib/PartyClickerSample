//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidOsLooper")
#ifdef RESTRICT_AndroidOsLooper
#define INCLUDE_ALL_AndroidOsLooper 0
#else
#define INCLUDE_ALL_AndroidOsLooper 1
#endif
#undef RESTRICT_AndroidOsLooper

#if !defined (AndroidOsLooper_) && (INCLUDE_ALL_AndroidOsLooper || defined(INCLUDE_AndroidOsLooper))
#define AndroidOsLooper_

#define RESTRICT_AndroidOsThreadNudger 1
#define INCLUDE_AndroidOsThreadNudger 1
#include "AndroidOsThreadNudger.h"

@class AndroidOsMessageQueue;
@class JavaLangThread;
@class JavaLangThreadLocal;
@protocol AndroidUtilPrinter;

@interface AndroidOsLooper : NSObject < AndroidOsThreadNudger > {
 @public
  AndroidOsMessageQueue *mQueue_;
  JavaLangThread *mThread_;
  volatile_jboolean mRun_;
}

#pragma mark Public

- (void)dumpWithAndroidUtilPrinter:(id<AndroidUtilPrinter>)pw
                      withNSString:(NSString *)prefix;

+ (AndroidOsLooper *)getMainLooper;

- (AndroidOsMessageQueue *)getQueue;

- (JavaLangThread *)getThread;

+ (void)loop;

+ (AndroidOsLooper *)myLooper;

+ (AndroidOsMessageQueue *)myQueue;

- (void)nudge;

+ (void)prepare;

+ (void)prepareMainLooper;

- (void)quit;

- (void)setMessageLoggingWithAndroidUtilPrinter:(id<AndroidUtilPrinter>)printer;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(AndroidOsLooper)

J2OBJC_FIELD_SETTER(AndroidOsLooper, mQueue_, AndroidOsMessageQueue *)
J2OBJC_FIELD_SETTER(AndroidOsLooper, mThread_, JavaLangThread *)

inline JavaLangThreadLocal *AndroidOsLooper_get_sThreadLocal();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaLangThreadLocal *AndroidOsLooper_sThreadLocal;
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidOsLooper, sThreadLocal, JavaLangThreadLocal *)

FOUNDATION_EXPORT void AndroidOsLooper_prepare();

FOUNDATION_EXPORT void AndroidOsLooper_prepareMainLooper();

FOUNDATION_EXPORT AndroidOsLooper *AndroidOsLooper_getMainLooper();

FOUNDATION_EXPORT void AndroidOsLooper_loop();

FOUNDATION_EXPORT AndroidOsLooper *AndroidOsLooper_myLooper();

FOUNDATION_EXPORT AndroidOsMessageQueue *AndroidOsLooper_myQueue();

J2OBJC_TYPE_LITERAL_HEADER(AndroidOsLooper)

#endif

#if !defined (AndroidOsLooper_Profiler_) && (INCLUDE_ALL_AndroidOsLooper || defined(INCLUDE_AndroidOsLooper_Profiler))
#define AndroidOsLooper_Profiler_

@class AndroidOsMessage;

@protocol AndroidOsLooper_Profiler < JavaObject >

- (void)profileWithAndroidOsMessage:(AndroidOsMessage *)message
                           withLong:(jlong)wallStart
                           withLong:(jlong)wallTime
                           withLong:(jlong)threadStart
                           withLong:(jlong)threadTime;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidOsLooper_Profiler)

J2OBJC_TYPE_LITERAL_HEADER(AndroidOsLooper_Profiler)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidOsLooper")
