//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidArchCoreExecutorDefaultTaskExecutor")
#ifdef RESTRICT_AndroidArchCoreExecutorDefaultTaskExecutor
#define INCLUDE_ALL_AndroidArchCoreExecutorDefaultTaskExecutor 0
#else
#define INCLUDE_ALL_AndroidArchCoreExecutorDefaultTaskExecutor 1
#endif
#undef RESTRICT_AndroidArchCoreExecutorDefaultTaskExecutor

#if !defined (AndroidArchCoreExecutorDefaultTaskExecutor_) && (INCLUDE_ALL_AndroidArchCoreExecutorDefaultTaskExecutor || defined(INCLUDE_AndroidArchCoreExecutorDefaultTaskExecutor))
#define AndroidArchCoreExecutorDefaultTaskExecutor_

#define RESTRICT_AndroidArchCoreExecutorTaskExecutor 1
#define INCLUDE_AndroidArchCoreExecutorTaskExecutor 1
#include "AndroidArchCoreExecutorTaskExecutor.h"

@protocol JavaLangRunnable;

@interface AndroidArchCoreExecutorDefaultTaskExecutor : AndroidArchCoreExecutorTaskExecutor

#pragma mark Public

- (instancetype)init;

- (void)executeOnDiskIOWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (jboolean)isMainThread;

- (void)postToMainThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidArchCoreExecutorDefaultTaskExecutor)

FOUNDATION_EXPORT void AndroidArchCoreExecutorDefaultTaskExecutor_init(AndroidArchCoreExecutorDefaultTaskExecutor *self);

FOUNDATION_EXPORT AndroidArchCoreExecutorDefaultTaskExecutor *new_AndroidArchCoreExecutorDefaultTaskExecutor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidArchCoreExecutorDefaultTaskExecutor *create_AndroidArchCoreExecutorDefaultTaskExecutor_init();

J2OBJC_TYPE_LITERAL_HEADER(AndroidArchCoreExecutorDefaultTaskExecutor)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidArchCoreExecutorDefaultTaskExecutor")