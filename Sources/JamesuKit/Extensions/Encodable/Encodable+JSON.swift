//
//  Encodable+JSON.swift
//  JamesuKit
//
//  Copyright © 2024 Jamesu. All rights reserved.
//

import Foundation

public extension Encodable {
    func jsonData() throws -> Data {
        try JSONEncoder().encode(self)
    }

    func jsonString() -> String? {
        guard let jsonData = try? jsonData() else {
            return nil
        }

        return String(data: jsonData, encoding: .utf8)
    }

    func jsonDictionary() -> [String: Any]? {
        guard let jsonData = try? jsonData() else {
            return nil
        }

        return try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
    }

    func jsonArray() -> [Any]? {
        guard let jsonData = try? jsonData() else {
            return nil
        }

        return try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [Any]
    }
}
