//
//  StronMethodOrganizeView.swift
//  LeakExample
//
//  Created by kazutoshi miyasaka on 2019/07/22.
//  Copyright © 2019 jp.po-miyasaka. All rights reserved.
//

import Foundation
import UIKit


class StrongMethodOrganizeView: UIView {
    
    private var dismissButtonHandler: (() -> ())?
    @IBAction func ibDismissButtonTapOn(_ sender: Any) {
        dismissButtonHandler?()
    }
    
    func setUpDismissHandler(_ handler: @escaping (() ->())) {
        self.dismissButtonHandler = handler
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    func loadNib() {
        if let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }
}
