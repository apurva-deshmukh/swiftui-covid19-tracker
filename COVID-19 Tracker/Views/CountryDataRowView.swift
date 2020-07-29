//
//  CountryDataRowView.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/29/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        HStack {
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 110, alignment: .leading)
            Spacer()
            Text(countryData.confirmed.formatNumber())
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            Spacer()
            Text(countryData.deaths.formatNumber())
                .font(.subheadline)
                .foregroundColor(.red)
                .frame(height: 40, alignment: .center)
                .padding(.leading, 5)
            Spacer()
            Text(countryData.recovered.formatNumber())
                .font(.subheadline)
                .foregroundColor(.green)
                .frame(height: 40, alignment: .center)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
