//
//  AppDelegate.swift
//  MGSettingsKit
//
//  Created by AldoOS on 05/02/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGSettingsKit
import MGTemplateKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        MGTemplate.configure()
        
        var items = [MGSettingsItem]()

        let item = MGSettingsItem()
        item.section = MGSettingsSectionItem(identifier: "ACCOUNT")
        item.title = "MegaGeneral Team"
        item.subtitle = "Stay hungry, stay foolish"
        item.primaryImage = #imageLiteral(resourceName: "iconsmall")
        item.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(item)

        let pushNotificationItem = MGSettingsItem()
        pushNotificationItem.section = MGSettingsSectionItem(identifier: "NOTIFICATIONS")
        pushNotificationItem.title = "Push notifications"
        pushNotificationItem.primaryImage = #imageLiteral(resourceName: "iconsmall")
        pushNotificationItem.switch = MGSettingsSwitchItem(state: true)
        items.append(pushNotificationItem)
        
        let localNotificationItem = MGSettingsItem()
        localNotificationItem.section = MGSettingsSectionItem(identifier: "NOTIFICATIONS")
        localNotificationItem.title = "Local notifications"
        localNotificationItem.primaryImage = #imageLiteral(resourceName: "iconsmall")
        localNotificationItem.switch = MGSettingsSwitchItem(state: false)
        items.append(localNotificationItem)

        let debugModeDeveloper = MGSettingsItem()
        debugModeDeveloper.section = MGSettingsSectionItem(identifier: "APPLICATION")
        debugModeDeveloper.title = "Debug mode"
        debugModeDeveloper.primaryImage = #imageLiteral(resourceName: "iconsmall")
        debugModeDeveloper.switch = MGSettingsSwitchItem(state: true)
        items.append(debugModeDeveloper)

        let developerModeDeveloper = MGSettingsItem()
        developerModeDeveloper.section = MGSettingsSectionItem(identifier: "APPLICATION")
        developerModeDeveloper.title = "Developer"
        developerModeDeveloper.primaryImage = #imageLiteral(resourceName: "iconsmall")
        developerModeDeveloper.switch = MGSettingsSwitchItem(state: true)
        items.append(developerModeDeveloper)

        let backupDeveloperItem = MGSettingsItem()
        backupDeveloperItem.section = MGSettingsSectionItem(identifier: "APPLICATION")
        backupDeveloperItem.title = "Backup"
        backupDeveloperItem.primaryImage = #imageLiteral(resourceName: "iconsmall")
        backupDeveloperItem.switch = MGSettingsSwitchItem(state: false)
        items.append(backupDeveloperItem)

        let analytisItem = MGSettingsItem()
        analytisItem.section = MGSettingsSectionItem(identifier: "APPLICATION")
        analytisItem.title = "Analytics"
        analytisItem.primaryImage = #imageLiteral(resourceName: "iconsmall")
        analytisItem.switch = MGSettingsSwitchItem(state: true)
        items.append(analytisItem)

        let lightItem = MGSettingsItem()
        lightItem.section = MGSettingsSectionItem(identifier: "SETTINGS")
        lightItem.title = "Light"
        lightItem.slider = MGSettingsSliderItem(value: 0.3, minValue: 0.0, maxValue: 1.0)
        items.append(lightItem)

        let rateAppItem = MGSettingsItem()
        rateAppItem.section = MGSettingsSectionItem(identifier: "ACTIONS")
        rateAppItem.title = "Rate my app"
        rateAppItem.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(rateAppItem)
        
        let purchaseFeaturesItem = MGSettingsItem()
        purchaseFeaturesItem.section = MGSettingsSectionItem(identifier: "ACTIONS")
        purchaseFeaturesItem.title = "Purchase features"
        purchaseFeaturesItem.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(purchaseFeaturesItem)

        let privacyPolicyItem = MGSettingsItem()
        privacyPolicyItem.section = MGSettingsSectionItem(identifier: "INFORMATION")
        privacyPolicyItem.title = "Privacy policy"
        privacyPolicyItem.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(privacyPolicyItem)

        let termsAndConditionsItem = MGSettingsItem()
        termsAndConditionsItem.section = MGSettingsSectionItem(identifier: "INFORMATION")
        termsAndConditionsItem.title = "Terms and conditions"
        termsAndConditionsItem.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(termsAndConditionsItem)

        let helpItem = MGSettingsItem()
        helpItem.section = MGSettingsSectionItem(identifier: "INFORMATION")
        helpItem.title = "Help"
        helpItem.indicatorImage = UIImage(icon: .ionicons(.iosArrowRight), size: CGSize(width: 34, height: 34), textColor: .white)
        items.append(helpItem)

        window = UIWindow(frame: UIScreen.main.bounds)
        
        let controller = MGSettingsController.instance

        controller.assets = SettingsAsset(
            string: SettingsString(
                title: "Settings",
                navigationTitle: "Settings"),
            font: SettingsFont(
                tableViewCellTitle: UIFont.systemFont(ofSize: 17),
                tableViewCellSubtitle: UIFont.systemFont(ofSize: 15)),
            image: SettingsImage(
                lightMinimum: UIImage(icon: .ionicons(.androidSunny), size: CGSize(width: 16, height: 16), textColor: .white),
                lightMaximum: UIImage(icon: .ionicons(.androidSunny), size: CGSize(width: 24, height: 24), textColor: .white)),
            color: SettingsColor(
                navigationBar: #colorLiteral(red: 0.09019607843, green: 0.09019607843, blue: 0.09019607843, alpha: 1),
                navigationBarContent: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                viewPrimary: #colorLiteral(red: 0.09019607843, green: 0.09019607843, blue: 0.09019607843, alpha: 1),
                viewSecondary: #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1),
                viewTertiary: #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1),
                textPrimary: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                textSecondary: #colorLiteral(red: 0.5568627451, green: 0.5568627451, blue: 0.5764705882, alpha: 1),
                controlPrimary: #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1),
                controlSecondary: #colorLiteral(red: 0.7137254902, green: 0.7137254902, blue: 0.7137254902, alpha: 1),
                controlContent: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
            data: SettingsData(items: items))
        
        controller.delegate = self
        controller.dataSource = self
        window?.rootViewController = UINavigationController(rootViewController: controller)
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

extension AppDelegate: MGSettingsControllerDataSource, MGSettingsControllerDelegate {

    func leftBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        let menuBarButton = UIBarButtonItem()
        menuBarButton.image = UIImage(icon: .fontAwesomeSolid(.bars), size: CGSize(width: 30, height: 30), textColor: .black)
        menuBarButton.style = .plain
        menuBarButton.accessibilityIdentifier = "LEFT_SIDE_MENU"
        
        return [menuBarButton]
    }
    
    func rightBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        let menuBarButton = UIBarButtonItem()
        menuBarButton.image = UIImage(icon: .openIconic(.share) , size: CGSize(width: 36, height: 36), textColor: .black)
        menuBarButton.style = .plain
        menuBarButton.accessibilityIdentifier = "SHARE_OPTION"
        
        return [menuBarButton]
    }
    
    func controller(_ controller: UIViewController, didTapBarButtonItem barButtonItem: UIBarButtonItem) {
        
    }
    
    func controller(_ controller: UIViewController, didSelectItem item: MGSettingsItem) {
        print("item title: \(String(describing: item.title))")
        print("item slider value: \(String(describing: item.slider?.value))")
        print("item switch value: \(String(describing: item.switch?.state))")
    }
    
}

struct SettingsAsset: MGSettingsAsset {
    var string: MGSettingsString
    var font: MGSettingsFont
    var image: MGSettingsImage
    var color: MGSettingsColor
    var data: MGSettingsData
}

struct SettingsString: MGSettingsString {
    var title: String
    var navigationTitle: String
}

struct SettingsFont: MGSettingsFont {
    var tableViewCellTitle: UIFont?
    var tableViewCellSubtitle: UIFont?
}

struct SettingsImage: MGSettingsImage {
    var lightMinimum: UIImage?
    var lightMaximum: UIImage?
}

struct SettingsColor: MGSettingsColor {
    var navigationBar: UIColor
    var navigationBarContent: UIColor
    var viewPrimary: UIColor
    var viewSecondary: UIColor
    var viewTertiary: UIColor
    var textPrimary: UIColor
    var textSecondary: UIColor
    var controlPrimary: UIColor
    var controlSecondary: UIColor
    var controlContent: UIColor
}

struct SettingsData: MGSettingsData {
    var items: [MGSettingsItem]
}
