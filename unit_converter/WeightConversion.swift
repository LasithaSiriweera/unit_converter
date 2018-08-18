//
//  WeightConversion.swift
//  unit_converter
//
//  Created by Lasitha Siriweera on 8/17/18.
//  Copyright © 2018 Lasitha Siriweera. All rights reserved.
//

import Foundation

class WeightConversion{
    

    func gramToKg(weight:Float32)->Float32{
        return weight * 0.001
    }
    
    func gramToPound(weight:Float32)->Float32{
        return weight * 0.00220462
    }
    
    func gramToOunce(weight:Float32)->Float32{
        return weight * 0.035274
    }
    
    func KgToGram(weight:Float32)->Float32{
        return weight * 1000
    }
    
    func PoundToGram(weight:Float32)->Float32{
        return weight * 453.592
    }
    
    func OunceToGram(weight:Float32)->Float32{
        return weight * 28.3495
    }
    

}
