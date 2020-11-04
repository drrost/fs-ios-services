//
//  Auth.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public protocol IServiceAuth: IService {

    func login(_ login: String, _ password: String, _ completion: (Bool) -> Void)
}

class ServiceAuth: IServiceAuth {

    func login(_ login: String, _ password: String, _ completion: (Bool) -> Void) {
        completion(true)
    }
}
