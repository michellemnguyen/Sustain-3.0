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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
      // Create a GMSCameraPosition that tells the map to display the
      // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 34.4133, longitude: -119.8610, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
      view = mapView

      // Creates a marker in the center of the map.
      let marker = GMSMarker()
      marker.position = CLLocationCoordinate2D(latitude: 34.4133, longitude: -119.8610)
      marker.title = "Isla Vista"
      marker.snippet = "California"
      marker.map = mapView
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
