//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PTTestAppModule_ProvidesDataProviderFactory")
#ifdef RESTRICT_PTTestAppModule_ProvidesDataProviderFactory
#define INCLUDE_ALL_PTTestAppModule_ProvidesDataProviderFactory 0
#else
#define INCLUDE_ALL_PTTestAppModule_ProvidesDataProviderFactory 1
#endif
#undef RESTRICT_PTTestAppModule_ProvidesDataProviderFactory

#if !defined (PTTestAppModule_ProvidesDataProviderFactory_) && (INCLUDE_ALL_PTTestAppModule_ProvidesDataProviderFactory || defined(INCLUDE_PTTestAppModule_ProvidesDataProviderFactory))
#define PTTestAppModule_ProvidesDataProviderFactory_

#define RESTRICT_DaggerInternalFactory 1
#define INCLUDE_DaggerInternalFactory 1
#include "DaggerInternalFactory.h"

@class PTTestAppModule;
@protocol JavaxInjectProvider;
@protocol PDDataProvider;

@interface PTTestAppModule_ProvidesDataProviderFactory : NSObject < DaggerInternalFactory >

#pragma mark Public

- (instancetype)initWithPTTestAppModule:(PTTestAppModule *)module
                withJavaxInjectProvider:(id<JavaxInjectProvider>)partyDatabaseProvider;

+ (id<DaggerInternalFactory>)createWithPTTestAppModule:(PTTestAppModule *)module
                               withJavaxInjectProvider:(id<JavaxInjectProvider>)partyDatabaseProvider;

- (id<PDDataProvider>)get;

@end

J2OBJC_EMPTY_STATIC_INIT(PTTestAppModule_ProvidesDataProviderFactory)

FOUNDATION_EXPORT void PTTestAppModule_ProvidesDataProviderFactory_initWithPTTestAppModule_withJavaxInjectProvider_(PTTestAppModule_ProvidesDataProviderFactory *self, PTTestAppModule *module, id<JavaxInjectProvider> partyDatabaseProvider);

FOUNDATION_EXPORT PTTestAppModule_ProvidesDataProviderFactory *new_PTTestAppModule_ProvidesDataProviderFactory_initWithPTTestAppModule_withJavaxInjectProvider_(PTTestAppModule *module, id<JavaxInjectProvider> partyDatabaseProvider) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PTTestAppModule_ProvidesDataProviderFactory *create_PTTestAppModule_ProvidesDataProviderFactory_initWithPTTestAppModule_withJavaxInjectProvider_(PTTestAppModule *module, id<JavaxInjectProvider> partyDatabaseProvider);

FOUNDATION_EXPORT id<DaggerInternalFactory> PTTestAppModule_ProvidesDataProviderFactory_createWithPTTestAppModule_withJavaxInjectProvider_(PTTestAppModule *module, id<JavaxInjectProvider> partyDatabaseProvider);

J2OBJC_TYPE_LITERAL_HEADER(PTTestAppModule_ProvidesDataProviderFactory)

@compatibility_alias ComKgalliganPartyclickerTestTestAppModule_ProvidesDataProviderFactory PTTestAppModule_ProvidesDataProviderFactory;

#endif

#pragma pop_macro("INCLUDE_ALL_PTTestAppModule_ProvidesDataProviderFactory")
