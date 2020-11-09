//
//  Auth.swift
//  
//
//  Created by Rostyslav Druzhchenko on 02.11.2020.
//

import Foundation

public typealias LoginCompletion = ((String?, Error?) -> Void)

public protocol IServiceAuth: IService {

    func login(_ login: String, _ password: String, _ completion: LoginCompletion)
}

class ServiceAuth: IServiceAuth {

    enum AuthError: Error {
        case invalidLoginOrPassword
    }

    func login(_ login: String, _ password: String, _ completion: LoginCompletion) {

        if login == "user" && password == "password" {
            completion(UUID().uuidString, nil)
        } else {
            completion(nil, AuthError.invalidLoginOrPassword)
        }
    }
}
