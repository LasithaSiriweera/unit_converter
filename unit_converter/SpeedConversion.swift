//
//  SpeedConversion.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/18/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import Foundation

class SpeedConversion{
    
    func metrePerSecToFeetToMin(speed: Float32) -> Float32 {
        return speed * 196.85
    }
    
    func metrePerSecToKmPerHour(speed: Float32) -> Float32 {
        return speed * 3.6
    }
    
    func metrePerSecToMilePerHour(speed: Float32) -> Float32 {
        return speed * 2.23694
    }
    
    func feetPerMinToMetrePerSec(speed: Float32) -> Float32 {
        return speed * 0.00508
    }
    
    func kmPerHourToMetrePerSec(speed: Float32) -> Float32 {
        return speed * 0.277778
    }
    
    func milePerHourToMetrePerSec(speed: Float32) -> Float32 {
        return speed * 0.44704
    }
}
