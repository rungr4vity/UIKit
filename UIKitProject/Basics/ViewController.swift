//
//  ViewController.swift
//  UIKitProject
//
//  Created by Frank Martin on 08/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblTitle.text = "Welcome home"
        
        
        view.addSubview(lblTitle)
        lblTitle.center
    }

    @IBAction func buttonTaped(_ sender: Any) {
        
        lblTitle.text = "Clicked"
    }
    
}

