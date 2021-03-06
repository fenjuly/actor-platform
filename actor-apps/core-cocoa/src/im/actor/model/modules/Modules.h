//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/Modules.java
//

#ifndef _ImActorModelModulesModules_H_
#define _ImActorModelModulesModules_H_

#include "J2ObjC_header.h"

@class AMActorApi;
@class AMConfiguration;
@class AMI18nEngine;
@class AMMessenger;
@class ImActorModelModulesAnalytics;
@class ImActorModelModulesAppStateModule;
@class ImActorModelModulesAuth;
@class ImActorModelModulesContacts;
@class ImActorModelModulesExternal;
@class ImActorModelModulesFiles;
@class ImActorModelModulesGroups;
@class ImActorModelModulesMessages;
@class ImActorModelModulesNotifications;
@class ImActorModelModulesPresence;
@class ImActorModelModulesProfile;
@class ImActorModelModulesPushes;
@class ImActorModelModulesSearchModule;
@class ImActorModelModulesSecurity;
@class ImActorModelModulesSettings;
@class ImActorModelModulesTyping;
@class ImActorModelModulesUpdates;
@class ImActorModelModulesUsers;
@protocol DKPreferencesStorage;

@interface ImActorModelModulesModules : NSObject

#pragma mark Public

- (instancetype)initWithAMMessenger:(AMMessenger *)messenger
                withAMConfiguration:(AMConfiguration *)configuration;

- (AMActorApi *)getActorApi;

- (ImActorModelModulesAnalytics *)getAnalytics;

- (ImActorModelModulesAppStateModule *)getAppStateModule;

- (ImActorModelModulesAuth *)getAuthModule;

- (AMConfiguration *)getConfiguration;

- (ImActorModelModulesContacts *)getContactsModule;

- (ImActorModelModulesExternal *)getExternal;

- (ImActorModelModulesFiles *)getFilesModule;

- (ImActorModelModulesGroups *)getGroupsModule;

- (AMI18nEngine *)getI18nEngine;

- (ImActorModelModulesMessages *)getMessagesModule;

- (AMMessenger *)getMessenger;

- (ImActorModelModulesNotifications *)getNotifications;

- (id<DKPreferencesStorage>)getPreferences;

- (ImActorModelModulesPresence *)getPresenceModule;

- (ImActorModelModulesProfile *)getProfile;

- (ImActorModelModulesPushes *)getPushes;

- (ImActorModelModulesSearchModule *)getSearch;

- (ImActorModelModulesSecurity *)getSecurity;

- (ImActorModelModulesSettings *)getSettings;

- (ImActorModelModulesTyping *)getTypingModule;

- (ImActorModelModulesUpdates *)getUpdatesModule;

- (ImActorModelModulesUsers *)getUsersModule;

- (void)onAppHidden;

- (void)onAppVisible;

- (void)onLoggedIn;

- (void)onLoggedOut;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesModules)

FOUNDATION_EXPORT void ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(ImActorModelModulesModules *self, AMMessenger *messenger, AMConfiguration *configuration);

FOUNDATION_EXPORT ImActorModelModulesModules *new_ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(AMMessenger *messenger, AMConfiguration *configuration) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesModules)

#endif // _ImActorModelModulesModules_H_
