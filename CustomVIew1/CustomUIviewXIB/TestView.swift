//
//  TestView.swift
//  CustomUIviewXIB
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TestView: UIView {

    
    @IBOutlet var COntentVIew: UIView!
    @IBOutlet weak var lblContent: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
     required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    private func commonInit(){
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(COntentVIew)
        COntentVIew.frame = self.bounds
        COntentVIew.autoresizingMask = [.flexibleHeight, .flexibleHeight]
    }
}
