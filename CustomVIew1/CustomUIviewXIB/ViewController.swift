//
//  ViewController.swift
//  CustomUIviewXIB
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newView: TestView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newView.lblContent.text = "Festival HUB"
    }


}

