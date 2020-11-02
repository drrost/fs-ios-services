//
//  FactoryService.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public class FactoryService {

    public static func authService() -> IAuthService {
        AuthService()
    }
}
