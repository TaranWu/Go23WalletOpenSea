//
//  PrimaryAssetContract.swift
//  Go23WalletOpenSea
//
//  Created by Taran on 31.01.2022.
//

import Foundation
import Go23WalletAddress
import SwiftyJSON

public struct PrimaryAssetContract: Codable {
    let address: Go23Wallet.Address
    let assetContractType: String
    let createdDate: String
    let name: String
    let nftVersion: String
    let schemaName: String
    let symbol: String
    let owner: String
    let totalSupply: String
    let description: String
    let externalLink: String
    let imageUrl: String

    init(json: JSON) throws {
        guard let address = Go23Wallet.Address(string: json["address"].stringValue) else {
            throw NftAssetsPageDecoder.DecoderError.jsonInvalidError
        }

        self.address = address
        assetContractType = json["asset_contract_type"].stringValue
        createdDate = json["created_date"].stringValue
        name = json["name"].stringValue
        nftVersion = json["nft_version"].stringValue
        schemaName = json["schema_name"].stringValue
        symbol = json["symbol"].stringValue
        owner = json["owner"].stringValue
        totalSupply = json["total_supply"].stringValue
        description = json["description"].stringValue
        externalLink = json["external_link"].stringValue
        imageUrl = json["image_url"].stringValue
    }
}
