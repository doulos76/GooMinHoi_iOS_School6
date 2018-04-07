//
//  ViewController.swift
//  MapViewExample
//
//  Created by dave on 06/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//
// System Framework ( A -> Z)
import CoreLocation
import MapKit
import UIKit
// 3rd Party Framework

class ViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  @IBOutlet weak var coordinateLabel: UILabel!
  
  private let locationManager = CLLocationManager()

  override func viewDidLoad() {
    super.viewDidLoad()
    locationManager.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
  
    // 광화문 세종대왕 동상
  @IBAction private func moveToInitialCoordinate(_ sender: Any) {
    let center = CLLocationCoordinate2D(latitude: 37.572851, longitude: 126.976881)
    //위도: 111 Km, / 경도: 위도에 따라 111 ~ 0kM
    let span = MKCoordinateSpanMake(0.01, 0.01)
    let region = MKCoordinateRegionMake(center, span)
    mapView.setRegion(region, animated: true)
  }
  
  // MARK: Action Handler
  
  @IBAction private func startUpdatingLocation(_ sender: Any) {
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
  
  @IBAction private func stopUpdateLocation(_ sender: Any) {
    locationManager.stopUpdatingLocation()
  }
  
  @IBAction private func updateCurrentLocation(_ sender: Any) {
    locationManager.requestLocation()
    let coordinate = mapView.centerCoordinate
    coordinateLabel.text = String(format: "위도: %2.4f, 경도: %2.4f", arguments: [coordinate.latitude, coordinate.longitude])
  }
  
  @IBAction private func addAnnotationAtCenter(_ sender: Any) {
    let annotation = MKPointAnnotation()
    annotation.title = "MapCenter"
    annotation.coordinate = mapView.centerCoordinate
    mapView.addAnnotation(annotation)
    coordinateLabel.text = "Annotation 추가"
  }
  
  @IBAction private func addAnnotationAtNamsan(_ sender: Any) {
    let namsan = MKPointAnnotation()
    namsan.title = "남산"
    namsan.subtitle = "남산타워"
    namsan.coordinate = CLLocationCoordinate2D(latitude: 37.5514, longitude: 126.9880)
    mapView.addAnnotation(namsan)
  }
  
  @IBAction private func removeAllAnnotations(_ sender: Any) {
    mapView.removeAnnotations(mapView.annotations)
  }
  

}

// MARK: - CLLocationManager
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
