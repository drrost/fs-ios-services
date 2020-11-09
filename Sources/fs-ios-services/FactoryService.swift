//
//  FactoryService.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public class FactoryService {

    public static func authService() -> IServiceAuth {
        ServiceAuth()
    }

    @available(iOS 13.0.0, *)
    @available(OSX 10.15.0, *)
    public static func trackService() -> some IServiceTrack {
        ServiceTrack()
    }
}
