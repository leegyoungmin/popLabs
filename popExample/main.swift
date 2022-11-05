//
//  main.swift
//  popExample
//
//  Copyright (c) 2022 Minii All rights reserved.

struct MacBook {
    var maxWatt: Int = 100
    mutating func chargeBattery(charger: chargeable) {
        let convertedWatt = charger.convert(chargeableWattPerHour: maxWatt)
        print(maxWatt / convertedWatt)
    }
}

struct Charger: chargeable {
    var maximumWattPerHour: WattPerHour
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        if maximumWattPerHour > chargeableWattPerHour {
            return maximumWattPerHour
        }
        
        return chargeableWattPerHour
    }
}


let five = Charger(maximumWattPerHour: 5)
let iphoneFast = Charger(maximumWattPerHour: 18)
let ipad = Charger(maximumWattPerHour: 30)
let macBookCharger = Charger(maximumWattPerHour: 96)

var mac = MacBook()

mac.chargeBattery(charger: macBookCharger)
