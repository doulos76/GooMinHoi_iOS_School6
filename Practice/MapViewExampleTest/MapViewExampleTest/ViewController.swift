//
//  ViewController.swift
//  MapViewExampleTest
//
//  Created by dave on 07/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

// System Framework is here (A to Z)
import CoreLocation
import MapKit
import UIKit

// 3rd Party Framework is here

class ViewController: UIViewController {
  //MARK:- Properties
  @IBOutlet weak var coordinateLabel: UILabel!      // 현재 위 경도 좌표를 나타냄
  @IBOutlet weak var mapView: MKMapView!
  
  private let locationManager = CLLocationManager()
  private var currentLocationLatitude: CLLocationDegrees = 0
  private var currentLocationLongitude: CLLocationDegrees = 0
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    locationManager.delegate = self
  }
  
  override func viewDidAppear(_ animated: Bool) {
    moveToInitialCoordinate(())
    
    switch CLLocationManager.authorizationStatus() {
    case .notDetermined:
      locationManager.requestWhenInUseAuthorization()
    case .denied, .restricted:
      print("앱을 사용하기 위해서는 위치 정보 사용 권한이 필요합니다.")
    case .authorizedAlways, .authorizedWhenInUse:
      locationManager.requestLocation()
    }

  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: - Action Handler
  
  @IBAction func moveToInitialCoordinate(_ sender: Any) {
    let center = CLLocationCoordinate2D(latitude: 37.572851, longitude: 126.976881)
    // 위도: 111 Km, 경도: 위도에 따라 111 ~ 0 Km
    let span = MKCoordinateSpanMake(0.01, 0.01)
    let region = MKCoordinateRegionMake(center, span)
    mapView.setRegion(region, animated: true)
  }
  
  @IBAction func moveToCurrentCoordinate(_ sender: Any) {
    //startUpdateLocation(())
    //stopUpdateLocation(())
    
    locationManager.requestLocation()
    let coordinate = mapView.centerCoordinate
    coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])

    let latitudeDelta: CLLocationDegrees = 0.01
    let longitudeDelta: CLLocationDegrees = 0.01
    let userLatitude: CLLocationDegrees = coordinate.latitude
    let userLongitude: CLLocationDegrees = coordinate.longitude
    let center = CLLocationCoordinate2D(latitude: userLatitude, longitude: userLongitude)
    let span = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
    let region = MKCoordinateRegionMake(center, span)
    mapView.setRegion(region, animated: true)
    
//    let currentLocation = MKPointAnnotation()
//    currentLocation.title = "일기 쓴 곳"
//    let currentLatitude : CLLocationDegrees = userLatitude
//    let currentLongitude: CLLocationDegrees = userLongitude
//    currentLocation.coordinate = CLLocationCoordinate2D(latitude: currentLatitude, longitude: currentLongitude)
//    mapView.addAnnotation(currentLocation)

  }
    
    
  
  @IBAction func startUpdateLocation(_ sender: Any) {
    switch CLLocationManager.authorizationStatus() {
    case .notDetermined:
      locationManager.requestWhenInUseAuthorization()
    case .denied, .restricted:
      print("앱을 사용하기 위해서는 위치 정보 사용 권한이 필요합니다.")
    case .authorizedAlways, .authorizedWhenInUse:
      locationManager.desiredAccuracy = kCLLocationAccuracyBest
      locationManager.distanceFilter = kCLHeadingFilterNone
      locationManager.startUpdatingLocation()
    }
    // 1회성 Location Update
    // locationManager.requestLocation()
  }
  
  @IBAction func stopUpdateLocation(_ sender: Any) {
    locationManager.stopUpdatingLocation()
  }
  
  @IBAction func updateCurrentLocation(_ sender: Any) {
    locationManager.requestLocation()
    let coordinate = mapView.centerCoordinate
    coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])
  }
  
  @IBAction func addAnnotationAtCenter(_ sender: Any) {
    let annotation = MKPointAnnotation()
    annotation.title = "MapCenter"
    annotation.coordinate = mapView.centerCoordinate
    mapView.addAnnotation(annotation)
    coordinateLabel.text = "Annotation 추가"
  }
  
  @IBAction func addAnnotationAtNamsan(_ sender: Any) {
    let namsan = MKPointAnnotation()
    namsan.title = "남산"
    namsan.subtitle = "남산타워"
    namsan.coordinate = CLLocationCoordinate2D(latitude: 37.5514, longitude: 126.9880)
    mapView.addAnnotation(namsan)
  }
  
  @IBAction func removeAllAnotations(_ sender: Any) {
    mapView.removeAnnotations(mapView.annotations)
  }
}

//MARK: CLLocationManager
extension ViewController: CLLocationManagerDelegate {
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let location = locations.last else { return }
    let coordinate = location.coordinate
    coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])
  }
  
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print(error.localizedDescription)
  }
  
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    switch status {
    case .authorizedWhenInUse, .authorizedAlways:
      print("Authorized")
    default:
      print("Unauthorized")
    }
  }
}
