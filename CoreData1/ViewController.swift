//
//  ViewController.swift
//  CoreData1
//
//  Created by NTS on 16/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let dict = ["name": txtName.text!, "address": txtAddress.text!, "city": txtCity.text!, "mobile": txtMobile.text!]
        DataBaseHelper.shareInstance.save(object: dict)
    }
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
        let listVC = storyboard?.instantiateViewController(identifier: "ListViewController") as! ListViewController
        self.navigationController?.pushViewController(listVC, animated: true)
    }
    
    
}

