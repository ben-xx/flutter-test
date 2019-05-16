//
//  AppDelegate.swift
//  t130_leaf_flutter
//
//  Created by Xiao Yu on 6/5/19.
//  Copyright © 2019 Xiao Yu. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, FlutterAppLifeCycleProvider {
  var _lifecycleDelegate: FlutterPluginAppLifeCycleDelegate?
  var window: UIWindow?
  var flutterEngine: FlutterEngine?
  var flutterEngine2: FlutterEngine?

  override init() {
    super.init()
    _lifecycleDelegate = FlutterPluginAppLifeCycleDelegate.init()
  }

  func addApplicationLifeCycleDelegate(_ delegate: FlutterPlugin) {
    _lifecycleDelegate?.add(delegate)
  }

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let start = NSDate()
    flutterEngine = FlutterEngine.init(name: "my test a2a", project: nil)
    flutterEngine?.run(withEntrypoint: nil)
    GeneratedPluginRegistrant.register(with: self.flutterEngine)

    flutterEngine2 = FlutterEngine.init(name: "the inline view engine", project: nil)
    flutterEngine2?.run(withEntrypoint: "main2")
    print("application launch took \(-start.timeIntervalSinceNow)")
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

