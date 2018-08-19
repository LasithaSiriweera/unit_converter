//
//  SpeedViewController.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/17/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
    
    //text fields
    @IBOutlet weak var txt_metrePerSec: UITextField!
    @IBOutlet weak var txt_feetPerMin: UITextField!
    @IBOutlet weak var txt_kmPerHour: UITextField!
    @IBOutlet weak var txt_milesPerHour: UITextField!
    
    //speed converter object
    let speedConverter = SpeedConversion.speedConverter
    
    enum speedType {
        case mps, fpm, kmh, mph
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //clear test fields
    func clearFields(){
        txt_metrePerSec.text = ""
        txt_feetPerMin.text = ""
        txt_kmPerHour.text = ""
        txt_milesPerHour.text = ""
    }
    
    //setting all text fields
    func setFields(metrePerSecValue: Float32, type: speedType) {
        if type != .mps {
            txt_metrePerSec.text = String(metrePerSecValue)
        }
        if type != .fpm {
            txt_feetPerMin.text = String(speedConverter.metrePerSecToFeetToMin(speed: metrePerSecValue))
        }
        if type != .kmh {
            txt_kmPerHour.text = String(speedConverter.metrePerSecToKmPerHour(speed: metrePerSecValue))
        }
        if type != .mph {
            txt_milesPerHour.text = String(speedConverter.metrePerSecToMilePerHour(speed: metrePerSecValue))
        }
    }
    
    //convert speed from metre per sec to others
    @IBAction func convertMetrePerSec(_ sender: UITextField) {
        if txt_metrePerSec.text != nil && txt_metrePerSec.text != "" {
            let metrePerSecValue = Float32(txt_metrePerSec.text!)
            setFields(metrePerSecValue: metrePerSecValue!, type: .mps)
        }else{
            clearFields()
        }
    }
    
    //convert speed from feet per min to others
    @IBAction func convertFeetPerMin(_ sender: UITextField) {
        if txt_feetPerMin.text != nil && txt_feetPerMin.text != "" {
            let feetPerMinValue = Float32(txt_feetPerMin.text!)
            let metrePerSecValue = speedConverter.feetPerMinToMetrePerSec(speed: feetPerMinValue!)
            setFields(metrePerSecValue: metrePerSecValue, type: .fpm)
        }else{
            clearFields()
        }
    }
    
    //convert speed from km per hour to others
    @IBAction func convertKmPerHour(_ sender: UITextField) {
        if txt_kmPerHour.text != nil && txt_kmPerHour.text != "" {
            let kmPerHourValue = Float32(txt_kmPerHour.text!)
            let metrePerSecValue = speedConverter.kmPerHourToMetrePerSec(speed: kmPerHourValue!)
            setFields(metrePerSecValue: metrePerSecValue, type: .kmh)
        }else{
            clearFields()
        }
    }
    
    //convert speed from miles per hour to others
    @IBAction func convertMilesPerHour(_ sender: UITextField) {
        if txt_milesPerHour.text != nil && txt_milesPerHour.text != "" {
            let milesPerHourValue = Float32(txt_milesPerHour.text!)
            let metrePerSecValue = speedConverter.milePerHourToMetrePerSec(speed: milesPerHourValue!)
            setFields(metrePerSecValue: metrePerSecValue, type: .mph)
        }else{
            clearFields()
        }
    }
    
    @IBAction func clearMeterPerSec(_ sender: UITextField) {
        txt_metrePerSec.text = ""
    }
    
    @IBAction func clearFeetPerMin(_ sender: UITextField) {
        txt_feetPerMin.text = ""
    }
    
    @IBAction func clearKmPerHour(_ sender: UITextField) {
        txt_kmPerHour.text = ""
    }
    
    @IBAction func clearMilesPerHour(_ sender: UITextField) {
        txt_milesPerHour.text = ""
    }
    
    
}
