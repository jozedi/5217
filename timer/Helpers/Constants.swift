//
//  Constants.swift
//  timer
//
//  Created by Jose Diaz on 4/02/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct Preferences {
        static let PREF_KEY_UID = "uid"
        
        static let PREF_KEY_VOICE_SIRI = "voice_siri"
        
        static let PREF_KEY_VIEWED_INTRO = "viewed_intro"
    }
    
    struct Config {
        struct Timer {
            static let MINUTE_52 = 53 * 60 //53 minutes(53 * 60)
            static let MINUTE_17 = 18 * 60 //18 minutes(18 * 60)
        }
    }
    
    struct Security {
        static let ACCESS_TOKEN = ""
    }
    
    struct Color {
        struct Palette {
            static let colorAccent = UIColor(named: "ColorAccent")
            static let colorAccentDark = UIColor(named: "ColorAccentDark")
            static let colorBackground = UIColor(named: "ColorBackground")
            static let colorError = UIColor(named: "ColorError")
            static let colorForeground = UIColor(named: "ColorForeground")
            static let colorPrimary = UIColor(named: "ColorPrimary")
            static let textColorPrimary = UIColor(named: "TextColorPrimary")
            static let textColorSecondary = UIColor(named: "TextColorSecondary")
            static let textColorTertiary = UIColor(named: "TextColorTertiary")
        }
        struct Others {
            static let cellLight = UIColor(hexString: "#FFEDB4")
            static let cellDark = UIColor(hexString: "#F2B236")
            static let imageBorder = UIColor(hexString: "#FDFCFA")
        }
    }
    
    struct Firebase {
        struct References {
            static let REF_STORAGE_PROFILE_PHOTOS = "profile_photos"
            static let REF_USERS = "users"
            static let REF_WORK_CYCLES = "work-cycles"
        }
        struct Fields {
            struct User {
                static let FULL_NAME = "fullName"
                static let SEX = "sex"
                static let BIRTH_DATE = "birthDate"
                static let EMAIL = "email"
                static let PHOTO = "photo"
            }
            struct WorkCycle {
                static let ID = "id"
                static let TIME = "time"
                static let TIMESTAMP = "timestamp"
            }
        }
    }
    
    struct Notification {
        static let NOTIFY_ID = "notificationId"
    }
    
    struct Observer {
        static let KEY_OBSERVER_AUTH = NSNotification.Name(rawValue: "KEY_OBSERVER_AUTH")
    }
    
    struct Storyboard {
        static let LAUNCH = "LaunchScreen"
        static let INTRO = "Intro"
        static let MAIN = "Main"
    }
    
    struct Segue {
        static let SHOW_LOGIN_TO_REGISTER = "ShowloginToRegister"
        static let SHOW_LOGIN_TO_PASSWORD_RESET = "ShowloginToPasswordReset"
        static let SHOW_SETTING_TO_ABOUT = "ShowSettingToAbout"
        static let SHOW_SETTING_TO_PROFILE = "ShowSettingToProfile"
        static let MODALLY_SETTING_TO_AUTH = "ModallySettingToAuth"
        static let UNWIND_REGISTER_TO_LOGIN = "UnwindRegisterToLogin"
        static let UNWIND_PASSWORD_RESET_TO_LOGIN = "UnwindPasswordResetToLogin"
    }
    
    struct ViewControllers {
        static let MAIN_TABBAR_VIEW_CONTROLLER = "MainTabBarController"
        static let INTRO_ROOT_VIEW_CONTROLLER = "IntroRootViewController"
        static let INTRO_DATA_VIEW_CONTROLLER = "IntroDataViewController"
    }
    
    struct Cells {
        static let SETTING_ACCOUNT_CELL = "SettingAccountCell"
        static let SETTING_SWITCH_CELL = "SettingSwitchCell"
        static let SETTING_DEFAULT_CELL = "SettingDefaultCell"
    }
}
