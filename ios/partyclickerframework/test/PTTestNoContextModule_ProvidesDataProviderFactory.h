//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PTTestNoContextModule_ProvidesDataProviderFactory")
#ifdef RESTRICT_PTTestNoContextModule_ProvidesDataProviderFactory
#define INCLUDE_ALL_PTTestNoContextModule_ProvidesDataProviderFactory 0
#else
#define INCLUDE_ALL_PTTestNoContextModule_ProvidesDataProviderFactory 1
#endif
#undef RESTRICT_PTTestNoContextModule_ProvidesDataProviderFactory

#if !defined (PTTestNoContextModule_ProvidesDataProviderFactory_) && (INCLUDE_ALL_PTTestNoContextModule_ProvidesDataProviderFactory || defined(INCLUDE_PTTestNoContextModule_ProvidesDataProviderFactory))
#define PTTestNoContextModule_ProvidesDataProviderFactory_

#define RESTRICT_DaggerInternalFactory 1
#define INCLUDE_DaggerInternalFactory 1
#include "DaggerInternalFactory.h"

@class PTTestNoContextModule;
@protocol PDDataProvider;

@interface PTTestNoContextModule_ProvidesDataProviderFactory : NSObject < DaggerInternalFactory >

#pragma mark Public

- (instancetype)initWithPTTestNoContextModule:(PTTestNoContextModule *)module;

+ (id<DaggerInternalFactory>)createWithPTTestNoContextModule:(PTTestNoContextModule *)module;

- (id<PDDataProvider>)get;

@end

J2OBJC_EMPTY_STATIC_INIT(PTTestNoContextModule_ProvidesDataProviderFactory)

FOUNDATION_EXPORT void PTTestNoContextModule_ProvidesDataProviderFactory_initWithPTTestNoContextModule_(PTTestNoContextModule_ProvidesDataProviderFactory *self, PTTestNoContextModule *module);

FOUNDATION_EXPORT PTTestNoContextModule_ProvidesDataProviderFactory *new_PTTestNoContextModule_ProvidesDataProviderFactory_initWithPTTestNoContextModule_(PTTestNoContextModule *module) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PTTestNoContextModule_ProvidesDataProviderFactory *create_PTTestNoContextModule_ProvidesDataProviderFactory_initWithPTTestNoContextModule_(PTTestNoContextModule *module);

FOUNDATION_EXPORT id<DaggerInternalFactory> PTTestNoContextModule_ProvidesDataProviderFactory_createWithPTTestNoContextModule_(PTTestNoContextModule *module);

J2OBJC_TYPE_LITERAL_HEADER(PTTestNoContextModule_ProvidesDataProviderFactory)

@compatibility_alias ComKgalliganPartyclickerTestTestNoContextModule_ProvidesDataProviderFactory PTTestNoContextModule_ProvidesDataProviderFactory;

#endif

#pragma pop_macro("INCLUDE_ALL_PTTestNoContextModule_ProvidesDataProviderFactory")