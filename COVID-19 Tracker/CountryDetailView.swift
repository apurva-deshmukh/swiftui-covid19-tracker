//
//  CountryDetailView.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/29/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        VStack {
            VStack {
                CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top)
                CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Death %", color: .red)
                CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered %", color: .green)
            }
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8.0)
            .padding()
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
