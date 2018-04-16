//
//  ViewController.swift
//  iOSMapKitTutorial
//
//  Created by dave on 12/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import MapKit
import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // 1. The latitude and longitude of the city of London is assigned to location
    let location = CLLocationCoordinate2D(latitude: 51.50007773, longitude: -0.1246402)
    let currentLocation = CLLocationCoordinate2D(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>)
    
    let span = MKCoordinateSpanMake(0.05, 0.05)
    let region = MKCoordinateRegion(center: location, span: span)
    mapView.setRegion(region, animated: true)
    
    let annotation = MKPointAnnotation()
    annotation.coordinate = location
    annotation.title = "Big Ben"
    annotation.subtitle = "London"
    mapView.addAnnotation(annotation)
  }
}
