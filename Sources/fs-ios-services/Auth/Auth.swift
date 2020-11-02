//
//  Auth.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public protocol IService {

}

public protocol IAuthService: IService {

    func login(_ login: String, _ password: String, _ completion: (Bool) -> Void)
}

class AuthService: IAuthService {

    func login(_ login: String, _ password: String, _ completion: (Bool) -> Void) {
        completion(true)
    }
}
