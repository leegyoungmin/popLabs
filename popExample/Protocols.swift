//
//  Protocols.swift
//  popExample
//
//  Copyright (c) 2022 Minii All rights reserved.

typealias WattPerHour = Int
typealias Watt = Int

protocol chargeable {
    var maximumWattPerHour: WattPerHour { get }
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}
