//
//  ChangeViewController.swift
//  Actividad 9
//
//  Created by Alumno IDS on 08/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ChangeViewController : UIViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorGradiet()
        setupObj()
    }
    func colorGradiet(){
       let gradientBack = CAGradientLayer()
        gradientBack.frame = self.view.bounds
        gradientBack.colors = [UIColor.white.cgColor, UIColor.blue.cgColor]
        self.view.layer.addSublayer(gradientBack)

    }
    
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    let SystemLabel : UILabel = {
        let Label = UILabel()
        Label.backgroundColor = .white
        Label.translatesAutoresizingMaskIntoConstraints = false
        return Label
    }()
    let YouLabel : UILabel = {
        let Label = UILabel()
        Label.backgroundColor = .white
        Label.translatesAutoresizingMaskIntoConstraints = false
        return Label
    }()
    let WinnerLabel: UILabel = {
        let Label = UILabel()
        Label.backgroundColor = .white
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.textAlignment = .center
        return Label
    }()

    let BackButton : UIButton =
    {
        let BackButton = UIButton(type: .system)
        BackButton.setTitle("Play Again", for: .normal)
        BackButton.translatesAutoresizingMaskIntoConstraints = false
        BackButton.addTarget(self, action: #selector(buttonRock(sender:)), for: .touchUpInside)
        BackButton.backgroundColor = UIColor(red: 242/255, green: 10/255, blue: 0/255, alpha: 1)
        BackButton.setTitleColor(.white, for: .normal)
        return BackButton
        
    }()
    
    func buttonRock(sender: UIButton!) { //Action from button
        let logincontroller: LoginController = LoginController() //return LoginController
        present(logincontroller, animated: true, completion: nil)
    }
    
    func setupObj()
    {
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(SystemLabel)
        inputContainerView.addSubview(YouLabel)
        inputContainerView.addSubview(WinnerLabel)
        view.addSubview(BackButton)
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        SystemLabel.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        SystemLabel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        SystemLabel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        SystemLabel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        YouLabel.topAnchor.constraint(equalTo: SystemLabel.bottomAnchor).isActive = true
        YouLabel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        YouLabel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        YouLabel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true

        
        WinnerLabel.topAnchor.constraint(equalTo: YouLabel.bottomAnchor).isActive = true
        WinnerLabel.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        WinnerLabel.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        WinnerLabel.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true

        
        
        BackButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        BackButton.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 100).isActive = true
        BackButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        BackButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}
