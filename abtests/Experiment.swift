//
//  Experiment.swift
//  atestb
//
//  Created by Konstantin Volkov on 01.04.2018.
//  Copyright © 2018 moscow. All rights reserved.
//

import Foundation

class Experiment {
    
    func name() -> String {
        preconditionFailure("This method must be overridden")
    }
    func description() -> String {
        preconditionFailure("This method must be overridden")
    }
    func variants() -> Dictionary<String, Variant> {
        preconditionFailure("This method must be overridden")
    }
    func defaultVariant() -> Variant {
        preconditionFailure("This method must be overridden")
    }
}
