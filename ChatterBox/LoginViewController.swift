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
    @IBOutlet weak var signUpLabelOutlet: UILabel!
    
    @IBOutlet weak var repeatPasswordLineView: UIView!
    
    @IBOutlet weak var LoginButtonOutlet: UIButton!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    @IBOutlet weak var forgotPasswordOutlet: UIButton!
    @IBOutlet weak var resendEmailPasswordOutlet: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextfield: UITextField!
    
    var isLogin = true
    
    //MARK: VIEW LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFieldDelegates()
        updateUIFor(login: true)
        
    }
    
    //all conditions need to change and space them properly in next push
    
    //MARK: IBACTION
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        
        if isDataInputedFor(type: isLogin ? "login" : "registration") {
            
        } else {
            //
        }
        
        
    }
    
    @IBAction func resendEmailButtonTapped(_ sender: Any) {
        
        
        if isDataInputedFor(type: "password") {
            
        } else {
            //
        }
        
        
    }
    
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        updateUIFor(login: sender.titleLabel?.text == "Login")
        isLogin.toggle()
    }
    
    
    @IBAction func forgetPasswordButtonTapped(_ sender: UIButton) {
        
        
        
        
        if isDataInputedFor(type: "password") {
            
        } else {
            //
        }
    }
    
    
    private func setupBackgroundTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backgroundTap))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func backgroundTap() {
        
        
        view.endEditing(false)
    }
    
    
    
    //MARK: -ANIMATIONS
    
    private func updateUIFor(login: Bool) {
        
        LoginButtonOutlet.setImage(UIImage(named: login ? "loginBtn" : "registerBtn"), for: .normal)
        signUpButtonOutlet.setTitle(login ? "SignUp" : "Login", for: .normal)
        signUpLabelOutlet.text = login ? "Don't have an account ?" : "Have an account ?"
        
        UIView.animate(withDuration: 0.5) {
            self.repeatPasswordLineView.isHidden = login
            self.repeatPasswordTextfield.isHidden = login
            self.repeatLabelOutlet.isHidden = login
        }
    }
    
    //MARK: - SETUP
    
    private func setupTextFieldDelegates(){
        
        emailTextField.addTarget(self, action: #selector(textfieldDidChange), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textfieldDidChange), for: .editingChanged)
        repeatPasswordTextfield.addTarget(self, action: #selector(textfieldDidChange), for: .editingChanged)
    }
    
    @objc func textfieldDidChange(_textField: UITextField) {
        
        updatePlaceholderLabel(textField: _textField)
    }
    
    
    private func updatePlaceholderLabel(textField: UITextField){
        
        switch textField {
        case emailTextField:
            emailLabelOutlet.text = textField.hasText ? "Email" : ""
            
        case passwordTextField:
            passwordLabelOutlet.text = textField.hasText ? "Password" : ""
            
        default:
            repeatLabelOutlet.text = textField.hasText ? "Repeat Password" : ""
        }
    }
    
    
    //MARK: Helpers
    
    private func isDataInputedFor(type: String) -> Bool {
        switch type {
        case "login":
            return emailTextField.text != "" && passwordTextField.text != ""
            
        case "registration":
            return emailTextField.text != "" && passwordTextField.text != "" && repeatPasswordTextfield.text != ""
        default:
            return emailTextField.text != ""
        }
    }
}
