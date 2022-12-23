//
//  ViewController.swift
//  TableViewCell
//
//  Created by Mac on 07/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var studentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
studentTableView.dataSource = self
studentTableView.delegate = self
        
let nibName = UINib(nibName: "StudentTableViewCell", bundle: nil)
self.studentTableView.register(nibName, forCellReuseIdentifier: "StudentTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 10


  }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as? StudentTableViewCell
            
            studentTableViewCell?.studentName.text = "Yogesh"
            studentTableViewCell?.studentRollNumber.text = "MH12"
            studentTableViewCell?.studentCity.text = "Apune Ki Bombay"
            
            return studentTableViewCell ?? UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
        }
    

}
