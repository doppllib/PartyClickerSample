//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxSchedulersImmediateScheduler")
#ifdef RESTRICT_RxSchedulersImmediateScheduler
#define INCLUDE_ALL_RxSchedulersImmediateScheduler 0
#else
#define INCLUDE_ALL_RxSchedulersImmediateScheduler 1
#endif
#undef RESTRICT_RxSchedulersImmediateScheduler

#if !defined (RxSchedulersImmediateScheduler_) && (INCLUDE_ALL_RxSchedulersImmediateScheduler || defined(INCLUDE_RxSchedulersImmediateScheduler))
#define RxSchedulersImmediateScheduler_

#define RESTRICT_RxScheduler 1
#define INCLUDE_RxScheduler 1
#include "RxScheduler.h"

@class RxScheduler_Worker;

@interface RxSchedulersImmediateScheduler : RxScheduler

#pragma mark Public

- (RxScheduler_Worker *)createWorker;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSchedulersImmediateScheduler)

J2OBJC_TYPE_LITERAL_HEADER(RxSchedulersImmediateScheduler)

#endif

#pragma pop_macro("INCLUDE_ALL_RxSchedulersImmediateScheduler")
