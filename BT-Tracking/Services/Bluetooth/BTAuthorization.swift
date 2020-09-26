//
//  BTAuthorization.swift
//  BT-Tracking
//
//  Created by Matěj Kašpar Jirásek on 26/09/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import CoreBluetooth

struct BTAuthorization {
    var bluetoothAuthorized: Bool {
        if #available(iOS 13.0, *) {
            return CBCentralManager().authorization == .allowedAlways
        }
        return CBPeripheralManager.authorizationStatus() == .authorized
    }

    var bluetoothNotDetermined: Bool {
        if #available(iOS 13.0, *) {
            return CBCentralManager().authorization == .notDetermined
        }
        return CBPeripheralManager.authorizationStatus() == .notDetermined
    }
}
