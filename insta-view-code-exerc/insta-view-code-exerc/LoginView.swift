//
//  LoginView.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import UIKit

class LoginView: UIView {
    let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let titleAttributes: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 14),
            .foregroundColor: UIColor.lightGray
        ]
        let attributedTitle = NSMutableAttributedString(string: "Don`t have an account? ", attributes: titleAttributes)
        
        let signUpAttributed: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 14),
            .foregroundColor: UIColor.systemBlue
        ]
        attributedTitle.append(NSAttributedString(string: "Sign up.", attributes: signUpAttributed))
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = InstragramPrimaryButton(type: .system)
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    let passwordTextField: UITextField = {
        let textField = InstagramTextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = InstagramTextField()
        textField.placeholder = "Email"
        
        return textField
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [emailTextField,
                                                       passwordTextField,
                                                       loginButton])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let logoContainerView = LogoContainerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: ViewCode {
    func buildViewHierarchy() {
        addSubview(logoContainerView)
        addSubview(stackView)
        addSubview(dontHaveAccountButton)
    }
    
    func addConstraints() {
        logoContainerView.anchor(top: topAnchor,
                                 leading: leadingAnchor,
                                 bottom: nil,
                                 trailing: trailingAnchor,
                                 size: CGSize(width: 0, height: 150))
        stackView.anchor(top: logoContainerView.bottomAnchor,
                         leading: leadingAnchor,
                         bottom: nil,
                         trailing: trailingAnchor,
                         padding: UIEdgeInsets(top: 40,
                                               left: 20,
                                               bottom: 0,
                                               right: 20),
                         size: CGSize(width: 0, height: 140))
        
        dontHaveAccountButton.anchor(top: nil,
                                     leading: leadingAnchor,
                                     bottom: safeAreaLayoutGuide.bottomAnchor,
                                     trailing: trailingAnchor,
                                     size: CGSize(width: 0, height: 50))
    }
    
    func additionalConfiguration() {
        backgroundColor = .white
    }
    
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let view: View
    
    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    func makeUIView(context: Context) -> View {
        return view
    }
    
    func updateUIView(_ uiView: View, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
#endif

struct ViewPreviews: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            LoginView()
        }
        .previewLayout(.sizeThatFits)
    }
}

