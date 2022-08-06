//
//  ViewController.swift
//  rgbSlider
//
//  Created by Ilya Sokolov on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSetup()

        
    }

    private var red = CGFloat()
    private var green = CGFloat()
    private var blue = CGFloat()
    
    
    private let alphaColorView = CGFloat(1)
    
    @IBAction func moveRedSlider() {
        red = CGFloat(redSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaColorView)
        redValueLabel.text = String(redSlider.value)
        redValueLabel.text = String(Float(round(redSlider.value * 100) / 100))
        
    }
    @IBAction func moveGreenSlider() {
        green = CGFloat(greenSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaColorView)
        greenValueLabel.text = String(Float(round(greenSlider.value * 100) / 100))
        
    }
 
    @IBAction func moveBlueSlider() {
        blue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaColorView)
        blueValueLabel.text = String(blueSlider.value)
        blueValueLabel.text = String(Float(round(blueSlider.value * 100) / 100))
    }
    
    private func layoutSetup() {
        colorView.layer.cornerRadius = 5
        redValueLabel.text = "0.00"
        greenValueLabel.text = "0.00"
        blueValueLabel.text = "0.00"
    }

}

