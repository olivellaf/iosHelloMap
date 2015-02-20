//
//  ViewController.swift
//  hellomap
//
//  Created by Black Castle on 20/2/15.
//  Copyright (c) 2015 ___TAULE___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Exemple API Google Maps
    override func viewDidLoad() {
        super.viewDidLoad()
        var camera = GMSCameraPosition.cameraWithLatitude(41.887,
            longitude:-87.622, zoom:15)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(41.887, -87.622)
        marker.appearAnimation = kGMSMarkerAnimationPop
        marker.icon = UIImage(named: "flag_icon")
        marker.map = mapView
        
        self.view = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

