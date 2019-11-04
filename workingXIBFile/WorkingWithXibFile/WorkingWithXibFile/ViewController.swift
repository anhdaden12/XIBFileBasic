//
//  ViewController.swift
//  WorkingWithXibFile
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickPass(_ sender: Any) {
        let vc2 = ViewController5(nibName: "ViewController5", bundle: nil)
        vc2.navigationItem.leftBarButtonItem = editButtonItem
      //  vc2.modalPresentationStyle = .fullScreen
        present(vc2, animated: true, completion: nil)
    }
    
    
    @IBAction func openAnotherVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "testVC")
        //storyboard.modalPresentationStyle = .fullScreen
        present(storyboard, animated: true, completion: nil)
    }
}

