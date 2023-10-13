//
//  Bundle+Info.swift
//  JamesuKit
//
//  Copyright © 2023 Jamesu. All rights reserved.
//

import Foundation

public extension Bundle {
    var version: String {
        infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
}
