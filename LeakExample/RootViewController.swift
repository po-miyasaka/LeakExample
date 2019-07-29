//
//  ViewController.swift
//  LeakExample
//
//  Created by kazutoshi miyasaka on 2019/07/22.
//  Copyright © 2019 jp.po-miyasaka. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBAction func ibShowStrongDelegateVCButtonTapOn(_ sender: Any) {
        let presenter = StrongDelegatePresenter()
        let vc = StrongDelegateViewController(presenter: presenter)
        presenter.delegate = vc
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func ibStrongHandlerVCButtonTapOn(_ sender: Any) {
        self.present(StrongHandlerViewController(), animated: true, completion: nil)
    }
    
    
    @IBAction func ibStrongMethodVCButtonTapOn(_ sender: Any) {
        self.present(StrongMethodViewController(), animated: true, completion: nil)
    }
    
    
    
}

