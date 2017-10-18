//
//  ViewController.swift
//  iosTest
//
//  Created by Kevin Galligan on 10/17/17.
//  Copyright © 2017 doppl. All rights reserved.
//

import UIKit
import testdoppllib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoTouchlabDopplTestingDopplJunitTestHelper.runResource(with: "dopplTests.txt")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

