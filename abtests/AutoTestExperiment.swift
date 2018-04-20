class ShowPromoExperiment : Experiment {
    override func name() -> String {
        return "ShowPromoExperiment"
    }
    
    override func variants() -> Dictionary<String, Variant> {
        return [
            "A_Experiment" : Variant(name: "A_Experiment", description: "Показывать промо экран сразу", values:
                [
                    VariantValue(name: "shouldBeShown",value: "TRUE"),
                    
                    VariantValue(name: "showDelay",value: "0"),
                    ]),
            "B_Experiment" : Variant(name: "B_Experiment", description: "Показывать промо экран через день", values:
                [
                    VariantValue(name: "shouldBeShown",value: "TRUE"),
                    
                    VariantValue(name: "showDelay",value: "1d"),
                    ]),
        ]
    }
    
    override func defaultVariant() -> Variant {
        return Variant(name: "DEF_VARIANT", description: "def variant", values:
            [
                VariantValue(name: "shouldBeShown",value: "FALSE"),
                VariantValue(name: "showDelay",value: "null"),
                ])
    }
}
