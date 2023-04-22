//
//  PageActionInvoker.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 22/04/23.
//

import Foundation

class PageActionInvoker: ObservableObject {
    func nextPage(using command: Command) {
        command.execute()
    }
}
