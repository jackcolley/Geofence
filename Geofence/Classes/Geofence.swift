//
//  Geofence.swift
//  Geofence
//
//  Created by Jack Colley on 14/06/2018.
//

import Foundation
import CoreLocation

class Geofence: NSObject {

    /**
     *  The standard location manager - This can be overidden with a convenience init
    */
    internal var manager = CLLocationManager()

    /**
     *  Geocoder - Used to reverse geocode the current device location
    */
    internal var geoCoder = CLGeocoder()

    /**
     *  Allowed country codes
    */
    internal var allowedCountryCodes = [String]()

    /**
     *  Delegare which will keep other classed informed of changed to the approval status
    */
    public var delegate: GeofenceServiceDelegate?

    /**
     *  Current approval status of the app. This will be undefined until a location has been determined
    */
    internal var approvalStatus: GeofenceApprovalStatus = .undetermined {
        didSet {
            delegate?.appApprovalStatusChanged(approved: approvalStatus)
        }
    }

    override init() {

    }

    convenience init(countryCodes: [String], locationManager: CLLocationManager? = nil) {
        self.init()

        allowedCountryCodes = countryCodes
    }

    /**
     * Start the location manager updating the location and reverse geocoding
    */
    public func start() {

    }

    /**
     *  Stop the location manager upating the location and reverse geocoding
    */
    public func stop() {

    }

    /**
     *  Updates the allowed country codes for the app
     *  Useful if allowed countries is dynamic in anyway
    */
    public func setCountryCodes(countryCodes: [String]) {
        allowedCountryCodes = countryCodes
    }

    /**
     *  Checks that the user has given permission for the app to use their location
    */
    private func checkPermissions() {

    }

    /**
     *  Uses a CLGeocoder to reverse geocode a location
    */
    private func reverseGeocodeLocation(location: CLLocation) {

    }

}
