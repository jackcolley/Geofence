//
//  GeofenceServiceDelegate.swift
//  Geofence
//
//  Created by Jack Colley on 14/06/2018.
//

import Foundation

protocol GeofenceServiceDelegate {
    func appApprovalStatusChanged(approved: GeofenceApprovalStatus)
}
