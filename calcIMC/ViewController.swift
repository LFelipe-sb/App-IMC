//
//  ViewController.swift
//  calcIMC
//
//  Created by Felipe on 11/09/2019.
//  Copyright © 2019 Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtPeso:UITextField!
    @IBOutlet var txtAltura:UITextField!
    @IBOutlet var lblResultado:UILabel!
    @IBOutlet var imageVw:UIImageView!
    var imc = 0.0
    
    @IBOutlet var viResultado:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculadora(){
        let peso = Double(txtPeso.text!)
        let altura = Double(txtAltura.text!)
        imc = peso!/(altura!*altura!)
        imc = round(100*imc)/100
        calcular()
    }
    
    func calcular(){
        var imagem = ""
        var resultado = ""
        switch imc {
        case 0..<16:
            resultado = "Muito abaixo do peso"
            imagem = "magreza"
        case 16..<18:
            resultado = "Abaixo do peso"
            imagem = "abaixo"
        case 18..<26:
            resultado = "Normal"
            imagem = "ideal"
        default:
            resultado = "Obeso"
            imagem = "obesidade"
        }
        
        lblResultado.text = "\(imc) - \(resultado)"
        imageVw.image = UIImage(named: imagem)
        viResultado.isHidden = false
    }
}
