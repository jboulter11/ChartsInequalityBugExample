//
//  AppDelegate.swift
//  ChartsInequalityBugExample
//
//  Created by Jim Boulter on 2/13/19.
//  Copyright © 2019 Jim Boulter. All rights reserved.
//

import UIKit
import Charts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Actual example
        let entry1 = BarChartDataEntry(x: 0, yValues: [0.0, 1.0, 0.0, 0.0])
        let entry2 = BarChartDataEntry(x: 0, yValues: [0.0, 1.0, 0.0])
        
        // Comment me out for next example
        assert(entry1 != entry2)

        // Real world application example.
        let dataSet1 = BarChartDataSet(values: [entry1], label: nil)
        let dataSet2 = BarChartDataSet(values: [entry2], label: nil)
        
        // Here we see they are not the same, but this assert will fail.
        assert(dataSet1.values != dataSet2.values)
        
        return true
    }
}

