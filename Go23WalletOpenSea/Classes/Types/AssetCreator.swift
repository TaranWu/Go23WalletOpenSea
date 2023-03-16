//
//  AssetCreator.swift
//  Go23WalletOpenSea
//
//  Created by Taran on Apr/30/22.
//

import Foundation
import Go23WalletAddress
import SwiftyJSON

public struct AssetCreator: Codable {
    public let contractAddress: Go23Wallet.Address
    public let config: String
    public let profileImageUrl: URL?
    public let user: String?

    public init(json: JSON) throws {
        guard let address = Go23Wallet.Address(string: json["address"].stringValue) else {
            throw NftAssetsPageDecoder.DecoderError.jsonInvalidError
        }
        self.contractAddress = address
        self.config = json["config"].stringValue
        self.profileImageUrl = json["profile_img_url"].string.flatMap { URL(string: $0.trimmed) }
        self.user = json["user"]["username"].string
    }
}

//TODO would be good to move to AlphaWalletCore? This is duplicated in the app
fileprivate extension String {
    var trimmed: String {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}
