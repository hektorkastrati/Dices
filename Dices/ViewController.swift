//
//  ViewController.swift
//  Dices
//
//  Created by Hektor Kastrati on 9/26/18.
//  Copyright © 2018 Hektor Kastrati. All rights reserved.
//

import UIKit
import UIView_Shake

class ViewController: UIViewController {

    @IBOutlet weak var foto1: UIImageView!
    @IBOutlet weak var foto2: UIImageView!
    
    var Foto:[String] = ["zari1", "zari2", "zari3", "zari4", "zari5", "zari6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func bntLuaj(_ sender: Any) {
        
        self.foto1.shake(15, withDelta: 8)
        self.foto2.shake(15, withDelta: 8)
        let randomNumber1:Int = Int(arc4random_uniform(UInt32(Foto.count)))
        let randomNumber2:Int = Int(arc4random_uniform(UInt32(Foto.count)))
        
        foto1.image = UIImage.init(named: Foto[randomNumber1])
        foto2.image = UIImage.init(named: Foto[randomNumber2])
        
    }
    
    
}

