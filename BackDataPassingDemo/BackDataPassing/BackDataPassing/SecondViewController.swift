//
//  SecondViewController.swift
//  BackDataPassing
//
//  Created by Mac on 07/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var courseName: UITextField!
    
    var dataOnSecondViewController : ((String,String,String) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.navigationItem.title = "SecondVC"
        
    }
    

    @IBAction func btnclickSaveData(_ sender: Any) {
        
        let firstName = self.firstName.text
                let lastName = self.lastName.text
                let courseName = self.courseName.text
               
                guard let dataFromSecondViewController = dataOnSecondViewController else {
                    print("No data Found")
                    return
                }
               
                dataFromSecondViewController(firstName ?? "Abc",
                                             lastName ?? "Abc",
                                             courseName ?? "iOS")
                
                self.navigationController?.popViewController(animated: true)
        
    }
    
}
