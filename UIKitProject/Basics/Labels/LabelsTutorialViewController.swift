//
//  LabelsTutorialViewController.swift
//  UIKitProject
//
//  Created by Frank Martin on 08/07/24.
//

import UIKit

class LabelsTutorialViewController: UIViewController {

    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is subtitle from "
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = "Hello world"
        textLabel.font = UIFont.systemFont(ofSize: 20)
        textLabel.textColor = UIColor.blue
        
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        // constant is te top padding
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
 

}

#Preview {
    LabelsTutorialViewController()
}
