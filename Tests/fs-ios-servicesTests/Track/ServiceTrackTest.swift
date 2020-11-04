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

    func testCreate() {

        // Given
        let service = FactoryService.trackService()

        // When
        service.add(Track())

        // Then
        XCTAssertEqual(1, service.all().count)
    }
}
