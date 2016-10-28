//
//  ViewController.swift
//  SwiftLocalizationExample
//
//  Created by Jeff Schmitz on 10/28/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = NSLocalizedString("nav-title-hey", comment: "Navigation Title: Hey")

        let count = 100
        let localizedString = String.localizedStringWithFormat(NSLocalizedString("%d file(s) remaining", comment: "Message shown for remaining files"), count)
        print("localizedString: \(localizedString)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

