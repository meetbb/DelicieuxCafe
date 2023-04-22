//
//  PageActionReceiver.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 22/04/23.
//

import Foundation

class PageActionReceiver: ObservableObject {
    @Published private(set) var pageIndex: Int = 0
    
    func moveToNextPage(index: Int) {
        self.pageIndex = index
    }
}
