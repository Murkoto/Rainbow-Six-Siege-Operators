//
//  OperatorTableViewCell.swift
//  Rainbow Six Siege Operators
//
//  Created by Cesa Anwar on 18/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class OperatorTableViewCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var codename: UILabel!
    @IBOutlet weak var role: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
