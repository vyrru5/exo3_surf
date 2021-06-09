//
//  SurfersController.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import UIKit

class SurfersController: UIViewController {

    @IBOutlet weak var rank: UILabel!
    
    
    @IBOutlet weak var surferImage: RoundedImage!
    @IBOutlet weak var surferName: UILabel!
    
    var curIdx = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSurfer()
        surferImage.isUserInteractionEnabled = true
        surferImage.addGestureRecognizer(UITapGestureRecognizer(target : self, action:#selector(surferTapped)))
    }
    
    
    func setupSurfer(){
        let surfer = surfers()[curIdx]
        rank.text = "Classement : \(curIdx + 1)"
        surferName.text = surfer.name + " alias " + surfer.surname
        surferImage.from(surfer.profile)
    }
    
    
    @IBAction func previousSurfer(_ sender: Any) {
        if( curIdx != 0 ){
            curIdx -= 1
            setupSurfer()
        }
    }
    
    @IBAction func nextsurfer(_ sender: Any) {
        
        if( curIdx < surfers().count - 1 ){
            curIdx += 1
            setupSurfer()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detail" else {return}
        guard let next = segue.destination as? surferDetailController else {return}
        next.surfer = surfers()[curIdx]
    }

    @objc func surferTapped(){
        performSegue(withIdentifier: "detail", sender: nil)
    }
}
