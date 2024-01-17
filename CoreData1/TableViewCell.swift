//
//  TableViewCell.swift
//  CoreData1
//
//  Created by NTS on 17/01/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelMobile: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    
    var student : Student! {
        didSet{
            labelName.text = student.name
            labelAddress.text = student.address
            labelMobile.text = student.mobile
            labelCity.text = student.city
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
