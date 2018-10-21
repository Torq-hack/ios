//
//  Car.swift
//  Torq
//
//  Created by Felipe Antonio Cardoso on 21/10/2018.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import Foundation

struct Car {
    let id: Int
    let idClient: Int
    let model: String
    let plate: String
    let year: Int
    let km: Int
    let estimatePrice: Int
    let value: Int
    let score: Int
    let imageURL: String
    
    enum CodingKeys: String, CodingKey
    {
        case id = "Id"
        case idClient = "IdCliente"
        case model = "Modelo"
        case plate = "Placa"
        case year = "Ano"
        case km = "Quilometragem"
        case estimatePrice = "ValorEstimado"
        case value = "ValorDaCompra"
        case score = "Score"
        case imageURL = "ImageUrl"
    }
}

extension Car: Encodable
{
    func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(idClient, forKey: .idClient)
        try container.encode(model, forKey: .model)
        try container.encode(plate, forKey: .plate)
        try container.encode(year, forKey: .year)
        try container.encode(km, forKey: .km)
        try container.encode(estimatePrice, forKey: .estimatePrice)
        try container.encode(value, forKey: .value)
        try container.encode(score, forKey: .score)
        try container.encode(imageURL, forKey: .imageURL)
    }
}

extension Car: Decodable
{
    init(from decoder: Decoder) throws
    {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        idClient = try values.decode(Int.self, forKey: .idClient)
        model = try values.decode(String.self, forKey: .model)
        plate = try values.decode(String.self, forKey: .plate)
        year = try values.decode(Int.self, forKey: .year)
        km = try values.decode(Int.self, forKey: .km)
        estimatePrice = try values.decode(Int.self, forKey: .estimatePrice)
        value = try values.decode(Int.self, forKey: .value)
        score = try values.decode(Int.self, forKey: .score)
        imageURL = try values.decode(String.self, forKey: .imageURL)
    }
}
