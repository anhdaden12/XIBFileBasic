//
//  DetailVC.swift
//  tableViewXibCells
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageDD: UIImageView!
    var imageName: String?
    override func viewDidLoad() {
        super.viewDidLoad()

//        imageDD.layer.cornerRadius = imageDD.bounds.width / 2
//        imageDD.layer.masksToBounds = true
        
        imageDD.image = UIImage(named: imageName!)
    }

    func commonInit(_ imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }
    
}
