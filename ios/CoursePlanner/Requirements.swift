//
//  Requirements.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/1/20.
//

import Foundation

class Requirements: ObservableObject, Codable {
    
    
    @Published var idReqirements = 0
    @Published var RequirementName = ""
    @Published var MajorID = 0
    @Published var FrequencyOffered = 0
    @Published var SpecificClass = 0
    
    enum CodingKeys: CodingKey {
        case idRequirements, RequirementName, MajorID,FrequencyOffered,SpecificClass
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(idReqirements, forKey: .idRequirements)
        try container.encode(RequirementName, forKey: .RequirementName)
        try container.encode(MajorID, forKey: .MajorID)
        try container.encode(FrequencyOffered, forKey: .FrequencyOffered)
        try container.encode(SpecificClass, forKey: .SpecificClass)
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        idReqirements = try container.decode(Int.self, forKey: .idRequirements)
        RequirementName = try container.decode(String.self, forKey: .RequirementName)
        MajorID = try container.decode(Int.self, forKey: .MajorID)
        FrequencyOffered = try container.decode(Int.self, forKey: .FrequencyOffered)
        SpecificClass = try container.decode(Int.self, forKey: .SpecificClass)
    }
}
