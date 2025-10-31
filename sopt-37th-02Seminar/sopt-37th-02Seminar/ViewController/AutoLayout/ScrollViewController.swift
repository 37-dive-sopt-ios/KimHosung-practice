//
//  ScrollViewController.swift
//  sopt-37th-02Seminar
//
//  Created by 김호성 on 2025.10.18.
//

import SnapKit

import UIKit

class ScrollViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    
    lazy var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()

    private func setLayout() {
        view.backgroundColor = .white
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            // 이게모게
            $0.height.greaterThanOrEqualToSuperview().priority(.low) // contentView의 height가 scrollView의 height보다 크거나 같도록 설정합니다. 우선순위는 낮습니다.
        }
        
        redView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
        })
        orangeView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalToSuperview()
            $0.leading.equalTo(redView.snp.trailing)
            $0.trailing.equalToSuperview()
        })
        yellowView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalTo(redView.snp.bottom)
            $0.leading.equalToSuperview()
        })
        greenView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalTo(orangeView.snp.bottom)
            $0.leading.equalTo(yellowView.snp.trailing)
            $0.trailing.equalToSuperview()
        })
        blueView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalTo(yellowView.snp.bottom)
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
        })
        purpleView.snp.makeConstraints({
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.height.equalTo(300)
            $0.top.equalTo(greenView.snp.bottom)
            $0.leading.equalTo(blueView.snp.trailing)
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setLayout()
    }
    
}
