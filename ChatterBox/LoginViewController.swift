//
//  LoginViewController.swift
//  ChatterBox
//
//  Created by Nitin Singh on 13/07/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IBOUTLETS
    @IBOutlet weak var emailLabelOutlet: UILabel!
    @IBOutlet weak var passwordLabelOutlet: UILabel!
    @IBOutlet weak var repeatLabelOutlet: UILabel!
    @IBOutlet weak var signUpLabelOutlet: UIButton!
    
    @IBOutlet weak var repeatPasswordLineView: UIView!
    
    @IBOutlet weak var LoginButtonOutlet: UIButton!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    @IBOutlet weak var forgotPasswordOutlet: UIButton!
    @IBOutlet weak var resendEmailPasswordOutlet: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextfield: UITextField!
    
    //MARK: VIEW LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //MARK: IBACTION
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func resendEmailButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func forgetPasswordButtonTapped(_ sender: UIButton) {
    }
}

