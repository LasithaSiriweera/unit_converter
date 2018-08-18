//
//  SpeedConversion.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/18/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import Foundation

class SpeedConversion{
    
    func metrePerSecToFeetToMin(speed: Float) -> Float {
        return speed * 0.3 / 60
    }
    
    func metrePerSecToKmPerHour(speed: Float) -> Float {
        return speed * 1000 / 3600
    }
    
    func metrePerSecToMilePerHour(speed: Float) -> Float {
        return speed * 1600 / 3600
    }
    
    func feetPerMinToMetrePerSec(speed: Float) -> Float {
        return speed * 0.3 / 60
    }
    
    func kmPerHourToMetrePerSec(speed: Float) -> Float {
        return speed * 1000 / 3600
    }
    
    func milePerHourToMetrePerSec(speed: Float) -> Float {
        return speed * 1600 / 3600
    }
}
