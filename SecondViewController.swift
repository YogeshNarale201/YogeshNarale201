//
//  SecondViewController.swift
//  MyFirstDemo
//
//  Created by Mac on 07/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("View Did Load of Second View Controller Called")
           }
           
           override func viewDidAppear(_ animated: Bool) {
               print("View Did Appear of Second View Controller Called")
           }
           
           override func viewWillAppear(_ animated: Bool) {
               print("View Will Appear of Second View Controller Called")
           }
           
           override func viewDidDisappear(_ animated: Bool) {
               print("View Did Disappear of Second View Controller Called")
           }
           
           override func viewWillDisappear(_ animated: Bool) {
               print("View Will Disappear of Second View Controller Called")
               
           }
                
    }
    


