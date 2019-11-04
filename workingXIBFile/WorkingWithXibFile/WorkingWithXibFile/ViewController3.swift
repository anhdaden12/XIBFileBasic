//
//  ViewController3.swift
//  WorkingWithXibFile
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func  onClickvc3(_ sender: Any) {
        let vc4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "view4")
        present(vc4, animated: true, completion: nil)
    }
    
}
