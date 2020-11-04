//
//  Track.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public protocol IDataModel {

    associatedtype ID: Identifier

    var id: ID { get }
}

public protocol Identifier {}

public protocol ICrud {

    associatedtype ModelType: IDataModel
    associatedtype ID: Identifier

    func add(_ model: ModelType)

    func find(_ by: ID) -> ModelType?

    func all() -> [ModelType]
}

public class Track: IDataModel {

    public typealias ID = String

    public var id: String
    public var title: String
    public var artist: String

    init(_ id: String, _ title: String = "", _ artist: String = "") {
        self.id = id
        self.title = title
        self.artist = artist
    }
}

extension String: Identifier {}

public protocol IServiceTrack: IService, ICrud where ModelType == Track, ID == String {
}

class ServiceTrack: IServiceTrack {

    fileprivate var list = [Track]()

    // MARK: - ICrud

    func add(_ model: Track) {
        list.append(model)
    }

    func find(_ by: String) -> Track? {
        list.first { $0.id == by }
    }

    func all() -> [Track] {
        list
    }
}
