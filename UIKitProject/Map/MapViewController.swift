

import UIKit
import MapKit


class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    
    lazy var mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()

    
    lazy var txtSearch: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        
        txt.backgroundColor = .white
        txt.layer.cornerRadius = 10
        txt.clipsToBounds = true
        txt.placeholder = "Search locations"
        txt.leftView = UIView(frame: CGRect(x:0,y:0,width:10,height:10))
        txt.leftViewMode = .always
        
        return txt
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize location manager
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.requestLocation()
        

        setup()
    }
    
    // Required CLLocationManagerDelegate method: location updates
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            if let location = locations.last {
                print("Location: \(location.coordinate.latitude), \(location.coordinate.longitude)")
            }
        }
        
        // Optional CLLocationManagerDelegate method: error handling
        func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            print("Failed to find user's location: \(error.localizedDescription)")
        }
    
    
    private func setup() {
        
        view.addSubview(txtSearch)
        view.addSubview(mapView)
        
        view.bringSubviewToFront(txtSearch)
        
        txtSearch.heightAnchor.constraint(equalToConstant: 44).isActive = true
        txtSearch.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        txtSearch.widthAnchor.constraint(equalToConstant: view.bounds.size.width/1.2).isActive = true
        txtSearch.topAnchor.constraint(equalTo: view.topAnchor,constant: 60).isActive = true
        txtSearch.returnKeyType = .go
        
        
        mapView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mapView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        mapView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mapView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
    }
}


