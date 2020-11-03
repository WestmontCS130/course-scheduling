//
//  Account.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/9/20.
//

import Foundation


class Account: ObservableObject, Codable {
    
    @Published var PhoneNumber = ""
    @Published var stringText = ""
    
    enum CodingKeys: CodingKey {
        case PhoneNumber, stringText
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(PhoneNumber, forKey: .PhoneNumber)
        try container.encode(stringText, forKey: .stringText)
    }
    
    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        PhoneNumber = try container.decode(String.self, forKey: .PhoneNumber)
        stringText = try container.decode(String.self, forKey: .stringText)
    }
    
}
