//
//  ViewController.swift
//  Sample
//
//  Created by Arror on 2017/4/2.
//  Copyright © 2017年 Arror. All rights reserved.
//

import UIKit
import CaseInsensitiveString

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch CaseInsensitiveString("hallo") {
        case "HaLlO":
            print("Hallo.")
        case "world":
            print("World.")
        default:
            print("Unknow.")
        }
    }
}

