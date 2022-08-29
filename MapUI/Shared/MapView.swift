//
//  ContentView.swift
//  Shared
//
//  Created by Bryan Danquah🖤 on 06/07/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemYellow))
            .onAppear(){
                viewModel.checkIfLlocationServiceIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

