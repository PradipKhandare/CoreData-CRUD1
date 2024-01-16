//
//  DataBaseHelper.swift
//  CoreData1
//
//  Created by NTS on 16/01/24.
//

import Foundation
import CoreData
import UIKit

class DataBaseHelper
{
   static var shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext

    func save(object: [String: String]){
        
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.city = object["city"]
        student.address = object["address"]
        student.mobile = object["mobile"]
        
        do{
            try? context?.save()
        }catch {
          print("data is not save \(error)")
        }
    }
}
