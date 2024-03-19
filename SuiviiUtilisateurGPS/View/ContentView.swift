//
//  ContentView.swift
//  SuiviiUtilisateurGPS
//
//  Created by Philippe MICHEL on 16/03/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
     var suivreUtilisateur:SuiviUtilisateur = SuiviUtilisateur()
    @State private var positionCamera:MapCameraPosition =  .userLocation(followsHeading: true, fallback: .automatic)
        
    var body: some View {
        Map(position: $positionCamera)
        //on peut même changer le style de carte pour avoir les transports en commun
       //.mapStyle(.hybrid(elevation: .automatic,pointsOfInterest: [.publicTransport]))
            .mapControls{
                // bouton de localisation sur la carte 
                MapUserLocationButton()
        }
        .onAppear {
           
        }
    }
}

#Preview {
    ContentView()
}
