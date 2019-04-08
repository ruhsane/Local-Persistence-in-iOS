//
//  ViewController.swift
//  tokenWithUserDefaults
//
//  Created by Ruhsane Sawut on 4/8/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(Defaults.saveToken("this is the token"))
        print(Defaults.getToken())
        Defaults.clearUserData()
        print(Defaults.getToken())
    }


}

