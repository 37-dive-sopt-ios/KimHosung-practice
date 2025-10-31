//
//  LoginViewController.swift
//  sopt-37th-01Seminar
//
//  Created by 김호성 on 2025.10.11.
//

import SnapKit

import UIKit

final class LoginViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "동네라서 가능한 모든 것 당근에서 가까운 이웃과 함께해요."
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        label.textColor = UIColor(rgb: 0x000000)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.backgroundColor = UIColor(rgb: 0xDDDEE3)
        textField.layer.cornerRadius = 3
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.backgroundColor = UIColor(rgb: 0xDDDEE3)
        textField.layer.cornerRadius = 3
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.isSecureTextEntry = true
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인하기", for: .normal)
        button.backgroundColor = UIColor(rgb: 0xFF6F0F)
        button.setTitleColor(UIColor(rgb: 0xFFFFFF), for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .white
        
        [
            titleLabel,
            idTextField,
            passwordTextField,
            loginButton,
        ].forEach({ [weak self] in
            guard let self else { return }
//            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        })
        
        titleLabel.snp.makeConstraints({
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(163)
        })
        idTextField.snp.makeConstraints({
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(71)
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        })
        passwordTextField.snp.makeConstraints({
            $0.centerX.equalToSuperview()
            $0.top.equalTo(idTextField.snp.bottom).offset(6)
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        })
        loginButton.snp.makeConstraints({
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordTextField.snp.bottom).offset(35)
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(57)
        })
        /*
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 163),
            
            idTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 71),
            idTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            idTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            idTextField.heightAnchor.constraint(equalToConstant: 52),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 6),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 52),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 57),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
        ])
         */
    }
    
    @objc
    private func loginButtonDidTap() {
        presentToWelcomeVC()
//        pushToWelcomeVC()
    }
    
    private func presentToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        welcomeViewController.modalPresentationStyle = .fullScreen
        present(welcomeViewController, animated: true)
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}

#Preview {
    LoginViewController()
}
