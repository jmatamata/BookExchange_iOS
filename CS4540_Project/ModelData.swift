//
//  ModelData.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 7/27/22.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var books: [BookExchangeListItem] = load("BookExchangeData.json")
    
    @Published var profile = Profile.default

    var features: [BookExchangeListItem] {
        books.filter { $0.isFeatured }
    }

    var categories: [String: [BookExchangeListItem]] {
        Dictionary(
            grouping: books, by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Can't find file")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Can't read the file")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Can't convert to Json")
    }
}
