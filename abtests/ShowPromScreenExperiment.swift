class ShowPromoScreenExperiment : Experiment {
    override func name() -> String {
        return "ShowPromoScreenExperiment"
    }
    override func description() -> String {
        return "ShowPromoScreenExperiment description"
    }
    override func variants() -> Dictionary<String, Variant> {
        return ["A_VARIANT" : Variant(name: "A_VARIANT", description: "a variant", values: [VariantValue(name: "shouldBeShown",value: "true"), VariantValue(name: "text",value: "some text A")]),
                "B_VARIANT" : Variant(name: "B_VARIANT", description: "b variant", values: [VariantValue(name: "shouldBeShown",value: "false"), VariantValue(name: "text",value: "some text B")])]
    }
    
    override func defaultVariant() -> Variant {
        return Variant(name: "DEF_VARIANT", description: "def variant", values: [VariantValue(name: "shouldBeShown",value: "false"), VariantValue(name: "text",value: "def text")])
    }
}
