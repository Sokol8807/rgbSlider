//
//  ViewController.swift
//  rgbSlider
//
//  Created by Ilya Sokolov on 06.08.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet
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
    // MARK: - Private Properties
    private var red = CGFloat()
    private var green = CGFloat()
    private var blue = CGFloat()
    
    // MARK: - IBAction
    @IBAction func moveRedSlider() {
        red = CGFloat(redSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        redValueLabel.text = String(redSlider.value)
        redValueLabel.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func moveGreenSlider() {
        green = CGFloat(greenSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        greenValueLabel.text = String(round(greenSlider.value * 100) / 100)
    }
 
    @IBAction func moveBlueSlider() {
        blue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        blueValueLabel.text = String(blueSlider.value)
        blueValueLabel.text = String(round(blueSlider.value * 100) / 100)
    }
    
   // MARK: - Privar Methods
    private func layoutSetup() {
        colorView.layer.cornerRadius = 10
        redValueLabel.text = "0.00"
        greenValueLabel.text = "0.00"
        blueValueLabel.text = "0.00"
    }

}

