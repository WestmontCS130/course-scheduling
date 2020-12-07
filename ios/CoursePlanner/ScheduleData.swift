//
//  ScheduleData.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/20/20.
//

import Foundation

struct Course: Hashable, Codable, Identifiable{
    var name: String
    var id: Int
    var subject: String
}

struct Semester: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var courses: [Course]
}


struct Year: Hashable, Codable, Identifiable {
    var name: String
    // Year 1, year 2, etc.
    //var year: Int
    var id: Int
    var semesters: [Semester]
}


let ScheduleData: [Year] = load("YearDataSample.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
