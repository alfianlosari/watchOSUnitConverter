//
//  MainUnit.swift
//  UnitCoverter WatchKit Extension
//
//  Created by Alfian Losari on 14/09/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import Foundation

enum MainUnit: String, CustomStringConvertible, CaseIterable, Identifiable {
    
    var id: String {
        self.rawValue
    }
    case area
    case weight
    
    var description: String {
        switch self {
        case .area: return "Area"
        case .weight: return "Weight"
        }
    }
    
    var units: [Dimension] {
        switch self {
        case .area: return [UnitArea.squareMeters, UnitArea.squareKilometers, UnitArea.squareCentimeters, UnitArea.hectares, UnitArea.squareFeet, UnitArea.squareInches, UnitArea.squareMiles, UnitArea.acres]
        case .weight: return [UnitMass.kilograms, UnitMass.grams]
        }
    }
}
