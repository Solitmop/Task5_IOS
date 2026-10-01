//
//  ContentViewModel.swift
//  Task5_IOS
//
//  Created by Roman Zyuzin on 24.09.2026.
//

import Foundation
import Observation

@MainActor
@Observable
public class ContentViewModel{
    private let contentRepository: ContentRepository
    
    public var number: Int = 0
    
    public init(contentRepository: ContentRepository) {
        self.contentRepository = contentRepository
    }
    
    public func getRandNumToUI(){
        number = contentRepository.getRandNum()
    }
}
