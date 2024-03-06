//
//  ChangeTheme.swift
//  DarkModeapp
//
//  Created by Mobile on 19/02/24.
//

import Foundation
struct ThemeChange {
    static var shared = ThemeChange()
    var theme : DeviceTheme{
        get {
            return DeviceTheme(rawValue: UserDefaults.standard.integer(forKey: "selectTheme")) ?? .device
        }
        set {
            UserDefaults.standard.set(newValue.rawValue,forKey: "selectTheme")
        }
    }
}
