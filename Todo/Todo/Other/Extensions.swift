//
//  Extensions.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import Foundation

extension Encodable{
    func asDictionary() -> [String: Any]{
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch{
            return[:]
        }
    }
}
