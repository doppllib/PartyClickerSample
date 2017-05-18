//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DaggerInternalDoubleCheck.h"
#include "DaggerInternalFactory.h"
#include "DaggerInternalPreconditions.h"
#include "DaggerMembersInjector.h"
#include "J2ObjC_source.h"
#include "PDDatabaseHelperTest.h"
#include "PDDatabaseHelperTest_MembersInjector.h"
#include "PTDaggerTestComponent.h"
#include "PTTestAppModule.h"
#include "PTTestAppModule_ProvidesApplicationFactory.h"
#include "PTTestAppModule_ProvidesPartyDatabaseFactory.h"
#include "PTTestComponent.h"
#include "javax/inject/Provider.h"

@interface PTDaggerTestComponent () {
 @public
  id<JavaxInjectProvider> providesApplicationProvider_;
  id<JavaxInjectProvider> providesPartyDatabaseProvider_;
  id<DaggerMembersInjector> databaseHelperTestMembersInjector_;
}

- (instancetype)initWithPTDaggerTestComponent_Builder:(PTDaggerTestComponent_Builder *)builder;

- (void)initialize__WithPTDaggerTestComponent_Builder:(PTDaggerTestComponent_Builder *)builder OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(PTDaggerTestComponent, providesApplicationProvider_, id<JavaxInjectProvider>)
J2OBJC_FIELD_SETTER(PTDaggerTestComponent, providesPartyDatabaseProvider_, id<JavaxInjectProvider>)
J2OBJC_FIELD_SETTER(PTDaggerTestComponent, databaseHelperTestMembersInjector_, id<DaggerMembersInjector>)

__attribute__((unused)) static void PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent *self, PTDaggerTestComponent_Builder *builder);

__attribute__((unused)) static PTDaggerTestComponent *new_PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent_Builder *builder) NS_RETURNS_RETAINED;

__attribute__((unused)) static PTDaggerTestComponent *create_PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent_Builder *builder);

__attribute__((unused)) static void PTDaggerTestComponent_initialize__WithPTDaggerTestComponent_Builder_(PTDaggerTestComponent *self, PTDaggerTestComponent_Builder *builder);

@interface PTDaggerTestComponent_Builder () {
 @public
  PTTestAppModule *testAppModule_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(PTDaggerTestComponent_Builder, testAppModule_, PTTestAppModule *)

__attribute__((unused)) static void PTDaggerTestComponent_Builder_init(PTDaggerTestComponent_Builder *self);

__attribute__((unused)) static PTDaggerTestComponent_Builder *new_PTDaggerTestComponent_Builder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static PTDaggerTestComponent_Builder *create_PTDaggerTestComponent_Builder_init();

@implementation PTDaggerTestComponent

- (instancetype)initWithPTDaggerTestComponent_Builder:(PTDaggerTestComponent_Builder *)builder {
  PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(self, builder);
  return self;
}

+ (PTDaggerTestComponent_Builder *)builder {
  return PTDaggerTestComponent_builder();
}

+ (id<PTTestComponent>)create {
  return PTDaggerTestComponent_create();
}

- (void)initialize__WithPTDaggerTestComponent_Builder:(PTDaggerTestComponent_Builder *)builder {
  PTDaggerTestComponent_initialize__WithPTDaggerTestComponent_Builder_(self, builder);
}

- (void)injectWithPDDatabaseHelperTest:(PDDatabaseHelperTest *)helperTest {
  [((id<DaggerMembersInjector>) nil_chk(databaseHelperTestMembersInjector_)) injectMembersWithId:helperTest];
}

- (void)dealloc {
  RELEASE_(providesApplicationProvider_);
  RELEASE_(providesPartyDatabaseProvider_);
  RELEASE_(databaseHelperTestMembersInjector_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LPTDaggerTestComponent_Builder;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTTestComponent;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithPTDaggerTestComponent_Builder:);
  methods[1].selector = @selector(builder);
  methods[2].selector = @selector(create);
  methods[3].selector = @selector(initialize__WithPTDaggerTestComponent_Builder:);
  methods[4].selector = @selector(injectWithPDDatabaseHelperTest:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "providesApplicationProvider_", "LJavaxInjectProvider;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
    { "providesPartyDatabaseProvider_", "LJavaxInjectProvider;", .constantValue.asLong = 0, 0x2, -1, -1, 5, -1 },
    { "databaseHelperTestMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LPTDaggerTestComponent_Builder;", "initialize", "inject", "LPDDatabaseHelperTest;", "Ljavax/inject/Provider<Landroid/app/Application;>;", "Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/PartyDatabase;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/data/DatabaseHelperTest;>;" };
  static const J2ObjcClassInfo _PTDaggerTestComponent = { "DaggerTestComponent", "com.kgalligan.partyclicker.test", ptrTable, methods, fields, 7, 0x11, 5, 3, -1, 0, -1, -1, -1 };
  return &_PTDaggerTestComponent;
}

@end

void PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent *self, PTDaggerTestComponent_Builder *builder) {
  NSObject_init(self);
  JreAssert((builder != nil), (@"com/kgalligan/partyclicker/test/DaggerTestComponent.java:25 condition failed: assert builder != null;"));
  PTDaggerTestComponent_initialize__WithPTDaggerTestComponent_Builder_(self, builder);
}

PTDaggerTestComponent *new_PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent_Builder *builder) {
  J2OBJC_NEW_IMPL(PTDaggerTestComponent, initWithPTDaggerTestComponent_Builder_, builder)
}

PTDaggerTestComponent *create_PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(PTDaggerTestComponent_Builder *builder) {
  J2OBJC_CREATE_IMPL(PTDaggerTestComponent, initWithPTDaggerTestComponent_Builder_, builder)
}

PTDaggerTestComponent_Builder *PTDaggerTestComponent_builder() {
  PTDaggerTestComponent_initialize();
  return create_PTDaggerTestComponent_Builder_init();
}

id<PTTestComponent> PTDaggerTestComponent_create() {
  PTDaggerTestComponent_initialize();
  return [((PTDaggerTestComponent_Builder *) nil_chk(PTDaggerTestComponent_builder())) build];
}

void PTDaggerTestComponent_initialize__WithPTDaggerTestComponent_Builder_(PTDaggerTestComponent *self, PTDaggerTestComponent_Builder *builder) {
  JreStrongAssign(&self->providesApplicationProvider_, DaggerInternalDoubleCheck_providerWithJavaxInjectProvider_(PTTestAppModule_ProvidesApplicationFactory_createWithPTTestAppModule_(((PTDaggerTestComponent_Builder *) nil_chk(builder))->testAppModule_)));
  JreStrongAssign(&self->providesPartyDatabaseProvider_, DaggerInternalDoubleCheck_providerWithJavaxInjectProvider_(PTTestAppModule_ProvidesPartyDatabaseFactory_createWithPTTestAppModule_withJavaxInjectProvider_(builder->testAppModule_, self->providesApplicationProvider_)));
  JreStrongAssign(&self->databaseHelperTestMembersInjector_, PDDatabaseHelperTest_MembersInjector_createWithJavaxInjectProvider_(self->providesPartyDatabaseProvider_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PTDaggerTestComponent)

@implementation PTDaggerTestComponent_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PTDaggerTestComponent_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<PTTestComponent>)build {
  if (testAppModule_ == nil) {
    JreStrongAssignAndConsume(&self->testAppModule_, new_PTTestAppModule_init());
  }
  return create_PTDaggerTestComponent_initWithPTDaggerTestComponent_Builder_(self);
}

- (PTDaggerTestComponent_Builder *)testAppModuleWithPTTestAppModule:(PTTestAppModule *)testAppModule {
  JreStrongAssign(&self->testAppModule_, DaggerInternalPreconditions_checkNotNullWithId_(testAppModule));
  return self;
}

- (void)dealloc {
  RELEASE_(testAppModule_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTTestComponent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTDaggerTestComponent_Builder;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(build);
  methods[2].selector = @selector(testAppModuleWithPTTestAppModule:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "testAppModule_", "LPTTestAppModule;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "testAppModule", "LPTTestAppModule;", "LPTDaggerTestComponent;" };
  static const J2ObjcClassInfo _PTDaggerTestComponent_Builder = { "Builder", "com.kgalligan.partyclicker.test", ptrTable, methods, fields, 7, 0x19, 3, 1, 2, -1, -1, -1, -1 };
  return &_PTDaggerTestComponent_Builder;
}

@end

void PTDaggerTestComponent_Builder_init(PTDaggerTestComponent_Builder *self) {
  NSObject_init(self);
}

PTDaggerTestComponent_Builder *new_PTDaggerTestComponent_Builder_init() {
  J2OBJC_NEW_IMPL(PTDaggerTestComponent_Builder, init)
}

PTDaggerTestComponent_Builder *create_PTDaggerTestComponent_Builder_init() {
  J2OBJC_CREATE_IMPL(PTDaggerTestComponent_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PTDaggerTestComponent_Builder)
