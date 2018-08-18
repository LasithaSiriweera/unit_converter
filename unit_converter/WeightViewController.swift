//
//  FirstViewController.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/16/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {
    
    //text fields
    @IBOutlet weak var txt_gram: UITextField!
    @IBOutlet weak var txt_killogram: UITextField!
    @IBOutlet weak var txt_pound: UITextField!
    @IBOutlet weak var txt_ounce: UITextField!
    
    // weight converter class
    let weightConverter = WeightConversion()

    enum weightType {
        case gram, killogram, pound, ounce
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //set out values to text fields
    func setFields(gramValue: Float32, type: weightType){
        if type != .gram {
          txt_gram.text = String(gramValue)
        }
        if type != .killogram {
            txt_killogram.text = String(weightConverter.gramToKg(weight: gramValue))
        }
        if type != .pound {
            txt_pound.text = String(weightConverter.gramToPound(weight: gramValue))
        }
        if type != .ounce {
           txt_ounce.text = String(weightConverter.gramToOunce(weight: gramValue))
        }
    }
    
    //clear all text fields
    func clearFields(){
        txt_gram.text = ""
        txt_killogram.text = ""
        txt_pound.text = ""
        txt_ounce.text = ""
    }

    //convert weight when typing on gram text field
    @IBAction func convertGram(_ sender: UITextField) {
        if txt_gram.text != nil && txt_gram.text != "" {
            let gramValue = Float32(txt_gram.text!)
            setFields(gramValue: gramValue!, type: .gram)
        }else{
            clearFields()
        }
    }
    
    //convert weight when typing in killogaram text
    @IBAction func convertKg(_ sender: UITextField) {
        if txt_killogram.text != nil && txt_killogram.text != "" {
            let kgValue = Float32(txt_killogram.text!)
            let gramValue = weightConverter.KgToGram(weight: kgValue!)
            setFields(gramValue: gramValue, type: .killogram)
        }else{
            clearFields()
        }
    }
    
    //convert weight when typing in pound text
    @IBAction func convertPound(_ sender: UITextField) {
        if txt_pound.text != nil && txt_pound.text != "" {
            let poundValue = Float32(txt_pound.text!)
            let gramValue = weightConverter.PoundToGram(weight: poundValue!)
            setFields(gramValue: gramValue, type: .pound)
        }else{
            clearFields()
        }
    }
    
    //convert weight when typing in ounce text
    @IBAction func convertOunce(_ sender: UITextField) {
        if txt_ounce.text != nil && txt_ounce.text != "" {
            let ounceValue = Float32(txt_ounce.text!)
            let gramValue = weightConverter.OunceToGram(weight: ounceValue!)
            setFields(gramValue: gramValue, type: .ounce)
        }else{
            clearFields()
        }
    }
    

    @IBAction func clearTxtGram(_ sender: UITextField) {
        txt_gram.text = ""
    }
    
    @IBAction func clearKg(_ sender: UITextField) {
        txt_killogram.text = ""
    }
    
    @IBAction func clearPound(_ sender: UITextField) {
        txt_pound.text = ""
    }
    
    @IBAction func clearOunce(_ sender: UITextField) {
        txt_ounce.text = ""
    }
    
}


