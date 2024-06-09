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
        User(login: "", password: "", person: Person(name: "Marat", surname: "_FMK", hobby: "mini cooper r 53", aboutMe: "i love programming, it s  very interesting") )
    }
}
    
    struct Person {
        let name: String
        let surname: String
        let hobby: String
        let aboutMe: String
        
        var fullName: String {
            "\(name) \(surname)"
        }
        
        static func getPerson() -> Person {
            Person (name: "Marat", surname: "_Fmk, height", hobby: "mini cooper r 53. car models and nature", aboutMe: "i love programming , its very interesting!")
        }
    }

