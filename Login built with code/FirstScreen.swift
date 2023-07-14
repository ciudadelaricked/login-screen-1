//
//  FirstScreen.swift
//  Login built with code
//
//  Created by Daniel Sosa on 3/2/23.
//

import UIKit

class FirstScreen: UIViewController {

    private let loginButton = UIButton()
    private let imgView = UIImageView()
    private let imgLogoPremierTech = UIImageView()
    private let labelLogin = UILabel()
    private let labelEmail = UILabel()
    private let fieldEmail = UITextField()
    private let labelPassword = UILabel()
    private let fieldPassword = UITextField()
    private let labelForgot = UILabel()
    private let labelOr = UILabel()
    private let lineOr = UIView()
    private let lineOrDerecha = UIView()
    private let logoFacebook = UIImageView()
    private let logoGoogle = UIImageView()
    private let labelSignUp = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageBackground()
        setLogoPremierTech()
        setLabelLogin()
        setLabelEmail()
        setEmail()
        setLabelPassword()
        setPassword()
        setLabelForgot()
        setupButton()
        setLabelOr()
        setLineOr()
        setLineOrDerecha()
        setupLogoFacebook()
        setupLogoGoogle()
        setLabelSignUp()
                 
    }

    func setupButton() {
        view.addSubview(loginButton)
        
        loginButton.configuration = .filled()
        loginButton.configuration?.baseBackgroundColor = .systemBlue
        loginButton.configuration?.title = "LOGIN"

        loginButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: labelForgot.bottomAnchor, constant: 25),
            loginButton.widthAnchor.constraint(equalToConstant: 292),
            loginButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    func setupImageBackground() {
        view.addSubview(imgView)
        
        imgView.image = UIImage(named: "login_tarea3") // sin init
        imgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //Hare que la imagen se extienda en toda el area del view
            imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imgView.topAnchor.constraint(equalTo: view.topAnchor),
            imgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imgView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
    }
    
    func setLogoPremierTech() {
        view.addSubview(imgLogoPremierTech)
        
        imgLogoPremierTech.image = UIImage(named: "Premier_logo")
        imgLogoPremierTech.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imgLogoPremierTech.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imgLogoPremierTech.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            imgLogoPremierTech.widthAnchor.constraint(equalToConstant: 264),
            imgLogoPremierTech.heightAnchor.constraint(equalToConstant: 128)
        ])
    }
    
    func setLabelLogin() {
        view.addSubview(labelLogin)
        
        labelLogin.numberOfLines = 0
        labelLogin.textAlignment = .left
        labelLogin.text = "LOGIN"
        labelLogin.font = UIFont.boldSystemFont(ofSize: 20)
        labelLogin.textColor = .white
        
        labelLogin.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.topAnchor.constraint(equalTo: imgLogoPremierTech.bottomAnchor, constant: 70),
            labelLogin.widthAnchor.constraint(equalToConstant: 292),
            labelLogin.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    func setLabelEmail(){
        view.addSubview(labelEmail)
        
        labelEmail.textAlignment = .left
        labelEmail.text = "Email or username"
        labelEmail.font = UIFont.systemFont(ofSize: 17)
        labelEmail.textColor = .white
        labelEmail.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelEmail.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 35),
            labelEmail.widthAnchor.constraint(equalToConstant: 292),
            labelEmail.heightAnchor.constraint(equalToConstant: 21)
        ])
        
    }
    
    func setEmail(){
        view.addSubview(fieldEmail)
        
        fieldEmail.font = UIFont.systemFont(ofSize: 14)
        fieldEmail.backgroundColor = .systemBackground
        fieldEmail.borderStyle = .roundedRect
        fieldEmail.clearButtonMode = .always
        fieldEmail.autocapitalizationType = .none
        fieldEmail.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fieldEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fieldEmail.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 5),
            fieldEmail.widthAnchor.constraint(equalToConstant: 292),
            fieldEmail.heightAnchor.constraint(equalToConstant: 34)
        ])
    }
    
    func setLabelPassword(){
        view.addSubview(labelPassword)
        
        labelPassword.textAlignment = .left
        labelPassword.text = "Password"
        labelPassword.font = UIFont.systemFont(ofSize: 17)
        labelPassword.textColor = .white
        labelPassword.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelPassword.topAnchor.constraint(equalTo: fieldEmail.bottomAnchor, constant: 27),
            labelPassword.widthAnchor.constraint(equalToConstant: 292),
            labelPassword.heightAnchor.constraint(equalToConstant: 21)
        ])
        
    }
    
    func setPassword(){
        view.addSubview(fieldPassword)
        
        fieldPassword.font = UIFont.systemFont(ofSize: 14)
        fieldPassword.isSecureTextEntry = true
        fieldPassword.backgroundColor = .systemBackground
        fieldPassword.borderStyle = .roundedRect
        fieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fieldPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 5),
            fieldPassword.widthAnchor.constraint(equalToConstant: 292),
            fieldPassword.heightAnchor.constraint(equalToConstant: 34)
        ])
    }
    
    func setLabelForgot(){
        view.addSubview(labelForgot)
        
        labelForgot.textAlignment = .right
        labelForgot.text = "Forgot password?"
        labelForgot.font = UIFont.systemFont(ofSize: 15)
        labelForgot.textColor = .gray
        labelForgot.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelForgot.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelForgot.topAnchor.constraint(equalTo: fieldPassword.bottomAnchor, constant: 8),
            labelForgot.widthAnchor.constraint(equalToConstant: 292),
            labelForgot.heightAnchor.constraint(equalToConstant: 17)
        ])
    }
    
    func setLabelOr(){
        view.addSubview(labelOr)
        
        labelOr.textAlignment = .center
        labelOr.text = "OR"
        labelOr.font = UIFont.systemFont(ofSize: 15)
        labelOr.textColor = .gray
        labelOr.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelOr.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelOr.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 70),
            labelOr.widthAnchor.constraint(equalToConstant: 292),
            labelOr.heightAnchor.constraint(equalToConstant: 17)
        ])
    }
    
    
     func setLineOr(){
        view.addSubview(lineOr)
        
        lineOr.backgroundColor = .gray
        lineOr.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lineOr.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -83),
            lineOr.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 78.5),
            lineOr.widthAnchor.constraint(equalToConstant: 126),
            lineOr.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func setLineOrDerecha(){
       view.addSubview(lineOrDerecha)
       
       lineOrDerecha.backgroundColor = .gray
       lineOrDerecha.translatesAutoresizingMaskIntoConstraints = false
       
       NSLayoutConstraint.activate([
        lineOrDerecha.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 83),
        lineOrDerecha.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 78.5),
        lineOrDerecha.widthAnchor.constraint(equalToConstant: 126),
        lineOrDerecha.heightAnchor.constraint(equalToConstant: 1)
       ])
   }
    
    
    func setupLogoFacebook() {
        view.addSubview(logoFacebook)
        
        logoFacebook.image = UIImage(named: "facebook_logo")
        logoFacebook.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //Hare que la imagen se extienda en toda el area del view
            logoFacebook.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 40),
            logoFacebook.topAnchor.constraint(equalTo: labelOr.bottomAnchor, constant: 15),
            logoFacebook.widthAnchor.constraint(equalToConstant: 33),
            logoFacebook.heightAnchor.constraint(equalToConstant: 33)
        ])
        
    }
    
    func setupLogoGoogle() {
        view.addSubview(logoGoogle)
        
        logoGoogle.image = UIImage(named: "logo_gmail")
        logoGoogle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //Hare que la imagen se extienda en toda el area del view
            logoGoogle.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            logoGoogle.topAnchor.constraint(equalTo: labelOr.bottomAnchor, constant: 15),
            logoGoogle.widthAnchor.constraint(equalToConstant: 33),
            logoGoogle.heightAnchor.constraint(equalToConstant: 33)
        ])
        
    }
    
        func setLabelSignUp(){
        view.addSubview(labelSignUp)
        
        labelSignUp.textAlignment = .center
        labelSignUp.text = "Need an account? SIGN UP"
        labelSignUp.font = UIFont.systemFont(ofSize: 15)
        labelSignUp.textColor = .gray
        labelSignUp.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelSignUp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelSignUp.topAnchor.constraint(equalTo: logoGoogle.bottomAnchor, constant: 65),
            labelSignUp.widthAnchor.constraint(equalToConstant: 292),
            labelSignUp.heightAnchor.constraint(equalToConstant: 17)
        ])
    }
    
    @objc func goToNextScreen(){
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}


