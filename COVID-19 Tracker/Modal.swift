//
//  Modal.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/28/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import Foundation

struct TotalData {
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}
