//
//  ViewController.swift
//  App4
//
//  Created by ENRIQUE VERGARA  on 9/26/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var switchVista: UISwitch!
    
    @IBOutlet var vista: UIView!
    
    @IBOutlet weak var texto: UILabel!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var switchGreen: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var RedSwitch: UISwitch!
    
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initComponents()
    }

    @IBAction func changeColor(_ sender: Any) {
        self.updateColor()
    }
    
    func updateColor() {
        if self.switchVista.isOn {
            self.vista.backgroundColor =
                UIColor(
                    red: CGFloat(self.redSlider.value)/255,
                    green: CGFloat(self.greenSlider.value)/255,
                    blue: CGFloat(self.blueSlider.value)/255,
                    alpha: 1.0
            )
        } else {
            self.imageView.backgroundColor =
                UIColor(
                    red: CGFloat(self.redSlider.value)/255,
                    green: CGFloat(self.greenSlider.value)/255,
                    blue: CGFloat(self.blueSlider.value)/255,
                    alpha: 1.0
            )
        }
        
    }
    
    func initComponents() {
        
        self.btn.backgroundColor = .black
        self.btn.setTitleColor(.white, for: .normal)
        self.btn.layer.borderWidth = 3
        self.btn.layer.cornerRadius = 8.5
        
        self.blueSlider.value = Float(0)
        self.greenSlider.value = Float(0)
        self.redSlider.value = Float(0)
        
        self.greenSlider.isEnabled = false
        self.blueSlider.isEnabled = false
        self.redSlider.isEnabled = false
        
        self.switchGreen.isOn = false
        self.RedSwitch.isOn = false
        self.blueSwitch.isOn = false
        
        self.updateColor()
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        self.initComponents()
    }
    
    @IBAction func lockGreen(_ sender: UISwitch) {
        sender.setOn(!sender.isOn, animated: true)
        self.greenSlider.isEnabled = sender.isOn
    }
    
    @IBAction func lockBlue(_ sender: UISwitch) {
        sender.setOn(!sender.isOn, animated: true)
        self.blueSlider.isEnabled = sender.isOn
    }
    @IBAction func lockRed(_ sender: UISwitch) {
        sender.setOn(!sender.isOn, animated: true)
        self.redSlider.isEnabled = sender.isOn
    }
    
}

