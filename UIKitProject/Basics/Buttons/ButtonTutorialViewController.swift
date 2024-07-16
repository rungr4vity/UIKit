//
//  ButtonTutorialViewController.swift
//  UIKitProject
//
//  Created by Frank Martin on 10/07/24.
//

import UIKit

class ButtonTutorialViewController: UIViewController {
    
    // lazy variable
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        return button
        
    }()

    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is subtitle from "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textBox: UITextField = {
       
        let textbox = UITextField()
        textbox.textColor = .blue
        textbox.placeholder = "Enter text"
        textbox.returnKeyType = .search
        textbox.translatesAutoresizingMaskIntoConstraints = false
        return textbox
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        view.addSubview(subtitleLabel)
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subtitleLabel.centerYAnchor.constraint(equalTo: showNameButton.bottomAnchor,constant: 16).isActive = true
        
        
        textBox.delegate = self
        view.addSubview(textBox)
        textBox.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textBox.centerYAnchor.constraint(equalTo: subtitleLabel.bottomAnchor,constant: 16).isActive = true
        
        
    }
    
    @objc func onShowNameTapped() {
        subtitleLabel.isHidden.toggle()
        
        let title  = subtitleLabel.isHidden ? "Show name" : "Hide name"
        showNameButton.setTitle(title, for: .normal)
    }
}

extension ButtonTutorialViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("Entered")
        return true
    }
}

#Preview {
    ButtonTutorialViewController()
}
