//
//  SecondViewController.swift
//  ForwardDataPassing
//
//  Created by Mac on 07/12/22.
//

import UIKit

protocol BackDataPassingProtocol{
    func passDataToFirstViewController(textToPass : String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dataLabel: UILabel!
    
    var dataFromFirstViewController : String?
    var delegateSVC : BackDataPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    self.dataLabel.text = dataFromFirstViewController
               navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnClick(_ sender: Any) {
        guard let delegateOnSecondViewContoller = delegateSVC else{
                    print("Delegate not Found")
                    return
                }
                
                let nameRetrivedFromTextField = self.nameTextField.text
                
                delegateOnSecondViewContoller.passDataToFirstViewController(textToPass: nameRetrivedFromTextField!)
                
                navigationController?.popViewController(animated: true)
    }
    
    
}
