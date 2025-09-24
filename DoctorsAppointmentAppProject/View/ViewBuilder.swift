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
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 50
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return view
    }()
    
    func getTextView(textField: UITextField, placeholder: String, isPassword: Bool = false) -> UIStackView {
        var placeholderText: UIView {
            let text = UILabel()
            text.translatesAutoresizingMaskIntoConstraints = false
            text.text = placeholder
            text.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            text.textColor = .gray
            
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(text)
            view.heightAnchor.constraint(equalToConstant: 15).isActive = true
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19).isActive = true
            return view
        }
        
       lazy var fieldView : UIView = {
           let view = UIView()
           textField.translatesAutoresizingMaskIntoConstraints = false
           view.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(textField)
           view.backgroundColor = .appSnow
           view.layer.cornerRadius = 15
           
           NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: 52),
            textField.topAnchor.constraint(equalTo: view.topAnchor),
            textField.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
           ])
            
            return view
        }()
        
        lazy var hStack: UIStackView = {
            let stack  = UIStackView()
            stack.axis = .vertical
            stack.spacing = 7
            stack.translatesAutoresizingMaskIntoConstraints = false
            
            stack.addArrangedSubview(placeholderText)
            stack.addArrangedSubview(fieldView)
            
            return stack
            
        }()
        
        return hStack
    }
}
