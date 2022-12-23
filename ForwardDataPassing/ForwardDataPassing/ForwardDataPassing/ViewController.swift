//
//  ViewController.swift
//  ForwardDataPassing
//
//  Created by Mac on 07/12/22.
//

import UIKit

class ViewController: UIViewController, BackDataPassingProtocol {
  
    @IBOutlet weak var dataTextFile: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataTextFile.text = ""
        self.nameLabel.text = ""
    }

    @IBAction func btnClick(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                
    let dataToBePassed = self.dataTextFile.text
   secondViewController.dataFromFirstViewController = dataToBePassed
 //  secondViewController.delegateSVC = self
   self.navigationController?.pushViewController(secondViewController, animated: true)
            }
            
  func passDataToFirstViewController(textToPass: String) {                                self.nameLabel.text = textToPass
    }
    
}

