//
//  OpenSeaError.swift
//  Go23WalletOpenSea
//
//  Created by Taran on Apr/30/22.
//

import Foundation

//TODO rename/improve
public struct OpenSeaError: Error {
    var localizedDescription: String

    public init(localizedDescription: String) {
        self.localizedDescription = localizedDescription
    }
}
