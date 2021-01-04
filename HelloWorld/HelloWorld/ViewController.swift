//
//  ViewController.swift
//  HelloWorld
//
//  Created by 모현철 on 2018. 12. 28..
//  Copyright © 2018년 hcmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ps1 = PlanetarySystem(name1: "Solar system", planets1: [Planet]() )
    let mercury = Planet(name : "Mercury", description : "Hot")
    let venus = Planet(name : "Venus", description : "Cloudy")
    let earth = Planet(name : "Earth", description : "Here")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ps1.planets.append(mercury)
        ps1.planets.append(venus)
        ps1.planets.append(earth)
        
        start()

    }

    func start(){
        let a = 1
        let b = 1.5
        print("test for int \(a)")
        print("test for int \(b)")
        myTextView.text = "Hello \(ps1.name) and \(ps1.planets.count)"
        let ret: String = response(q: "What's your name?")
        print(ret)
//        myTextField.text = "What's your name?"
    }
    
    func response(q: String) -> String{
        myLabel.text = q
        return "good"
    }
    
    @IBAction func changeRed(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func changeWhite(_ sender: Any) {
        view.backgroundColor = UIColor.white

    }
    @IBAction func myButton(_ sender: UIButton) {
        let name = myTextField.text!
        myLabel.text = "Nice to meet you \(name)"
    }
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myTextField: UITextField!
    
}

