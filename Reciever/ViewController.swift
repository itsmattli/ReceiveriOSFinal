//
//  ViewController.swift
//  Reciever
//
//  Created by Matthew Li on 2017-12-08.
//  Copyright © 2017 Matthew Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.displayLaunchDetails),
            name: NSNotification.Name.UIApplicationDidBecomeActive,
            object: nil)
        }
    
    @objc func displayLaunchDetails() {
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        if appDelegate.queryText != nil {
            self.textLabel.text = appDelegate.queryText
            self.textLabel.font = UIFont.italicSystemFont(ofSize: textLabel.font.pointSize)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

