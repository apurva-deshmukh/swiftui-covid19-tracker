//
//  MapContainerView.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/29/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = COVIDFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetch.allCountries)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
