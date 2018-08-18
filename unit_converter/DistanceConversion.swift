//
//  DistanceConversion.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/18/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import Foundation

class DistanceConversion{
   
    func metreToFoot(distance: Float32)-> Float32{
        return distance / 0.3
    }
    
    func metreToYard(distance: Float32) -> Float32 {
        return distance / 0.9
    }
    
    func metreToKm(distance: Float32) -> Float32 {
        return distance * 0.001
    }
    
    func  metreToMile(distance: Float32) -> Float32 {
        return distance / 1600
    }
    
    func footToMetre(distance: Float32) -> Float32 {
        return distance * 0.3
    }
    
    func yardToMetre(distance: Float32) -> Float32 {
        return distance * 0.9
    }
    
    func kmToMetre(distance: Float32) -> Float32 {
        return distance * 1000
    }
    
    func mileToMetre(distance: Float32) -> Float32 {
        return distance * 1600
    }
}
