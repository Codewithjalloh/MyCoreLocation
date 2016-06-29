//
//  ViewController.swift
//  MyCoreLocation
//
//  Created by wealthyjalloh on 30/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var theMap: MKMapView!
    let locationManager: CLLocationManager = CLLocationManager()
    var myLatitude: CLLocationDegrees!
    var myLongitude: CLLocationDegrees!
    var finalLatitude: CLLocationDegrees!
    var finalLongtitude: CLLocationDegrees!
    var distance: CLLocationDistance!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        let tap = UITapGestureRecognizer(target: self, action: "actionTap:")
        
        theMap.addGestureRecognizer(tap)
    }
    
    func actionTap(gesturRecogniser: UITapGestureRecognizer) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

