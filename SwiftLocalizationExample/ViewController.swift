//
//  ViewController.swift
//  SwiftLocalizationExample
//
//  Created by Jeff Schmitz on 10/28/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit
import Localize_Swift

class ViewController: UIViewController {

    @IBOutlet weak var LabelHelloWorld: UILabel!
    @IBOutlet weak var resetEnglishButton: UIButton!
    @IBOutlet weak var portugueseButton: UIButton!
    @IBOutlet weak var russianButton: UIButton!
    
    let availableLanguages = Localize.availableLanguages()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationItem.title = NSLocalizedString("nav-title-hey", comment: "Navigation Title: Hey")

        let count = 100
        let localizedString = String.localizedStringWithFormat(NSLocalizedString("%d file(s) remaining", comment: "Message shown for remaining files"), count)
        print("localizedString: \(localizedString)")
        
        self.setText()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(setText), name: NSNotification.Name(LCLLanguageChangeNotification), object: nil)
    }
    
    func setText() {
        self.navigationItem.title = "nav-title-hey".localized()
        LabelHelloWorld.text = "Main.View.HelloWorldLabel".localized()
        resetEnglishButton.setTitle("resetEnglishButton".localized(), for: UIControlState.normal)
        portugueseButton.setTitle("portugueseButton".localized(), for: UIControlState.normal)
        russianButton.setTitle("russianButton".localized(), for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetEnglishButtonTapped(_ sender: AnyObject) {
        Localize.setCurrentLanguage("en")
//        Localize.resetCurrentLanguageToDefault()
    }

    @IBAction func portugueseButtonTapped(_ sender: AnyObject) {
        Localize.setCurrentLanguage("pt-PT")
    }
    
    @IBAction func russianButtonTapped(_ sender: AnyObject) {
        Localize.setCurrentLanguage("ru")
    }
   
    
    
    
    
//    @IBAction func doChangeLanguage(_ sender: AnyObject) {
//        actionSheet = UIAlertController(title: nil, message: "Switch Language", preferredStyle: UIAlertControllerStyle.actionSheet)
//        for language in availableLanguages {
//            let displayName = Localize.displayNameForLanguage(language)
//            let languageAction = UIAlertAction(title: displayName, style: .default, handler: {
//                (alert: UIAlertAction!) -> Void in
//                Localize.setCurrentLanguage(language)
//            })
//            actionSheet.addAction(languageAction)
//        }
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
//            (alert: UIAlertAction) -> Void in
//        })
//        actionSheet.addAction(cancelAction)
//        self.present(actionSheet, animated: true, completion: nil)
//    }
//    
//    @IBAction func doResetLanguage(_ sender: AnyObject) {
//        Localize.resetCurrentLanguageToDefault()
//    }
    
}

