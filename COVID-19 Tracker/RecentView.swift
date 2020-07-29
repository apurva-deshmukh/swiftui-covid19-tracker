//
//  RecentView.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/29/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = COVIDFetchRequest()
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                TotalDataView(totalData: covidFetch.totalData)
                
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        CountryDataRowView(countryData: countryData)
                    }
                }
                
            }//End of VStack
        }//End of Navigation View
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
