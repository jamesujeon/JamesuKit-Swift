//
//  CGRect+Magnitude.swift
//  JamesuKit
//
//  Copyright © 2023 Jamesu. All rights reserved.
//

import Foundation

public extension CGRect {
    static let leastNormalMagnitude = CGRect(
        origin: CGPoint(x: .leastNormalMagnitude, y: .leastNormalMagnitude),
        size: CGSize(width: .leastNormalMagnitude, height: .leastNormalMagnitude)
    )

    static let leastNonzeroMagnitude = CGRect(
        origin: CGPoint(x: .leastNonzeroMagnitude, y: .leastNonzeroMagnitude),
        size: CGSize(width: .leastNonzeroMagnitude, height: .leastNonzeroMagnitude)
    )
}
