//
//  CollectionKey.swift
//  DerbyWalletOpenSea
//
//  Created by Hwee-Boon Yar on Apr/30/22.
//

import Foundation
import DerbyWalletAddress

public enum CollectionKey: Hashable {
    case address(DerbyWallet.Address)
    case slug(String)
}
