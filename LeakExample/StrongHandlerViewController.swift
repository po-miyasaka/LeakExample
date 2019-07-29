//
//  ViewController.swift
//  LeakExample
//
//  Created by kazutoshi miyasaka on 2019/07/22.
//  Copyright © 2019 jp.po-miyasaka. All rights reserved.
//

import UIKit

class StrongHandlerViewController: UIViewController {

    var alertHandler: ((UIAlertAction) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertHandler = { _ in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alertController = UIAlertController.init(title: "VCを閉じます。", message: "ハンドラーからの強参照により、リークします。", preferredStyle: .alert)
        let action: UIAlertAction = .init(title: "閉じる", style: .default, handler: alertHandler)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
        
    }

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
