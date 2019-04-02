//
//  CustomView.swift
//  Constraints
//
//  Created by Quốc Khải on 4/2/19.
//  Copyright © 2019 Quốc Khải. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let view = UINib(nibName: "CustomView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        // let view = Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)!.first as! UIView // does the same as above
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        
        super.init(coder: aDecoder)
        
        let view = UINib(nibName: "CustomView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        // let view = Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)!.first as! UIView // does the same as above
        view.frame = self.bounds
        self.addSubview(view)
    }
}
