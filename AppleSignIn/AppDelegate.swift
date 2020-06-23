//
//  AppDelegate.swift
//  AppleSignIn
//
//  Created by Timothy Peraza on 6/19/20.
//  Copyright © 2020 Timothy Peraza. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?
	
    func application(
		_ application: UIApplication,
		didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
	) -> Bool {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		window?.rootViewController = storyboard.instantiateInitialViewController()
        return true
	}
}

