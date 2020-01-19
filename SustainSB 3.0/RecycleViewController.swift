//
//  RecycleViewController.swift
//  SustainSB 3.0
//
//  Created by Michelle Nguyen on 1/19/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class RecycleViewController: UIViewController {
    
    var locationManager = CLLocationManager()
     var currentLocation: CLLocation?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
      // Create a GMSCameraPosition that tells the map to display the
      // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 34.4133, longitude: -119.8610, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.settings.compassButton = true
        mapView.settings.myLocationButton = true

        view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 34.4133, longitude: -119.8610)
        marker.title = "Isla Vista"
        marker.snippet = "California"
        marker.map = mapView
        
        // Creates a marker in the center of the map.
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 34.437510, longitude: -119.838760)
        marker1.title = "Marborg Recyling"
        marker1.snippet = "Glass/Metal/Plastic"
        marker1.map = mapView
        
        // Creates a marker in the center of the map.
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 34.412310, longitude: -119.857360)
        marker2.title = "Replanet"
        marker2.snippet = "Glass/Metal/Plastic"
        marker2.map = mapView
        
        // Creates a marker in the center of the map.
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 34.442370, longitude: -119.777770)
        marker3.title = "South Coast Transfer & Recycling Center"
        marker3.snippet = "Large Cardboard/Metal/Plastic"
        marker3.map = mapView
        
        
        // Creates a marker in the center of the map.
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 34.418300, longitude: -119.705590)
        marker4.title = "Goodwill Industries"
        marker4.snippet = "Mattress/Furnitue"
        marker4.map = mapView
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
