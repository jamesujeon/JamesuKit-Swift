//
//  BidirectionalCollection+Loop.swift
//  JamesuKit
//
//  Copyright © 2024 Jamesu. All rights reserved.
//

public extension BidirectionalCollection where Iterator.Element: Equatable {
    func next(_ item: Iterator.Element, isLoop: Bool = false) -> Iterator.Element? {
        if let itemIndex = firstIndex(of: item) {
            let lastItem: Bool = (index(after: itemIndex) == endIndex)
            if isLoop && lastItem {
                return first
            } else if lastItem {
                return nil
            } else {
                return self[index(after: itemIndex)]
            }
        }
        return nil
    }

    func previous(_ item: Iterator.Element, isLoop: Bool = false) -> Iterator.Element? {
        if let itemIndex = firstIndex(of: item) {
            let firstItem: Bool = (itemIndex == startIndex)
            if isLoop && firstItem {
                return last
            } else if firstItem {
                return nil
            } else {
                return self[index(before: itemIndex)]
            }
        }
        return nil
    }
}
