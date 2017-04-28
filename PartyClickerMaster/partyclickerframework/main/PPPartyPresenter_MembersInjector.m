//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DaggerMembersInjector.h"
#include "J2ObjC_source.h"
#include "PDDataProvider.h"
#include "PPPartyPresenter.h"
#include "PPPartyPresenter_MembersInjector.h"
#include "java/lang/NullPointerException.h"
#include "javax/inject/Provider.h"

@interface PPPartyPresenter_MembersInjector () {
 @public
  id<JavaxInjectProvider> databaseHelperProvider_;
}

@end

J2OBJC_FIELD_SETTER(PPPartyPresenter_MembersInjector, databaseHelperProvider_, id<JavaxInjectProvider>)

@implementation PPPartyPresenter_MembersInjector

- (instancetype)initWithJavaxInjectProvider:(id<JavaxInjectProvider>)databaseHelperProvider {
  PPPartyPresenter_MembersInjector_initWithJavaxInjectProvider_(self, databaseHelperProvider);
  return self;
}

+ (id<DaggerMembersInjector>)createWithJavaxInjectProvider:(id<JavaxInjectProvider>)databaseHelperProvider {
  return PPPartyPresenter_MembersInjector_createWithJavaxInjectProvider_(databaseHelperProvider);
}

- (void)injectMembersWithId:(PPPartyPresenter *)instance {
  if (instance == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"Cannot inject members into a null reference");
  }
  JreStrongAssign(&instance->databaseHelper_, [((id<JavaxInjectProvider>) nil_chk(databaseHelperProvider_)) get]);
}

+ (void)injectDatabaseHelperWithPPPartyPresenter:(PPPartyPresenter *)instance
                         withJavaxInjectProvider:(id<JavaxInjectProvider>)databaseHelperProvider {
  PPPartyPresenter_MembersInjector_injectDatabaseHelperWithPPPartyPresenter_withJavaxInjectProvider_(instance, databaseHelperProvider);
}

- (void)dealloc {
  RELEASE_(databaseHelperProvider_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LDaggerMembersInjector;", 0x9, 2, 0, -1, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaxInjectProvider:);
  methods[1].selector = @selector(createWithJavaxInjectProvider:);
  methods[2].selector = @selector(injectMembersWithId:);
  methods[3].selector = @selector(injectDatabaseHelperWithPPPartyPresenter:withJavaxInjectProvider:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "databaseHelperProvider_", "LJavaxInjectProvider;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LJavaxInjectProvider;", "(Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/DataProvider;>;)V", "create", "(Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/DataProvider;>;)Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyPresenter;>;", "injectMembers", "LPPPartyPresenter;", "injectDatabaseHelper", "LPPPartyPresenter;LJavaxInjectProvider;", "(Lcom/kgalligan/partyclicker/presenter/PartyPresenter;Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/DataProvider;>;)V", "Ljavax/inject/Provider<Lcom/kgalligan/partyclicker/data/DataProvider;>;", "Ljava/lang/Object;Ldagger/MembersInjector<Lcom/kgalligan/partyclicker/presenter/PartyPresenter;>;" };
  static const J2ObjcClassInfo _PPPartyPresenter_MembersInjector = { "PartyPresenter_MembersInjector", "com.kgalligan.partyclicker.presenter", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, 10, -1 };
  return &_PPPartyPresenter_MembersInjector;
}

@end

void PPPartyPresenter_MembersInjector_initWithJavaxInjectProvider_(PPPartyPresenter_MembersInjector *self, id<JavaxInjectProvider> databaseHelperProvider) {
  NSObject_init(self);
  JreAssert((databaseHelperProvider != nil), (@"com/kgalligan/partyclicker/presenter/PartyPresenter_MembersInjector.java:16 condition failed: assert databaseHelperProvider != null;"));
  JreStrongAssign(&self->databaseHelperProvider_, databaseHelperProvider);
}

PPPartyPresenter_MembersInjector *new_PPPartyPresenter_MembersInjector_initWithJavaxInjectProvider_(id<JavaxInjectProvider> databaseHelperProvider) {
  J2OBJC_NEW_IMPL(PPPartyPresenter_MembersInjector, initWithJavaxInjectProvider_, databaseHelperProvider)
}

PPPartyPresenter_MembersInjector *create_PPPartyPresenter_MembersInjector_initWithJavaxInjectProvider_(id<JavaxInjectProvider> databaseHelperProvider) {
  J2OBJC_CREATE_IMPL(PPPartyPresenter_MembersInjector, initWithJavaxInjectProvider_, databaseHelperProvider)
}

id<DaggerMembersInjector> PPPartyPresenter_MembersInjector_createWithJavaxInjectProvider_(id<JavaxInjectProvider> databaseHelperProvider) {
  PPPartyPresenter_MembersInjector_initialize();
  return create_PPPartyPresenter_MembersInjector_initWithJavaxInjectProvider_(databaseHelperProvider);
}

void PPPartyPresenter_MembersInjector_injectDatabaseHelperWithPPPartyPresenter_withJavaxInjectProvider_(PPPartyPresenter *instance, id<JavaxInjectProvider> databaseHelperProvider) {
  PPPartyPresenter_MembersInjector_initialize();
  JreStrongAssign(&((PPPartyPresenter *) nil_chk(instance))->databaseHelper_, [((id<JavaxInjectProvider>) nil_chk(databaseHelperProvider)) get]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PPPartyPresenter_MembersInjector)