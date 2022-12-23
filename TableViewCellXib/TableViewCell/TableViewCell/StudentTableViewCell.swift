//
//  StudentTableViewCell.swift
//  TableViewCell
//
//  Created by Mac on 07/12/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentRollNumber: UILabel!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
