//
//  ViewController.swift
//  AppleSignIn
//
//  Created by Timothy Peraza on 6/19/20.
//  Copyright © 2020 Timothy Peraza. All rights reserved.
//

import UIKit
import AuthenticationServices

class ViewController: UIViewController {

    let appleProvider = AppleSignInClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appleBtn = ASAuthorizationAppleIDButton()
        self.view.addSubview(appleBtn)
        appleBtn.addTarget(self, action: #selector(SignInWithAppleAction(sender:)), for: .touchUpInside)
        appleBtn.center = self.view.center
    }

    @objc
    func SignInWithAppleAction(sender: ASAuthorizationAppleIDButton) {

        appleProvider.handleAppleIdRequest(block: { fullName, email, token in
            // receive data in login class.
            
            
            
        })
    }

}

