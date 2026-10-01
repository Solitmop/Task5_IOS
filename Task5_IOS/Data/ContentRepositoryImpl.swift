//
//  ContentRepositoryImpl.swift
//  Task5_IOS
//
//  Created by Roman Zyuzin on 24.09.2026.
//

import Foundation

public class ContentRepositoryImpl: ContentRepository{
    
    public func getRandNum() -> Int {
        return Int.random(in: 1...10000)
    }
}
