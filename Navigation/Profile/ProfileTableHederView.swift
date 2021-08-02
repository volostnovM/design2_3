//
//  ProfileTableHederView.swift
//  Navigation
//
//  Created by TIS Developer on 30.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHederView: UIView {

    private var statusText :String? = nil
        
        var fullNameLabel: UILabel = {
            let label = UILabel()
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            label.text = "Hipster Cat"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        var statusLabel: UILabel = {
            let label = UILabel()
            label.textColor = .gray
            label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            label.text = "Waiting for something..."
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        var avatarImageView: UIImageView = {
            let imageView = UIImageView()

            imageView.image = UIImage(named: "avatar")
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        
        var setStatusButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = UIColor.blue
            button.setTitleColor(UIColor.white, for: .normal)
            button.setTitle("Show status", for: .normal)
            button.addTarget(self, action: #selector(pressButtonWriteStatus), for: .touchUpInside)
            

            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()


        var statusTextField: UITextField = {
            let textField = UITextField()
            textField.textColor = .black
            textField.backgroundColor = .white
            textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            textField.placeholder = "Write status"
            textField.addTarget(self, action: #selector(textFieldwriteStatus), for: .editingChanged)
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
    
    
    
        

    
    
    @objc func pressButtonWriteStatus() {
        if let outputStatus = statusText {
            print(outputStatus)
            statusLabel.text = outputStatus
        }
        else {
            print("Ничего менять!")
        }
    }
    
    @objc func textFieldwriteStatus() {
        statusText = statusTextField.text
        
        if let outputStatus = statusText{
            print(outputStatus)
        }
        else {
            print("Ничего не вводили!")
        }
    }
        
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
        
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width / 2
        avatarImageView.layer.borderWidth = 3.0
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        
        
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.white.cgColor
        
        setStatusButton.clipsToBounds = true
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        setStatusButton.layer.cornerRadius = 4
    }
}

private extension ProfileHederView{
    func setupViews() {
        
        self.addSubview(avatarImageView)
        self.addSubview(fullNameLabel)
        self.addSubview(statusLabel)
        self.addSubview(setStatusButton)
        self.addSubview(statusTextField)

        
        let constraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 110),
            avatarImageView.widthAnchor.constraint(equalToConstant: 110),
            
            fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            fullNameLabel.bottomAnchor.constraint(equalTo: statusLabel.topAnchor, constant: -16),
            
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -16),
            
            statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            statusTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            setStatusButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
 
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
}
