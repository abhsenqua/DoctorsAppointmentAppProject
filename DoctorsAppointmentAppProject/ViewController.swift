//
//  ViewController.swift
//  DoctorsAppointmentAppProject
//
//  Created by Альберт Бахитов on 20.09.2025.
//

import UIKit

class ViewController: UIViewController {

    private let build = ViewBuilder.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "appСyan")
        
        setBannerImage()
    }
    
    private func setBannerImage() {
        let bannerImage = build.bannerImage
        view.addSubview(bannerImage)
        bannerImage.image = .banner
        
        NSLayoutConstraint.activate([
            bannerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bannerImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
                ])
    
    }
}

