//
//  LoginViewController.swift
//  sopt-37th-01Seminar
//
//  Created by 김호성 on 2025.10.11.
//

import UIKit

final class LoginViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 70, y: 163, width: view.bounds.width - 140, height: 80))
        label.text = "동네라서 가능한 모든 것 당근에서 가까운 이웃과 함께해요."
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        label.textColor = UIColor(rgb: 0x000000)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 276, width: view.bounds.width - 40, height: 52))
        textField.placeholder = "아이디"
        textField.backgroundColor = UIColor(rgb: 0xDDDEE3)
        textField.layer.cornerRadius = 3
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 335, width: view.bounds.width - 40, height: 52))
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
        let button = UIButton(frame: CGRect(x: 20, y: 422, width: self.view.bounds.width - 40, height: 57))
        button.setTitle("로그인하기", for: .normal)
        button.backgroundColor = UIColor(rgb: 0xFF6F0F)
        button.setTitleColor(UIColor(rgb: 0xFFFFFF), for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    lazy var testPickerView: UISlider = {
        let slider = UISlider(frame: CGRect(x: 20, y: 500, width: self.view.bounds.width - 40, height: 64))
        slider.thumbTintColor = UIColor(rgb: 0xFF0000)
        slider.tintColor = UIColor(rgb: 0x00FF00)
        return slider
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(idTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(testPickerView)
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
