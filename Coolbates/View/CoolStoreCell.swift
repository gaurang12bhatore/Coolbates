//
//  CoolStoreCell.swift
//  Coolbates
//
//  Created by samosys on 06/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class CoolStoreCell: UITableViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var lblExpries: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
