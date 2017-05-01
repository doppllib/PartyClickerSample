//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DaggerInternalDoubleCheck.h"
#include "DaggerInternalFactory.h"
#include "DaggerInternalPreconditions.h"
#include "DaggerMembersInjector.h"
#include "J2ObjC_source.h"
#include "PDModPersonTaskTest.h"
#include "PDModPersonTaskTest_MembersInjector.h"
#include "PPPartyListPresenter.h"
#include "PPPartyListPresenterTest.h"
#include "PPPartyListPresenterTest_MembersInjector.h"
#include "PPPartyListPresenter_MembersInjector.h"
#include "PPPartyPresenter.h"
#include "PPPartyPresenterTest.h"
#include "PPPartyPresenterTest_MembersInjector.h"
#include "PPPartyPresenter_MembersInjector.h"
#include "PTDaggerTestNoContextComponent.h"
#include "PTTestNoContextComponent.h"
#include "PTTestNoContextModule.h"
#include "PTTestNoContextModule_ProvidesDataProviderFactory.h"
#include "PTTestNoContextModule_ProvidesSchedulerTransformerFactory.h"
#include "javax/inject/Provider.h"

@interface PTDaggerTestNoContextComponent () {
 @public
  id<JavaxInjectProvider> providesDataProvider_;
  id<DaggerMembersInjector> modPersonTaskTestMembersInjector_;
  id<DaggerMembersInjector> partyListPresenterTestMembersInjector_;
  id<JavaxInjectProvider> providesSchedulerTransformerProvider_;
  id<DaggerMembersInjector> partyListPresenterMembersInjector_;
  id<DaggerMembersInjector> partyPresenterTestMembersInjector_;
  id<DaggerMembersInjector> partyPresenterMembersInjector_;
}

- (instancetype)initWithPTDaggerTestNoContextComponent_Builder:(PTDaggerTestNoContextComponent_Builder *)builder;

- (void)initialize__WithPTDaggerTestNoContextComponent_Builder:(PTDaggerTestNoContextComponent_Builder *)builder OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, providesDataProvider_, id<JavaxInjectProvider>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, modPersonTaskTestMembersInjector_, id<DaggerMembersInjector>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, partyListPresenterTestMembersInjector_, id<DaggerMembersInjector>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, providesSchedulerTransformerProvider_, id<JavaxInjectProvider>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, partyListPresenterMembersInjector_, id<DaggerMembersInjector>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, partyPresenterTestMembersInjector_, id<DaggerMembersInjector>)
J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent, partyPresenterMembersInjector_, id<DaggerMembersInjector>)

__attribute__((unused)) static void PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent *self, PTDaggerTestNoContextComponent_Builder *builder);

__attribute__((unused)) static PTDaggerTestNoContextComponent *new_PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent_Builder *builder) NS_RETURNS_RETAINED;

__attribute__((unused)) static PTDaggerTestNoContextComponent *create_PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent_Builder *builder);

__attribute__((unused)) static void PTDaggerTestNoContextComponent_initialize__WithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent *self, PTDaggerTestNoContextComponent_Builder *builder);

@interface PTDaggerTestNoContextComponent_Builder () {
 @public
  PTTestNoContextModule *testNoContextModule_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(PTDaggerTestNoContextComponent_Builder, testNoContextModule_, PTTestNoContextModule *)

__attribute__((unused)) static void PTDaggerTestNoContextComponent_Builder_init(PTDaggerTestNoContextComponent_Builder *self);

__attribute__((unused)) static PTDaggerTestNoContextComponent_Builder *new_PTDaggerTestNoContextComponent_Builder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static PTDaggerTestNoContextComponent_Builder *create_PTDaggerTestNoContextComponent_Builder_init();

@implementation PTDaggerTestNoContextComponent

- (instancetype)initWithPTDaggerTestNoContextComponent_Builder:(PTDaggerTestNoContextComponent_Builder *)builder {
  PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(self, builder);
  return self;
}

+ (PTDaggerTestNoContextComponent_Builder *)builder {
  return PTDaggerTestNoContextComponent_builder();
}

+ (id<PTTestNoContextComponent>)create {
  return PTDaggerTestNoContextComponent_create();
}

- (void)initialize__WithPTDaggerTestNoContextComponent_Builder:(PTDaggerTestNoContextComponent_Builder *)builder {
  PTDaggerTestNoContextComponent_initialize__WithPTDaggerTestNoContextComponent_Builder_(self, builder);
}

- (void)injectWithPDModPersonTaskTest:(PDModPersonTaskTest *)taskTest {
  [((id<DaggerMembersInjector>) nil_chk(modPersonTaskTestMembersInjector_)) injectMembersWithId:taskTest];
}

- (void)injectWithPPPartyListPresenterTest:(PPPartyListPresenterTest *)test {
  [((id<DaggerMembersInjector>) nil_chk(partyListPresenterTestMembersInjector_)) injectMembersWithId:test];
}

- (void)injectWithPPPartyListPresenter:(PPPartyListPresenter *)partyListPresenter {
  [((id<DaggerMembersInjector>) nil_chk(partyListPresenterMembersInjector_)) injectMembersWithId:partyListPresenter];
}

- (void)injectWithPPPartyPresenterTest:(PPPartyPresenterTest *)presenter {
  [((id<DaggerMembersInjector>) nil_chk(partyPresenterTestMembersInjector_)) injectMembersWithId:presenter];
}

- (void)injectWithPPPartyPresenter:(PPPartyPresenter *)presenter {
  [((id<DaggerMembersInjector>) nil_chk(partyPresenterMembersInjector_)) injectMembersWithId:presenter];
}

- (void)dealloc {
  RELEASE_(providesDataProvider_);
  RELEASE_(modPersonTaskTestMembersInjector_);
  RELEASE_(partyListPresenterTestMembersInjector_);
  RELEASE_(providesSchedulerTransformerProvider_);
  RELEASE_(partyListPresenterMembersInjector_);
  RELEASE_(partyPresenterTestMembersInjector_);
  RELEASE_(partyPresenterMembersInjector_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LPTDaggerTestNoContextComponent_Builder;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTTestNoContextComponent;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithPTDaggerTestNoContextComponent_Builder:);
  methods[1].selector = @selector(builder);
  methods[2].selector = @selector(create);
  methods[3].selector = @selector(initialize__WithPTDaggerTestNoContextComponent_Builder:);
  methods[4].selector = @selector(injectWithPDModPersonTaskTest:);
  methods[5].selector = @selector(injectWithPPPartyListPresenterTest:);
  methods[6].selector = @selector(injectWithPPPartyListPresenter:);
  methods[7].selector = @selector(injectWithPPPartyPresenterTest:);
  methods[8].selector = @selector(injectWithPPPartyPresenter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "providesDataProvider_", "LJavaxInjectProvider;", .constantValue.asLong = 0, 0x2, -1, -1, 8, -1 },
    { "modPersonTaskTestMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
    { "partyListPresenterTestMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "providesSchedulerTransformerProvider_", "LJavaxInjectProvider;", .constantValue.asLong = 0, 0x2, -1, -1, 11, -1 },
    { "partyListPresenterMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 12, -1 },
    { "partyPresenterTestMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 13, -1 },
    { "partyPresenterMembersInjector_", "LDaggerMembersInjector;", .constantValue.asLong = 0, 0x2, -1, -1, 14, -1 },
  };
  static const void *ptrTable[] = { "LPTDaggerTestNoContextComponent_Builder;", "initialize", "inject", "LPDModPersonTaskTest;", "LPPPartyListPresenterTest;", "LPPPartyListPresenter;", "LPPPartyPresenterTest;", "LPPPartyPresenter;", "Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/DataProvider;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/data/ModPersonTaskTest;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyListPresenterTest;>;", "Ljavax/inject/Provider<Lrx/Observable$Transformer;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyListPresenter;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyPresenterTest;>;", "Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyPresenter;>;" };
  static const J2ObjcClassInfo _PTDaggerTestNoContextComponent = { "DaggerTestNoContextComponent", "com.kgalligan.partyclicker.test", ptrTable, methods, fields, 7, 0x11, 9, 7, -1, 0, -1, -1, -1 };
  return &_PTDaggerTestNoContextComponent;
}

@end

void PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent *self, PTDaggerTestNoContextComponent_Builder *builder) {
  NSObject_init(self);
  JreAssert((builder != nil), (@"com/kgalligan/partyclicker/test/DaggerTestNoContextComponent.java:41 condition failed: assert builder != null;"));
  PTDaggerTestNoContextComponent_initialize__WithPTDaggerTestNoContextComponent_Builder_(self, builder);
}

PTDaggerTestNoContextComponent *new_PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent_Builder *builder) {
  J2OBJC_NEW_IMPL(PTDaggerTestNoContextComponent, initWithPTDaggerTestNoContextComponent_Builder_, builder)
}

PTDaggerTestNoContextComponent *create_PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent_Builder *builder) {
  J2OBJC_CREATE_IMPL(PTDaggerTestNoContextComponent, initWithPTDaggerTestNoContextComponent_Builder_, builder)
}

PTDaggerTestNoContextComponent_Builder *PTDaggerTestNoContextComponent_builder() {
  PTDaggerTestNoContextComponent_initialize();
  return create_PTDaggerTestNoContextComponent_Builder_init();
}

id<PTTestNoContextComponent> PTDaggerTestNoContextComponent_create() {
  PTDaggerTestNoContextComponent_initialize();
  return [((PTDaggerTestNoContextComponent_Builder *) nil_chk(PTDaggerTestNoContextComponent_builder())) build];
}

void PTDaggerTestNoContextComponent_initialize__WithPTDaggerTestNoContextComponent_Builder_(PTDaggerTestNoContextComponent *self, PTDaggerTestNoContextComponent_Builder *builder) {
  JreStrongAssign(&self->providesDataProvider_, DaggerInternalDoubleCheck_providerWithJavaxInjectProvider_(PTTestNoContextModule_ProvidesDataProviderFactory_createWithPTTestNoContextModule_(((PTDaggerTestNoContextComponent_Builder *) nil_chk(builder))->testNoContextModule_)));
  JreStrongAssign(&self->modPersonTaskTestMembersInjector_, PDModPersonTaskTest_MembersInjector_createWithJavaxInjectProvider_(self->providesDataProvider_));
  JreStrongAssign(&self->partyListPresenterTestMembersInjector_, PPPartyListPresenterTest_MembersInjector_createWithJavaxInjectProvider_(self->providesDataProvider_));
  JreStrongAssign(&self->providesSchedulerTransformerProvider_, DaggerInternalDoubleCheck_providerWithJavaxInjectProvider_(PTTestNoContextModule_ProvidesSchedulerTransformerFactory_createWithPTTestNoContextModule_(builder->testNoContextModule_)));
  JreStrongAssign(&self->partyListPresenterMembersInjector_, PPPartyListPresenter_MembersInjector_createWithJavaxInjectProvider_withJavaxInjectProvider_(self->providesDataProvider_, self->providesSchedulerTransformerProvider_));
  JreStrongAssign(&self->partyPresenterTestMembersInjector_, PPPartyPresenterTest_MembersInjector_createWithJavaxInjectProvider_(self->providesDataProvider_));
  JreStrongAssign(&self->partyPresenterMembersInjector_, PPPartyPresenter_MembersInjector_createWithJavaxInjectProvider_withJavaxInjectProvider_(self->providesDataProvider_, self->providesSchedulerTransformerProvider_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PTDaggerTestNoContextComponent)

@implementation PTDaggerTestNoContextComponent_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PTDaggerTestNoContextComponent_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<PTTestNoContextComponent>)build {
  if (testNoContextModule_ == nil) {
    JreStrongAssignAndConsume(&self->testNoContextModule_, new_PTTestNoContextModule_init());
  }
  return create_PTDaggerTestNoContextComponent_initWithPTDaggerTestNoContextComponent_Builder_(self);
}

- (PTDaggerTestNoContextComponent_Builder *)testNoContextModuleWithPTTestNoContextModule:(PTTestNoContextModule *)testNoContextModule {
  JreStrongAssign(&self->testNoContextModule_, DaggerInternalPreconditions_checkNotNullWithId_(testNoContextModule));
  return self;
}

- (void)dealloc {
  RELEASE_(testNoContextModule_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTTestNoContextComponent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LPTDaggerTestNoContextComponent_Builder;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(build);
  methods[2].selector = @selector(testNoContextModuleWithPTTestNoContextModule:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "testNoContextModule_", "LPTTestNoContextModule;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "testNoContextModule", "LPTTestNoContextModule;", "LPTDaggerTestNoContextComponent;" };
  static const J2ObjcClassInfo _PTDaggerTestNoContextComponent_Builder = { "Builder", "com.kgalligan.partyclicker.test", ptrTable, methods, fields, 7, 0x19, 3, 1, 2, -1, -1, -1, -1 };
  return &_PTDaggerTestNoContextComponent_Builder;
}

@end

void PTDaggerTestNoContextComponent_Builder_init(PTDaggerTestNoContextComponent_Builder *self) {
  NSObject_init(self);
}

PTDaggerTestNoContextComponent_Builder *new_PTDaggerTestNoContextComponent_Builder_init() {
  J2OBJC_NEW_IMPL(PTDaggerTestNoContextComponent_Builder, init)
}

PTDaggerTestNoContextComponent_Builder *create_PTDaggerTestNoContextComponent_Builder_init() {
  J2OBJC_CREATE_IMPL(PTDaggerTestNoContextComponent_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PTDaggerTestNoContextComponent_Builder)
