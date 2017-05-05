//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxPluginsRxJavaErrorHandler")
#ifdef RESTRICT_RxPluginsRxJavaErrorHandler
#define INCLUDE_ALL_RxPluginsRxJavaErrorHandler 0
#else
#define INCLUDE_ALL_RxPluginsRxJavaErrorHandler 1
#endif
#undef RESTRICT_RxPluginsRxJavaErrorHandler

#if !defined (RxPluginsRxJavaErrorHandler_) && (INCLUDE_ALL_RxPluginsRxJavaErrorHandler || defined(INCLUDE_RxPluginsRxJavaErrorHandler))
#define RxPluginsRxJavaErrorHandler_

@interface RxPluginsRxJavaErrorHandler : NSObject

#pragma mark Public

- (instancetype)init;

- (void)handleErrorWithNSException:(NSException *)e;

- (NSString *)handleOnNextValueRenderingWithId:(id)item;

#pragma mark Protected

- (NSString *)renderWithId:(id)item;

@end

J2OBJC_EMPTY_STATIC_INIT(RxPluginsRxJavaErrorHandler)

inline NSString *RxPluginsRxJavaErrorHandler_get_ERROR_IN_RENDERING_SUFFIX();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *RxPluginsRxJavaErrorHandler_ERROR_IN_RENDERING_SUFFIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxPluginsRxJavaErrorHandler, ERROR_IN_RENDERING_SUFFIX, NSString *)

FOUNDATION_EXPORT void RxPluginsRxJavaErrorHandler_init(RxPluginsRxJavaErrorHandler *self);

J2OBJC_TYPE_LITERAL_HEADER(RxPluginsRxJavaErrorHandler)

#endif

#pragma pop_macro("INCLUDE_ALL_RxPluginsRxJavaErrorHandler")
