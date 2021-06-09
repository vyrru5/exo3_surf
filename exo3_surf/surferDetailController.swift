//
//  surferDetailController.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import UIKit

class surferDetailController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.from(surfer.bg)
        profileImage.from(surfer.profile)
        name.text = surfer.name
        nat.text = surfer.nationality

    }
    
    var surfer: Surfer!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nat: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var profileImage: RoundedImage!

}
