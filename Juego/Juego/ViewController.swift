//
//  ViewController.swift
//  Juego
//
//  Created by HTSRL on 17/12/14.
//  Copyright (c) 2014 ht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgNro1: UIImageView!
    @IBOutlet weak var imgNro2: UIImageView!
    @IBOutlet weak var imgNro3: UIImageView!
    @IBOutlet weak var imgNro4: UIImageView!
    @IBOutlet weak var imgNro5: UIImageView!
    
    @IBOutlet weak var lbl0: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!

    @IBOutlet weak var lbl00: UILabel!
    @IBOutlet weak var lbl11: UILabel!
    @IBOutlet weak var lbl22: UILabel!
    
    @IBOutlet weak var lbl000: UILabel!
    @IBOutlet weak var lbl111: UILabel!
    @IBOutlet weak var lbl222: UILabel!

    @IBOutlet weak var lbl0000: UILabel!
    @IBOutlet weak var lbl2222: UILabel!
    @IBOutlet weak var lbl1111: UILabel!
    
    @IBOutlet weak var lbl00000: UILabel!
    @IBOutlet weak var lbl11111: UILabel!
    @IBOutlet weak var lbl22222: UILabel!

    
    
    
    var nros1: [Int] = [0,1,2,3,4,5,6,7,8,9]
    var nrolbl: [String] = []
    
    var randomNumero1 = 0
    var randomNumero2 = 0
    var randomNumero3 = 0
    var randomNumero4 = 0
    var randomNumero5 = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func rollNros(){
        
        randomNumero1 = Int(arc4random_uniform(UInt32(nros1.count)))
        randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        while(randomNumero1 == randomNumero2){
            randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        }
        randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
        
        while(randomNumero3 == randomNumero1){
            while(randomNumero2 == randomNumero3){
                randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
            }
        }
        
        lbl0.text = "\(randomNumero1)"
        lbl1.text = "\(randomNumero2)"
        lbl2.text = "\(randomNumero3)"
        
        randomNumero1 = Int(arc4random_uniform(UInt32(nros1.count)))
        randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        while(randomNumero1 == randomNumero2){
            randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        }
        randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
        
        while(randomNumero3 == randomNumero1){
            while(randomNumero2 == randomNumero3){
                randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
            }
        }
        
        lbl00.text = "\(randomNumero1)"
        lbl11.text = "\(randomNumero2)"
        lbl22.text = "\(randomNumero3)"
        
        randomNumero1 = Int(arc4random_uniform(UInt32(nros1.count)))
        randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        while(randomNumero1 == randomNumero2){
            randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        }
        randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
        
        while(randomNumero3 == randomNumero1){
            while(randomNumero2 == randomNumero3){
                randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
            }
        }
        
        lbl000.text = "\(randomNumero1)"
        lbl111.text = "\(randomNumero2)"
        lbl222.text = "\(randomNumero3)"
        
        
        
        randomNumero1 = Int(arc4random_uniform(UInt32(nros1.count)))
        randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        while(randomNumero1 == randomNumero2){
            randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        }
        randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
        
        while(randomNumero3 == randomNumero1){
            while(randomNumero2 == randomNumero3){
                randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
            }
        }
        
        lbl0000.text = "\(randomNumero1)"
        lbl1111.text = "\(randomNumero2)"
        lbl2222.text = "\(randomNumero3)"
        
        
        randomNumero1 = Int(arc4random_uniform(UInt32(nros1.count)))
        randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        while(randomNumero1 == randomNumero2){
            randomNumero2 = Int(arc4random_uniform(UInt32(nros1.count)))
        }
        randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
        
        while(randomNumero3 == randomNumero1){
            while(randomNumero2 == randomNumero3){
                randomNumero3 = Int(arc4random_uniform(UInt32(nros1.count)))
            }
        }
        
        lbl00000.text = "\(randomNumero1)"
        lbl11111.text = "\(randomNumero2)"
        lbl22222.text = "\(randomNumero3)"
    }

    @IBAction func doRoll(sender: AnyObject) {
        rollNros()
        
    }

}

