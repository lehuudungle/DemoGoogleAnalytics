//
//  ViewController.swift
//  DemoGoogleAnalytics
//
//  Created by le.huu.dung on 11/8/18.
//  Copyright © 2018 ledung95d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var centerOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let tracker = GAI.sharedInstance().defaultTracker else { return }
        tracker.set(kGAIScreenName, value: "Computer")

        guard let builder = GAIDictionaryBuilder.createScreenView() else { return }
        tracker.send(builder.build() as [NSObject: AnyObject])
    }

}


