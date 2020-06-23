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
	lazy var appleButton = ASAuthorizationAppleIDButton()
    
    override func viewDidLoad() {
		super.viewDidLoad()
		
		setupLayout()
		appleButton.addTarget(
			self,
			action: #selector(SignInWithAppleAction(sender:)),
			for: .touchUpInside
		)
    }
	
	private func setupLayout() {
		view.addSubview(appleButton)
		appleButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			appleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			appleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
	}

    @objc
    func SignInWithAppleAction(sender: ASAuthorizationAppleIDButton) {
        appleProvider.handleAppleIdRequest(block: { fullName, email, token in
			// Send data to your server for validation, etc
			// Bear in mind that token and email will only be provided the first time
			// the Apple ID account is authorized to use Apple Sign in.
		})
    }
}

