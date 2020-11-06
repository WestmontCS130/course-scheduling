//
//  Requirements.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/1/20.
//

import SwiftUI

//Singular Requirement
struct Requirement: Codable {
    var idRequirements: Int
    var RequirementName: String
    var MajorID: String
    var FrequencyOffered: Int
    var SpecificClass: Int

}

// Now conform to Identifiable
extension Requirement: Identifiable {
    var id: Int { return idRequirements }
}

class Api {
    func getRequirements(completion: @escaping ([Requirement]) -> ()) {
        guard let url = URL(string: "https://class-scheduling-api.herokuapp.com/requirements") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let requirements = try! JSONDecoder().decode([Requirement].self, from: data!)
            print(requirements)
            
            DispatchQueue.main.async {
                completion(requirements)
            }
            
        }
        .resume()
    }
}
