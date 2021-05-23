//
//  Publisher+Utils.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/24/21.
//

import Combine

extension Publisher {
    func optionalize() -> Publishers.Map<Self, Self.Output?> {
        map({ Optional.some($0) })
    }
}
