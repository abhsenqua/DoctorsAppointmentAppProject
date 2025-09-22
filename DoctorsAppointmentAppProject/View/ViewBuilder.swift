//
//  ViewBuilder.swift
//  DoctorsAppointmentAppProject
//
//  Created by Альберт Бахитов on 22.09.2025.
//

import UIKit

class ViewBuilder {
    static let shared = ViewBuilder()
    private init() {
        
    }
    
    lazy var bannerImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 178).isActive = true
        image.heightAnchor.constraint(equalToConstant: 178).isActive = true
        return image
    }()
    
    
}
