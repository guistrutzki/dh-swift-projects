//
//  ViewController.swift
//  map-deeplinking
//
//  Created by Guilherme Strutzki on 30/09/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationManager = CLLocationManager()
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        mapView.delegate = self
       
    }
    
    func getAddressFromGeoCoder() {
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString("") { placemark, error in
            guard let place = placemark, let location = placemark?.first?.location else {
                print("no location found")
                return
            }
            
            print(location)
//            routeToDestination(destinationCoord: location.coordinate)
        }
    }
    
    func routeToDestination(destinationCoord: CLLocationCoordinate2D) {
        let sourceCoordinate = (locationManager.location?.coordinate)!
        
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinate)
        let destPlacemark = MKPlacemark(coordinate: destinationCoord)
        
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        let destItem = MKMapItem(placemark: destPlacemark)
        
        let destinationMark = MKPointAnnotation()
        destinationMark.title = addressTextField.text!
        destinationMark.coordinate = CLLocationCoordinate2D(latitude: destinationCoord.latitude, longitude: destinationCoord.longitude)
        mapView.addAnnotation(destinationMark)
    }
    
    
    
    
    @IBAction func getAddress(_ sender: Any) {
    }
    
}

extension ViewController: CLLocationManagerDelegate, MKMapViewDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        let userLocation = MKPointAnnotation()
        userLocation.title = "Minha localização"
        guard let latitude = locations.first?.coordinate.latitude, let longitude = locations.first?.coordinate.longitude else {
            return
        }
    
        userLocation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        mapView.addAnnotation(userLocation)
    }
    
}
