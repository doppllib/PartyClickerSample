//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PTDaggerTestComponent")
#ifdef RESTRICT_PTDaggerTestComponent
#define INCLUDE_ALL_PTDaggerTestComponent 0
#else
#define INCLUDE_ALL_PTDaggerTestComponent 1
#endif
#undef RESTRICT_PTDaggerTestComponent

#if !defined (PTDaggerTestComponent_) && (INCLUDE_ALL_PTDaggerTestComponent || defined(INCLUDE_PTDaggerTestComponent))
#define PTDaggerTestComponent_

#define RESTRICT_PTTestComponent 1
#define INCLUDE_PTTestComponent 1
#include "PTTestComponent.h"

@class PDDatabaseHelperTest;
@class PTDaggerTestComponent_Builder;

@interface PTDaggerTestComponent : NSObject < PTTestComponent >

#pragma mark Public

+ (PTDaggerTestComponent_Builder *)builder;

+ (id<PTTestComponent>)create;

- (void)injectWithPDDatabaseHelperTest:(PDDatabaseHelperTest *)helperTest;

@end

J2OBJC_EMPTY_STATIC_INIT(PTDaggerTestComponent)

FOUNDATION_EXPORT PTDaggerTestComponent_Builder *PTDaggerTestComponent_builder();

FOUNDATION_EXPORT id<PTTestComponent> PTDaggerTestComponent_create();

J2OBJC_TYPE_LITERAL_HEADER(PTDaggerTestComponent)

@compatibility_alias ComKgalliganPartyclickerTestDaggerTestComponent PTDaggerTestComponent;

#endif

#if !defined (PTDaggerTestComponent_Builder_) && (INCLUDE_ALL_PTDaggerTestComponent || defined(INCLUDE_PTDaggerTestComponent_Builder))
#define PTDaggerTestComponent_Builder_

@class PTTestAppModule;
@protocol PTTestComponent;

@interface PTDaggerTestComponent_Builder : NSObject

#pragma mark Public

- (id<PTTestComponent>)build;

- (PTDaggerTestComponent_Builder *)testAppModuleWithPTTestAppModule:(PTTestAppModule *)testAppModule;

@end

J2OBJC_EMPTY_STATIC_INIT(PTDaggerTestComponent_Builder)

J2OBJC_TYPE_LITERAL_HEADER(PTDaggerTestComponent_Builder)

#endif

#pragma pop_macro("INCLUDE_ALL_PTDaggerTestComponent")
