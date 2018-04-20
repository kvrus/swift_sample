//
//  ABRepositoryImpl.swift
//  atestb
//
//  Created by Konstantin Volkov on 01.04.2018.
//  Copyright © 2018 moscow. All rights reserved.
//

import Foundation

class ABRepositoryImpl {
    
    var config: Config;
    
    init(version: String, config: Config) {
        if(version != "1.0") {
            
        }
        self.config = config
    }
    
    func getShowPromoExperiment() -> Variant {
        
        if let value = config.config["ShowPromoExperimentKey"] {
            if let result = ShowPromoScreenExperiment().variants()[value] {
                return result
            }
        }
        
        return ShowPromoScreenExperiment().defaultVariant()
    }
    
}
