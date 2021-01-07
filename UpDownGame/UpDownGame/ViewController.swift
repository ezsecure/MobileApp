//
//  ViewController.swift
//  UpDownGame
//
//  Created by 모현철 on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
    }

    @IBAction func touchUpHitButton(_ sender: UIButton){
        print(slider.value)
    }
}

