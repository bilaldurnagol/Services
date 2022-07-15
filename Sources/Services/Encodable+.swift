//
//  Encodable+.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        
        guard let data = try? JSONEncoder().encode(self), let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            fatalError()
        }
        return dictionary
    }
}
