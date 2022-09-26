//
//  ContentView.swift
//  SwiftWeatherKitandCharts
//
//  Created by Chelsea Hannah on 9/26/22.
//

import SwiftUI
import Charts
import WeatherKit
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    @Published var currentLocation: CLLocation?
    
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLHeadingFilterNone
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
