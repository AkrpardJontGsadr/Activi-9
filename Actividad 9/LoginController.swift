//
//  LoginController.swift
//  Actividad 9
//
//  Created by Alumno IDS on 06/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class LoginController:UIViewController
{
    var System:String? //global variable
    var User:String? //global variable
    var Result:String? //global variable
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 90/255 , green: 90/255, blue: 90/255, alpha: 1)
        setupObj() //insert object into view
    }
    
    let RockButton : UIButton = //create button rock
    {
        let RockButton = UIButton(type: .system)
        RockButton.setTitle("Rock", for: .normal)
        RockButton.translatesAutoresizingMaskIntoConstraints = false
        RockButton.addTarget(self, action: #selector(buttonRock(sender:)), for: .touchUpInside) //add actions
        RockButton.backgroundColor = UIColor(red: 102/255, green: 51/255, blue: 0/255, alpha: 1)
        RockButton.setTitleColor(.white, for: .normal)
      
        return RockButton
        
    }()
    let PaperButton : UIButton =    //create button paper
    {
        let PaperButton = UIButton(type: .system)
        PaperButton.setTitle("Scissors", for: .normal)
        PaperButton.translatesAutoresizingMaskIntoConstraints = false
        PaperButton.addTarget(self, action: #selector(buttonPaper(sender:)), for: .touchUpInside) //add actions
        PaperButton.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 220/255, alpha: 1)
        PaperButton.setTitleColor(.black, for: .normal)
        return PaperButton
        
    }()

    let ScissorsButton : UIButton =  //create button scissors
    {
        let ScissorsButton = UIButton(type: .system)
        ScissorsButton.setTitle("Paper", for: .normal)
        ScissorsButton.translatesAutoresizingMaskIntoConstraints = false
        ScissorsButton.addTarget(self, action: #selector(buttonScissors(sender:)), for: .touchUpInside) //add actions
        ScissorsButton.backgroundColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1)
        ScissorsButton.setTitleColor(.white, for: .normal)
        return ScissorsButton
        
    }()

    func matchCalcule(option:Int)   //get result about the game rock, paper and scissors
    {
        let Random = Int(arc4random_uniform(3))
       
        //piedra, tijera, papel
        
        switch option{
        case 0:
            if Random == option
            {
                System = "Rock"
                User = "Rock"
                Result = "Draw"
                print("Empate")
            }else if Random == 1
            {
                System = "Scissors"
                User = "Rock"
                Result = "User Winner"
                print("Winner")
            }else if Random == 2
            {
                System = "Paper"
                User = "Rock"
                Result = "System Winner"
                print("Losser")
            }
            
            
        case 1:
            if Random == option
            {
                System = "Scissors"
                User = "Scissors"
                Result = "Draw"
                print("Draw")
            }else if Random == 0
            {
                System = "Rock"
                User = "Scissors"
                Result = "System Winner"
                print("Losser")
            }else if Random == 2
            {
                System = "Paper"
                User = "Scissors"
                Result = "User Winner"
                print("Winner")
            }
            
        case 2:
            if Random == option
            {
                System = "Paper"
                User = "Paper"
                Result = "Draw"
                print("Empate")
            }else if Random == 1
            {
                System = "Scissors"
                User = "Paper"
                Result = "System Winner"
                print("Losser")
            }else if Random == 0
            {
                System = "Rock"
                User = "Paper"
                Result = "User Winner"
                print("Winner")
            }
            
        default:
            
            print("Option invalite")
            
        }

        
    }
    
    func buttonRock(sender: UIButton!) { //Action from button
             let changeviewcontroller: ChangeViewController = ChangeViewController() ///instance another UIViewController from file .swift
        matchCalcule(option: 0)
        changeviewcontroller.SystemLabel.text = "System: "+System! //insert values in label from another UIViewController
        changeviewcontroller.YouLabel.text = "You: " + User!
        changeviewcontroller.WinnerLabel.text = "Result: " + Result!
         present(changeviewcontroller, animated: true, completion: nil)
     
    }
    func buttonPaper(sender: UIButton!) { //Action from button
        let changeviewcontroller: ChangeViewController = ChangeViewController() ///instance another UIViewController from file .swift
        matchCalcule(option: 1)
        changeviewcontroller.SystemLabel.text = "System: "+System! //insert values in label from another UIViewController

        changeviewcontroller.YouLabel.text = "You: " + User!
        changeviewcontroller.WinnerLabel.text = "Result: " + Result!
        present(changeviewcontroller, animated: true, completion: nil)
    }
    func buttonScissors(sender: UIButton!) { //Action from button
        let changeviewcontroller: ChangeViewController = ChangeViewController() ///instance another UIViewController from file .swift
        matchCalcule(option: 2)
        changeviewcontroller.SystemLabel.text = "System: "+System! //insert values in label from another UIViewController

        changeviewcontroller.YouLabel.text = "You: " + User!
        changeviewcontroller.WinnerLabel.text = "Result: " + Result!
        present(changeviewcontroller, animated: true, completion: nil)
    }
    func setupObj()
    {
        view.addSubview(RockButton)
        view.addSubview(PaperButton)
        view.addSubview(ScissorsButton)
        RockButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        RockButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        RockButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        RockButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3).isActive = true
        //Set width with func multiplier
        
        PaperButton.topAnchor.constraint(equalTo: RockButton.bottomAnchor,constant: 15).isActive = true
        PaperButton.widthAnchor.constraint(equalTo: RockButton.widthAnchor).isActive = true
        PaperButton.heightAnchor.constraint(equalTo: RockButton.heightAnchor).isActive = true
        PaperButton.leftAnchor.constraint(equalTo: RockButton.leftAnchor).isActive = true
        
        ScissorsButton.topAnchor.constraint(equalTo: PaperButton.bottomAnchor,constant: 15).isActive = true
        ScissorsButton.widthAnchor.constraint(equalTo: PaperButton.widthAnchor).isActive = true
        ScissorsButton.heightAnchor.constraint(equalTo: PaperButton.heightAnchor).isActive = true
        ScissorsButton.leftAnchor.constraint(equalTo: PaperButton.leftAnchor).isActive = true
    }
    

}
