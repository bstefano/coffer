//
//  UserPoolForgotPasswordViewController.swift
//  MySampleApp
//
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.10
//
//

import Foundation
import UIKit
import AWSCognitoIdentityProvider
import AWSMobileHubHelper

class UserPoolForgotPasswordViewController: UIViewController {
    
    var pool: AWSCognitoIdentityUserPool?
    var user: AWSCognitoIdentityUser?
    
    @IBOutlet weak var userName: UITextField!
    
    @IBAction func onForgotPassword(_ sender: AnyObject) {
        guard let username = self.userName.text, !username.isEmpty else {
            UIAlertView(title: "Missing UserName",
                        message: "Please enter a valid user name.",
                        delegate: nil,
                        cancelButtonTitle: "Ok").show()
            return
        }
        
        self.user = self.pool?.getUser(self.userName.text!)
        self.user?.forgotPassword().continueWith(block: {[weak self] (task: AWSTask) -> AnyObject? in
            guard let strongSelf = self else {return nil}
            DispatchQueue.main.async(execute: {
                if let error = task.error as? NSError {
                    UIAlertView(title: error.userInfo["__type"] as? String,
                        message: error.userInfo["message"] as? String,
                        delegate: nil,
                        cancelButtonTitle: "Ok").show()
                } else {
                    strongSelf.performSegue(withIdentifier: "NewPasswordSegue", sender: sender)
                }
            })
            return nil
        })
        
    }
    
    @IBAction func onCancel(_ sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pool = AWSCognitoIdentityUserPool.init(forKey: AWSCognitoUserPoolsSignInProviderKey)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newPasswordViewController = segue.destination as? UserPoolNewPasswordViewController {
            newPasswordViewController.user = self.user
        }
    }
}