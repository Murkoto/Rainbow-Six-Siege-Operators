//
//  DetailViewController.swift
//  Rainbow Six Siege Operators
//
//  Created by Cesa Anwar on 19/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backgroundPicture: UIImageView!
    @IBOutlet weak var operatorIcon: UIImageView!
    @IBOutlet weak var operatorName: UILabel!
    @IBOutlet weak var operatorSide: UILabel!
    @IBOutlet weak var operatorRole: UILabel!
    @IBOutlet weak var operatorBio: UILabel!
    
    var ioperator: Operator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = ioperator {
            backgroundPicture.image = result.picture
            operatorIcon.image = result.icon
            operatorName.text = result.codename.uppercased()
            switch result.side {
            case 0:
                operatorSide.text = "ATTACKER"
            default:
                operatorSide.text = "DEFENDER"
            }
            operatorRole.text = result.role
            operatorBio.text = result.bio
        }
    }

}
