//
//  ViewController.swift
//  CoreData1
//
//  Created by NTS on 16/01/24.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    var i = Int()
    var isUpdate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func data(object: [String : String], index: Int, isEdit: Bool) {
        txtName.text = object["name"]
        txtCity.text = object["city"]
        txtAddress.text = object["address"]
        txtMobile.text = object["mobile"]
        i = index
        isUpdate = isEdit
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let dict = ["name": txtName.text!, "address": txtAddress.text!, "city": txtCity.text!, "mobile": txtMobile.text!]
        if isUpdate == true{
            DataBaseHelper.shareInstance.editData(object: dict as! [String: String] , i: i)
        }else {
            DataBaseHelper.shareInstance.save(object: dict)
        }
        
       
    }
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
        let listVC = storyboard?.instantiateViewController(identifier: "ListViewController") as! ListViewController
        listVC.delegate = self
        self.navigationController?.pushViewController(listVC, animated: true)
    }
    
    
    
    
}

