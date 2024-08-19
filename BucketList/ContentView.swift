//
//  ContentView.swift
//  BucketList
//
//  Created by Yasseen Rouni on 8/19/24.
//

import MapKit
import SwiftUI


struct ContentView: View {
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.952583, longitude: -75.16522), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
    
    var body: some View {
        VStack {
            Map(position: $position)
                .onMapCameraChange { context in
                    print(context.region)
                }
    
        }
    }
    
    
}

#Preview {
    ContentView()
}
