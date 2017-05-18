//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PPAppModule")
#ifdef RESTRICT_PPAppModule
#define INCLUDE_ALL_PPAppModule 0
#else
#define INCLUDE_ALL_PPAppModule 1
#endif
#undef RESTRICT_PPAppModule

#if !defined (PPAppModule_) && (INCLUDE_ALL_PPAppModule || defined(INCLUDE_PPAppModule))
#define PPAppModule_

@class AndroidAppApplication;
@class PDPartyDatabase;
@protocol PDDataProvider;
@protocol PPCrashReporter;
@protocol RxObservable_Transformer;

@interface PPAppModule : NSObject

#pragma mark Public

- (instancetype)initWithAndroidAppApplication:(AndroidAppApplication *)application
                          withPPCrashReporter:(id<PPCrashReporter>)crashReporter;

#pragma mark Package-Private

- (AndroidAppApplication *)providesApplication;

- (id<PPCrashReporter>)providesCrashReporter;

- (id<PDDataProvider>)providesDataProviderWithPDPartyDatabase:(PDPartyDatabase *)partyDatabase;

- (PDPartyDatabase *)providesPartyDatabaseWithAndroidAppApplication:(AndroidAppApplication *)application;

- (id<RxObservable_Transformer>)providesSchedulerTransformer;

@end

J2OBJC_EMPTY_STATIC_INIT(PPAppModule)

FOUNDATION_EXPORT void PPAppModule_initWithAndroidAppApplication_withPPCrashReporter_(PPAppModule *self, AndroidAppApplication *application, id<PPCrashReporter> crashReporter);

FOUNDATION_EXPORT PPAppModule *new_PPAppModule_initWithAndroidAppApplication_withPPCrashReporter_(AndroidAppApplication *application, id<PPCrashReporter> crashReporter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT PPAppModule *create_PPAppModule_initWithAndroidAppApplication_withPPCrashReporter_(AndroidAppApplication *application, id<PPCrashReporter> crashReporter);

J2OBJC_TYPE_LITERAL_HEADER(PPAppModule)

@compatibility_alias ComKgalliganPartyclickerPresenterAppModule PPAppModule;

#endif

#pragma pop_macro("INCLUDE_ALL_PPAppModule")
