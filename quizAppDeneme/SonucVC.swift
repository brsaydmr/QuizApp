//
//  SonucVC.swift
//  quizAppDeneme
//
//  Created by Barış Aydemir on 1.09.2023.
//

import UIKit

class SonucVC: UIViewController {
    
    @IBOutlet weak var dogruLabel: UILabel!
    
    @IBOutlet weak var yanlisLabel: UILabel!
    
    @IBOutlet weak var puanLabel: UILabel!
    
    var dogruSayisi:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let d = dogruSayisi {
            dogruLabel.text = "\(d) DOĞRU"
            yanlisLabel.text = "\(5-d) YANLIŞ"
            puanLabel.text = "% \(d*100/5) Başarı"

        }

    }
    

    @IBAction func tekrarOynaButton(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)

    }
    
}
