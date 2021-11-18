//
//  insta_view_code_exercTests.swift
//  insta-view-code-exercTests
//
//  Created by Guilherme Strutzki on 28/10/21.
//

import XCTest
import SnapshotTesting

class insta_view_code_exercTests: XCTestCase {
    func test_loginInstagram() {
        let viewController = ViewController()
        assertSnapshot(matching: viewController, as: .image)
    }
   
}
