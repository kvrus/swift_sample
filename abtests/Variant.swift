//
//  Variant.swift
//  atestb
//
//  Created by Konstantin Volkov on 01.04.2018.
//  Copyright © 2018 moscow. All rights reserved.
//

import Foundation

class Variant {
    
    var name: String
    var description: String
    var values: Array<VariantValue>
    
    init(name: String, description: String, values: Array<VariantValue>) {
        self.name = name
        self.description = description
        self.values = values
    }
}
