//
//  tempretureConversion.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/18/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import Foundation

class tempretureConversion {
    
    static let tempretureConverter = tempretureConversion()
    private init(){}
    
    func celsiusToFahrenheit(tempreture: Float32) -> Float32{
        return (tempreture * 1.8) + 32
    }
    
    func celsiusToKelvin(tempreture: Float32) -> Float32{
        return tempreture + 273.15
    }
    
    func fahrenheitToCelsius(tempreture: Float32) -> Float32{
        return (tempreture - 32) / 1.8
    }
    
    func kelvinToCelsius(tempreture: Float32) -> Float32{
        return tempreture - 273.15
    }
}
