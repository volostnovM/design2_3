//
//  ProfileViewController.swift
//  Navigation
//
//  Created by TIS Developer on 21.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {


    let headerView = ProfileHederView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .lightGray
        self.view.addSubview(headerView)
        
    }

    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        
    }
    
}
