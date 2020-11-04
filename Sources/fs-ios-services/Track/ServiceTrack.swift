//
//  Track.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public protocol IDataModel {
}

public protocol ICrud {

    associatedtype ModelType: IDataModel

    func add(_ model: ModelType)

    func all() -> [ModelType]
}

public class Track: IDataModel {
}

public protocol IServiceTrack: IService, ICrud where ModelType == Track {

}

class ServiceTrack: IServiceTrack {

    fileprivate var list = [Track]()

    // MARK: - ICrud

    func add(_ model: Track) {
        list.append(model)
    }

    func all() -> [Track] {
        list
    }
}
