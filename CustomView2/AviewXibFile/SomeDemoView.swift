//
//  SomeDemoView.swift
//  AviewXibFile
//
//  Created by Apple on 11/4/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class SomeDemoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    
    func commonInit(){
        let bundle = Bundle.init(for: SomeDemoView.self)
        if let viewtoAdd = bundle.loadNibNamed("SomeDemoView", owner: self, options: nil),
            let contenVIew = viewtoAdd.first as? UIView {
            addSubview(contenVIew)
            contenVIew.frame = self.bounds
            contenVIew.backgroundColor = .red
            contenVIew.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
    }

}
