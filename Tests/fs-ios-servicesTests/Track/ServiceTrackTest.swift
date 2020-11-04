//
//  ServiceTrackTest.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import XCTest
@testable import fs_ios_services


@available(OSX 10.15.0, *)
class ServiceTrackTest: XCTestCase {

    // MARK: - Variables

//    var sut: IServiceTrack!

    // MARK: - Tests routines

    override func setUp() {

    }

    // MARK: - Tests

    func testCreate() {
        // Given
        let sut = FactoryService.trackService()
        let track = Track(String.asId())

        // When
        sut.add(track)

        // Then
        XCTAssertEqual(1, sut.all().count)
    }

    func testFind() {
        // Given
        let sut = FactoryService.trackService()
        var lastId = ""
        for _ in 0 ..< 10 {
            lastId = String.asId()
            let track = Track(lastId)
            sut.add(track)
        }


        // When
        let track = sut.find(lastId)

        // Then
        XCTAssertEqual(lastId, track?.id)
    }
}

extension String: Identifier {

    static func asId() -> String {
        UUID().uuidString
    }
}
