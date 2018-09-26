//
//  V2ViewController.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/19/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import GoogleMaps

class V2ViewController: UIViewController {
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 39.693858, longitude: -105.008426, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 39.693858, longitude: -105.008426)
        marker.title = "1223 S Raritan St."
        marker.snippet = "Denver, Colorado"
        marker.map = mapView

    }
    
}
