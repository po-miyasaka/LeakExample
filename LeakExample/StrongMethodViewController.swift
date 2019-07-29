//
//  StrongMethodViewController.swift
//  LeakExample
//
//  Created by kazutoshi miyasaka on 2019/07/22.
//  Copyright © 2019 jp.po-miyasaka. All rights reserved.
//

import UIKit

class StrongMethodViewController: UIViewController {

    @IBOutlet weak var ibOrganizeView: StrongMethodOrganizeView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibOrganizeView.setUpDismissHandler(dismissMe)
    }

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func dismissMe() {
        self.dismiss(animated: true, completion: nil)
    }
}


