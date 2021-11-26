//
//  MSMath.swift
//  MySwift
//
//  Created by thebv on 26/11/2021.
//

import UIKit

@objc open class MSMath: NSObject {
    @objc(doSumWithA:b:) public static func sum(a: Int, b: Int) -> Int {
        return a + b
    }
}
