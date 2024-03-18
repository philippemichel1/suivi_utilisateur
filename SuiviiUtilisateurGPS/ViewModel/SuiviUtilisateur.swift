//
//  SuiviUtilisateur.swift
//  SuiviiUtilisateurGPS
//
//  Created by Philippe MICHEL on 17/03/2024.
//

import Foundation
import MapKit

@Observable
class SuiviUtilisateur:NSObject,CLLocationManagerDelegate {
    
    // creation de la variable manager pour pouvoir utiliser la localisation 
    var manager:CLLocationManager = CLLocationManager()
   
    override init() {
        super.init()
        manager.delegate = self
        demarrer()
    }
    

    func demarrer() {
        //demander autorisation
        manager.requestAlwaysAuthorization()
    }
    
    // récupere la réponse de l'utilisateur
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case.authorizedAlways: print("authorizedAlways")
        case.authorizedWhenInUse: print("authorizedWhenInUse")
        case.denied: print("denied")
        case.notDetermined: print("notDetermined")
        case.restricted: print("restricted")
        @unknown default: print("@unknown")
        }
    }
    
    //erreur de localisation
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
   
    
}
