//
//  SecondViewController.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/16/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import UIKit

class TempretureViewController: UIViewController {
    
    //text fileds
    @IBOutlet weak var txt_celsius: UITextField!
    @IBOutlet weak var txt_Fahrenheit: UITextField!
    @IBOutlet weak var txt_kelvin: UITextField!
    
    // tempreture converter object
    let tempretureConverter = tempretureConversion.tempretureConverter
    
    enum tempretureType {
        case celsius, fahrenhiet, kelvin
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //clear all text fields
    func clearFields(){
        txt_celsius.text = ""
        txt_Fahrenheit.text = ""
        txt_kelvin.text = ""
    }
    
    //setting text fields
    func setFields(tempreture: Float32, type: tempretureType){
        if type != .celsius {
            txt_celsius.text = String(tempreture)
        }
        if type != .fahrenhiet {
            txt_Fahrenheit.text = String(tempretureConverter.celsiusToFahrenheit(tempreture: tempreture))
        }
        if type != .kelvin {
            txt_kelvin.text = String(tempretureConverter.celsiusToKelvin(tempreture: tempreture))
        }
    }
    
    //convert temp from celsius to others
    @IBAction func convertCelsius(_ sender: UITextField) {
        if txt_celsius != nil && txt_celsius.text != "" {
            let celsiusValue = Float32(txt_celsius.text!)
            setFields(tempreture: celsiusValue!, type: .celsius)
        }else{
            clearFields()
        }
    }
    
    //convert temp from fahrenheit to others
    @IBAction func convertFahrenheit(_ sender: UITextField) {
        if txt_Fahrenheit != nil && txt_Fahrenheit.text != "" {
            let fahrenheitValue = Float32(txt_Fahrenheit.text!)
            let celsiusValue = tempretureConverter.fahrenheitToCelsius(tempreture: fahrenheitValue!)
            setFields(tempreture: celsiusValue, type: .fahrenhiet)
        }else{
            clearFields()
        }
    }
    
    //convert temp from kelvin to others
    @IBAction func convertKelvin(_ sender: UITextField) {
        if txt_kelvin != nil && txt_kelvin.text != "" {
            let kelvinValue = Float32(txt_kelvin.text!)
            let celsiusValue = tempretureConverter.kelvinToCelsius(tempreture: kelvinValue!)
            setFields(tempreture: celsiusValue, type: .kelvin)
        }else{
            clearFields()
        }
    }
    
    @IBAction func clearCelsius(_ sender: UITextField) {
        txt_celsius.text = ""
    }
    
    @IBAction func clearFahrenheit(_ sender: UITextField) {
        txt_Fahrenheit.text = ""
    }
    
    @IBAction func clearKelvin(_ sender: UITextField) {
        txt_kelvin.text = ""
    }
    
}

