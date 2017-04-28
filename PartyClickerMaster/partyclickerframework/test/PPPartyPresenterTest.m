//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "PDDataProvider.h"
#include "PDParty.h"
#include "PPPartyListPresenter.h"
#include "PPPartyPresenter.h"
#include "PPPartyPresenterTest.h"
#include "PTDaggerTestNoContextComponent.h"
#include "PTTestNoContextComponent.h"
#include "PTTestNoContextModule.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/inject/Inject.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface PPPartyPresenterTest () {
 @public
  PPPartyPresenter *partyPresenter_;
  id<PPPartyListPresenter_UiInterface> uiInterface_;
  PDParty *party_;
}

- (void)initMultiParty OBJC_METHOD_FAMILY_NONE;

- (void)initPartyPeople OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(PPPartyPresenterTest, partyPresenter_, PPPartyPresenter *)
J2OBJC_FIELD_SETTER(PPPartyPresenterTest, uiInterface_, id<PPPartyListPresenter_UiInterface>)
J2OBJC_FIELD_SETTER(PPPartyPresenterTest, party_, PDParty *)

__attribute__((unused)) static void PPPartyPresenterTest_initMultiParty(PPPartyPresenterTest *self);

__attribute__((unused)) static void PPPartyPresenterTest_initPartyPeople(PPPartyPresenterTest *self);

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$1();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$2();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$3();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$4();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$5();

__attribute__((unused)) static IOSObjectArray *PPPartyPresenterTest__Annotations$6();

@implementation PPPartyPresenterTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PPPartyPresenterTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  id<PTTestNoContextComponent> testComponent = [((PTDaggerTestNoContextComponent_Builder *) nil_chk([((PTDaggerTestNoContextComponent_Builder *) nil_chk(PTDaggerTestNoContextComponent_builder())) testNoContextModuleWithPTTestNoContextModule:create_PTTestNoContextModule_init()])) build];
  [((id<PTTestNoContextComponent>) nil_chk(testComponent)) injectWithPPPartyPresenterTest:self];
  JreStrongAssign(&party_, [((id<PDDataProvider>) nil_chk(dataProvider_)) createPartyWithNSString:@"marty"]);
  JreStrongAssignAndConsume(&partyPresenter_, new_PPPartyPresenter_initWithInt_(((PDParty *) nil_chk(party_))->id__));
  [testComponent injectWithPPPartyPresenter:partyPresenter_];
}

- (void)init__ {
  PPPartyPresenterTest_initMultiParty(self);
  OrgJunitAssert_assertEqualsWithLong_withLong_(((PDParty *) nil_chk(party_))->id__, ((PDParty *) nil_chk([((PPPartyPresenter *) nil_chk(partyPresenter_)) getParty]))->id__);
}

- (void)initMultiParty {
  PPPartyPresenterTest_initMultiParty(self);
}

- (void)addPerson {
  [((PPPartyPresenter *) nil_chk(partyPresenter_)) init__];
  [((PPPartyPresenter *) nil_chk(partyPresenter_)) addPerson];
  [((PPPartyPresenter *) nil_chk(partyPresenter_)) addPerson];
  [((PPPartyPresenter *) nil_chk(partyPresenter_)) addPerson];
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertEqualsWithLong_withLong_(3, [((PPPartyPresenter *) nil_chk(partyPresenter_)) getPartyCount]);
  OrgJunitAssert_assertEqualsWithLong_withLong_(3, [((id<PDDataProvider>) nil_chk(dataProvider_)) countCurrentPartyWithInt:((PDParty *) nil_chk(party_))->id__]);
}

- (void)removePerson {
  PPPartyPresenterTest_initPartyPeople(self);
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, [((PPPartyPresenter *) nil_chk(partyPresenter_)) getPartyCount]);
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, [((id<PDDataProvider>) nil_chk(dataProvider_)) countCurrentPartyWithInt:((PDParty *) nil_chk(party_))->id__]);
}

- (void)getPartyCount {
  PPPartyPresenterTest_initPartyPeople(self);
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, [((PPPartyPresenter *) nil_chk(partyPresenter_)) getPartyCount]);
}

- (void)initPartyPeople {
  PPPartyPresenterTest_initPartyPeople(self);
}

- (void)getParty {
  PPPartyPresenterTest_initMultiParty(self);
  OrgJunitAssert_assertEqualsWithLong_withLong_(((PDParty *) nil_chk(party_))->id__, ((PDParty *) nil_chk([((PPPartyPresenter *) nil_chk(partyPresenter_)) getParty]))->id__);
}

- (void)dealloc {
  RELEASE_(dataProvider_);
  RELEASE_(partyPresenter_);
  RELEASE_(uiInterface_);
  RELEASE_(party_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "V", 0x1, 2, -1, 0, -1, 3, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 4, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 5, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 6, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 7, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(init__);
  methods[3].selector = @selector(initMultiParty);
  methods[4].selector = @selector(addPerson);
  methods[5].selector = @selector(removePerson);
  methods[6].selector = @selector(getPartyCount);
  methods[7].selector = @selector(initPartyPeople);
  methods[8].selector = @selector(getParty);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dataProvider_", "LPDDataProvider;", .constantValue.asLong = 0, 0x0, -1, -1, -1, 8 },
    { "partyPresenter_", "LPPPartyPresenter;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "uiInterface_", "LPPPartyListPresenter_UiInterface;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "party_", "LPDParty;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&PPPartyPresenterTest__Annotations$0, "init", (void *)&PPPartyPresenterTest__Annotations$1, (void *)&PPPartyPresenterTest__Annotations$2, (void *)&PPPartyPresenterTest__Annotations$3, (void *)&PPPartyPresenterTest__Annotations$4, (void *)&PPPartyPresenterTest__Annotations$5, (void *)&PPPartyPresenterTest__Annotations$6 };
  static const J2ObjcClassInfo _PPPartyPresenterTest = { "PartyPresenterTest", "com.kgalligan.partyclicker.presenter", ptrTable, methods, fields, 7, 0x1, 9, 4, -1, -1, -1, -1, -1 };
  return &_PPPartyPresenterTest;
}

@end

void PPPartyPresenterTest_init(PPPartyPresenterTest *self) {
  NSObject_init(self);
}

PPPartyPresenterTest *new_PPPartyPresenterTest_init() {
  J2OBJC_NEW_IMPL(PPPartyPresenterTest, init)
}

PPPartyPresenterTest *create_PPPartyPresenterTest_init() {
  J2OBJC_CREATE_IMPL(PPPartyPresenterTest, init)
}

void PPPartyPresenterTest_initMultiParty(PPPartyPresenterTest *self) {
  [((id<PDDataProvider>) nil_chk(self->dataProvider_)) createPartyWithNSString:@"a"];
  [((id<PDDataProvider>) nil_chk(self->dataProvider_)) createPartyWithNSString:@"b"];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) init__];
}

void PPPartyPresenterTest_initPartyPeople(PPPartyPresenterTest *self) {
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) init__];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) addPerson];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) addPerson];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) addPerson];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) removePerson];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) removePerson];
  [((PPPartyPresenter *) nil_chk(self->partyPresenter_)) addPerson];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *PPPartyPresenterTest__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxInjectInject() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PPPartyPresenterTest)