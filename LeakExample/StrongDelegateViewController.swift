//
//  StrongDelegateViewController.swift
//  LeakExample
//
//  Created by kazutoshi miyasaka on 2019/07/22.
//  Copyright © 2019 jp.po-miyasaka. All rights reserved.
//

import UIKit

class StrongDelegateViewController: UIViewController, StrongDelegateDelegate {
    var presenter: StrongDelegatePresenter

    func showExpression() {
        let label = UILabel()
        label.frame = self.view.bounds
        label.text = "delegateとして\n強参照されてしまってリークするVC"
        label.textAlignment = .center
        label.numberOfLines = 2
        self.view.insertSubview(label, at: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        presenter.viewDidAppear()
    }
    
    @IBAction func ibDismissButtonTapOn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    init(presenter: StrongDelegatePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


protocol StrongDelegateDelegate: class {
    func showExpression()
}

class StrongDelegatePresenter {
    var delegate: StrongDelegateDelegate?
    
    func viewDidAppear() {
        delegate?.showExpression()
    }
}
