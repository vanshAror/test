//
//  ViewController.swift
//  DarkModeapp
//
//  Created by Mobile on 19/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn {
            ThemeChange.shared.theme = DeviceTheme.dark
            self.view.window?.overrideUserInterfaceStyle = ThemeChange.shared.theme.getUserInterfaceStyle()
        }
        else {
            ThemeChange.shared.theme = DeviceTheme.light
            self.view.window?.overrideUserInterfaceStyle = ThemeChange.shared.theme.getUserInterfaceStyle()
        }
    }
    
}

