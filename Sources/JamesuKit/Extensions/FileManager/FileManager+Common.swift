//
//  FileManager+Common.swift
//  JamesuKit
//
//  Copyright © 2024 Jamesu. All rights reserved.
//

import Foundation

public extension FileManager {
    var totalSpace: UInt64 {
        (attributesOfUserDocumentDirectory[.systemSize] as? NSNumber)?.uint64Value ?? 0
    }

    var freeSpace: UInt64 {
        (attributesOfUserDocumentDirectory[.systemFreeSize] as? NSNumber)?.uint64Value ?? 0
    }

    func fileSize(atPath path: String) -> UInt64 {
        guard fileExists(atPath: path) else {
            return 0
        }
        return ((try? attributesOfItem(atPath: path))?[.size] as? NSNumber)?.uint64Value ?? 0
    }
}

private extension FileManager {
    var attributesOfUserDocumentDirectory: [FileAttributeKey: Any] {
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
            return [:]
        }
        return (try? attributesOfFileSystem(forPath: path)) ?? [:]
    }
}
