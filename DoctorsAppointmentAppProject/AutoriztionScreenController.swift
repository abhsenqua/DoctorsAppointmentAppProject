//
//  AutoriztionScreenController.swift
//  DoctorsAppointmentAppProject
//
//  Created by Альберт Бахитов on 20.09.2025.
//

import UIKit

class AutoriztionScreenController: UIViewController {
    private let build = ViewBuilder.shared
    private var contentView = UIView()
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "appСyan")
        
        setBannerImage()
        setContentView()
        setEmailTextView()
    }
    
    private func setBannerImage() {
        let bannerImage = build.bannerImage
        bannerImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerImage)
        bannerImage.image = .banner
        
        NSLayoutConstraint.activate([
            bannerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bannerImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                ])
    }
    
    private func setContentView() {
        contentView = build.contentView
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 500)
            ])
    }
    
    private func setEmailTextView() {
        let emailStack = build.getTextView(textField: emailTextField, placeholder: "Email Address")
        contentView.addSubview(emailStack)
        
        NSLayoutConstraint.activate([
            emailStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            emailStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35),
            emailStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35)
            ])
    }
    
}
