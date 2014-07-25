//
//  main.swift
//  CodingDojo
//
//  Created by Young Hoo Kim on 7/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation


var authenticated: Bool? = false
if authenticated {
    println("Authenticated")
} else {
    println("Not authenticated")
}

if let auth = authenticated {
    if auth {
        println("Authenticated")
    } else {
        println("Not authenticated")
    }
} else {
    println("Unknown")
}


if authenticated && authenticated! {
    println("Authenticated")
} else if authenticated {
    println("Not authenticated")
} else {
    println("Unknown")
}


enum AuthStatus {
    case Unspecified
    case Authenticated
    case NotAuthenticated
}

var auth:AuthStatus = .Unspecified
switch auth {
case .Authenticated:
    println("Authenticated")
case .NotAuthenticated:
    println("NotAuthenticated")
default:
    println("Unspecified")
}


door()


func repeatString(s: String, n: Int) -> String {
    return "".join(Array(count: n, repeatedValue: s))
}

