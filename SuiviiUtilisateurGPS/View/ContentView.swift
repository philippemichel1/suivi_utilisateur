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
        //on peut même changer le style de carte, et ajouter  les transports en commun, les banques, les parcs.....
            .mapStyle(.standard(elevation: .automatic,pointsOfInterest: [.publicTransport,.cafe,.amusementPark]))
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
