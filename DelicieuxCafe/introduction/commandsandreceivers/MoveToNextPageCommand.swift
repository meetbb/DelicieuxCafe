//
//  MoveToNextPageCommand.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 22/04/23.
//

import Foundation

class MoveToNextPageCommand: Command {
    var pageActionReceiver: PageActionReceiver
    var index: Int
    var nextPageIndex: Int {
        get {
            return index + 1
        }
    }
    
    init(pageActionReceiver: PageActionReceiver, index: Int) {
        self.pageActionReceiver = pageActionReceiver
        self.index = index
    }
    
    func execute() {
        pageActionReceiver.moveToNextPage(index: nextPageIndex)
    }
}
