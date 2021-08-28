//
//  CustomTableViewCell.swift
//  Technicalisto_Project
//
//  Created by OSX on 25/08/2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var tltleTwoCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
