//
//  User.swift
//  LogInApp.V3
//
//  Created by Marat Fakhrizhanov on 09.06.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "", password: "", person: Person.getPerson() )
    }
}
    
    struct Person {
        let name: String
        let surname: String
        let hobby: String
        let aboutMe: String
        let photo: String
        
        var fullName: String {
            "\(name) \(surname)"
        }
        
        static func getPerson() -> Person {
            Person (name: "Marat", surname: "_Fmk", hobby: "mini cooper r 53. car models and nature", aboutMe: "i love programming , its very interesting!", photo: "photo")
        }
    }

