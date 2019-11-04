//
//  TestView.swift
//  WorkingWithXibFile
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TestView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lblString: UILabel!
    
    
    override init(frame: CGRect) { // for using cutom view in code
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) { // for using customview in IB
        super.init(coder: coder)
        
//        fatalError("init(coder:) has not been implemented")
        commitInit()
    }
    
    
    private func commitInit() {
        
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
}
