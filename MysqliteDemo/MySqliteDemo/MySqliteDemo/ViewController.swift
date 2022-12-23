//
//  ViewController.swift
//  MySqliteDemo
//
//  Created by Mac on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dbHelper = DBHelper()
                dbHelper.insertEmployeeRecordsIntoEmployeeTable(empId: 10, empName: "Rohit", empCity: "Bombay")
       
        
            }


}

