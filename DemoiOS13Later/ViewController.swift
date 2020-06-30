//
//  ViewController.swift
//  DemoiOS13Later
//
//  Created by Ray on 2020/1/30.
//  Copyright © 2020 Sinyi Realty Inc. All rights reserved.
//

import UIKit
import SwiftHEXColors

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setup()
    }


    private func setup() {
        let white = UIColor(hexString: "#ffffff")
        view.backgroundColor = white
    }
}

