//
//  DistanceViewController.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/17/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var txt_metre: UITextField!
    @IBOutlet weak var txt_foot: UITextField!
    @IBOutlet weak var txt_yard: UITextField!
    @IBOutlet weak var txt_killometre: UITextField!
    @IBOutlet weak var txt_mile: UITextField!
    
    let distanceConverter = DistanceConversion()
    
    enum distanceType {
        case metre, foot, yard, km, mile
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //clear all filelds
    func clearFields(){
        txt_foot.text = ""
        txt_metre.text = ""
        txt_yard.text = ""
        txt_killometre.text = ""
        txt_mile.text = ""
    }
    
    //Setting distance values to text fields
    func setFields(metreValue: Float32, type: distanceType){
        if type != .metre {
            txt_metre.text = String(metreValue)
        }
        if type != .foot {
            txt_foot.text = String(distanceConverter.metreToFoot(distance: metreValue))
        }
        if type != .yard {
            txt_yard.text = String(distanceConverter.metreToYard(distance: metreValue))
        }
        if type != .km {
            txt_killometre.text = String(distanceConverter.metreToKm(distance: metreValue))
        }
        if type != .mile {
            txt_mile.text = String(distanceConverter.metreToMile(distance: metreValue))
        }

    }
    
    //convert distance when typing in metre
    @IBAction func contertMetre(_ sender: UITextField) {
        if txt_metre.text != nil && txt_metre.text != ""{
            let metreValue = Float32(txt_metre.text!)
            setFields(metreValue: metreValue!, type: .metre)
        }else{
            clearFields()
        }
    }
    
    //convert distance when typing in foot
    @IBAction func convertFoot(_ sender: UITextField) {
        if txt_foot.text != nil && txt_foot.text != ""{
            let footValue = Float32(txt_foot.text!)
            let metreValue = distanceConverter.footToMetre(distance: footValue!)
            setFields(metreValue: metreValue, type: .foot)
        }else{
            clearFields()
        }
    }
    
    //convert distance when typing in yard
    @IBAction func convertYard(_ sender: UITextField) {
        if txt_yard.text != nil && txt_yard.text != ""{
            let yardValue = Float32(txt_yard.text!)
            let metreValue = distanceConverter.yardToMetre(distance: yardValue!)
            setFields(metreValue: metreValue, type: .yard)
        }else{
            clearFields()
        }
    }
    
    //convert distance when typing in killometre
    @IBAction func convertKm(_ sender: UITextField) {
        if txt_killometre.text != nil && txt_killometre.text != ""{
            let kmValue = Float32(txt_killometre.text!)
            let metreValue = distanceConverter.kmToMetre(distance: kmValue!)
            setFields(metreValue: metreValue, type: .km)
        }else{
            clearFields()
        }
    }
    
    //convert distance when typing in killometre
    @IBAction func convertMile(_ sender: UITextField) {
        if txt_mile.text != nil && txt_mile.text != ""{
            let mileValue = Float32(txt_mile.text!)
            let metreValue = distanceConverter.mileToMetre(distance: mileValue!)
            setFields(metreValue: metreValue, type: .mile)
        }else{
            clearFields()
        }
    }
    
    @IBAction func clearMetre(_ sender: UITextField) {
        txt_metre.text = ""
    }
    
    @IBAction func clearFoot(_ sender: UITextField) {
        txt_foot.text = ""
    }
    
    @IBAction func clearYard(_ sender: UITextField) {
        txt_yard.text = ""
    }
    
    @IBAction func clearKillometre(_ sender: UITextField) {
        txt_killometre.text = ""
    }
    
    @IBAction func clearMile(_ sender: UITextField) {
        txt_mile.text = ""
    }
    
    
    
}
