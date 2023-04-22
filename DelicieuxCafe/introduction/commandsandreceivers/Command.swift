//
//  Command.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 22/04/23.
//

import Foundation

protocol Command: AnyObject {
    var pageActionReceiver: PageActionReceiver { get set }
    func execute()
}
