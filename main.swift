//
//  main.swift
//  atestb
//
//  Created by Konstantin Volkov on 01.04.2018.
//  Copyright © 2018 moscow. All rights reserved.
//

import Foundation
var config = Config()
config.config.updateValue("B_VARIANT", forKey: "ShowPromoExperimentKey") //value: "A_VARIANT", forKey: "ShowPromoExperimentKey")

var experiment = ABRepositoryImpl(version: "1.0", config: config).getShowPromoExperiment()

print(experiment.name)
print(experiment.description)

print("Experiment values : ")

for value in experiment.values {
    print(value.name)
    print(value.value)
}
