//
//  ViewController.swift
//  Basic Calulator
//
//  Created by Furkan Beyhan on 13.02.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sayiText: UITextField!
    @IBOutlet weak var sayiText2: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    var sonuc = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sonucLabel.text = ""
    }
        
        @IBAction func toplaButton(_ sender: Any) {
            
            if let sayi1 = Int(sayiText.text!){
                if let sayi2 = Int(sayiText2.text!){
                    sonuc = sayi1 + sayi2
                    sonucLabel.text = String(sonuc)
                }
            }
            
        }
        @IBAction func cikarButton(_ sender: Any) {
            if let sayi1 = Int(sayiText.text!){
                if let sayi2 = Int(sayiText2.text!){
                    sonuc = sayi1 - sayi2
                    sonucLabel.text = String(sonuc)
                }
            }
        }
        @IBAction func carpButton(_ sender: Any) {
            if let sayi1 = Int(sayiText.text!){
                if let sayi2 = Int(sayiText2.text!){
                    sonuc = sayi1 * sayi2
                    sonucLabel.text = String(sonuc)
                }
            }
        }
        @IBAction func bolButton(_ sender: Any) {
            if let sayi1 = Int(sayiText.text!){
                if let sayi2 = Int(sayiText2.text!){
                    sonuc = sayi1 / sayi2
                    sonucLabel.text = String(sonuc)
                }
            }
        }
        
        
    

}

