// This file contains your Data Connector logic
section Cotação_Dolar;

[DataSource.Kind="Cotação_Dolar", Publish="Cotação_Dolar.Publish"]
shared Cotação_Dolar.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from Cotação_Dolar: " & _message
    in
        a;

// Data Source Kind description
Cotação_Dolar = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Implicit = []
    ],
    Label = Extension.LoadString("DataSourceLabel")
];

// Data Source UI publishing description
Cotação_Dolar.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = Cotação_Dolar.Icons,
    SourceTypeImage = Cotação_Dolar.Icons
];

Cotação_Dolar.Icons = [
    Icon16 = { Extension.Contents("Cotação_Dolar16.png"), Extension.Contents("Cotação_Dolar20.png"), Extension.Contents("Cotação_Dolar24.png"), Extension.Contents("Cotação_Dolar32.png") },
    Icon32 = { Extension.Contents("Cotação_Dolar32.png"), Extension.Contents("Cotação_Dolar40.png"), Extension.Contents("Cotação_Dolar48.png"), Extension.Contents("Cotação_Dolar64.png") }
];
