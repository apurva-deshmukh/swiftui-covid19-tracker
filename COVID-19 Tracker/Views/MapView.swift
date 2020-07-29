//
//  MapView.swift
//  COVID-19 Tracker
//
//  Created by Apurva Deshmukh on 7/29/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var countryData: [CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        var allAnnotations: [COVIDCaseAnnotation] = []
        for data in countryData {
            let title = data.country + "\nConfirmed: " + data.confirmed.formatNumber() + "\nDeaths: " + data.deaths.formatNumber()
            let coord = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            allAnnotations.append(COVIDCaseAnnotation(title: title, coordinate: coord))
        }
        
        uiView.annotations.forEach{ uiView.removeAnnotation($0) }
        uiView.addAnnotations(allAnnotations)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
    
}

class COVIDCaseAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String? , coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}

