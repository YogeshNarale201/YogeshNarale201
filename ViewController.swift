//
//  ViewController.swift
//  MyFirstDemo
//
//  Created by Mac on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var satateTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load of First View Controller Called!")
               print("Welcome to iOS September Batch!")
               bindDataToViews()
           }
           
           func bindDataToViews(){
               firstNameLabel.text = "Vinod"
               lastNameLabel.text = "Narale"
               
               cityTextField.text = "Kalamboli"
               cityTextField.textColor = .black
               cityTextField.backgroundColor = .gray
               
               satateTextField.text = "Maharashtra"
               satateTextField.textColor = .red
               satateTextField.backgroundColor = .blue
           }
           
           override func viewWillAppear(_ animated: Bool) {
               print("View Will Appear of First View Controller Called")
           }
           
           override func viewDidAppear(_ animated: Bool) {
               print("View Did Appear of First View Controller Called")
           }
           
           override func viewDidDisappear(_ animated: Bool) {
               print("View Did Disappear of First View Controller Called")
           }
           
           override func viewWillDisappear(_ animated: Bool) {
               print("View Will Disappear of First View Controller Called")
           }
           
           override func didReceiveMemoryWarning() {
               print("did Rx Mem Warning Called")
           }
           
           @IBAction func btnClick(_ sender: Any) {
               let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
               navigationController?.pushViewController(secondViewController!, animated: true)
       
           }
    
    }




