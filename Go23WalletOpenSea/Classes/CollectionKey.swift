//
//  CollectionKey.swift
//  Go23WalletOpenSea
//
//  Created by Taran on Apr/30/22.
//

import Foundation
import Go23WalletAddress

public enum CollectionKey: Hashable {
    case address(Go23Wallet.Address)
    case collectionId(String)
}
