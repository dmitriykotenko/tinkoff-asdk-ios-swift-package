// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASDK",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "ASDKCore",
            targets: ["ASDKCore"]
        ),
        .library(
            name: "ASDKUI",
            targets: ["ASDKUI"]
        )
    ],
    targets: [
        .target(
            name: "ASDKCore",
            path: "Sources/ASDKCore",
            publicHeadersPath: "PublicHeaders",
            cSettings: [
                .headerSearchPath("."),
                
                .headerSearchPath("API Objects"),
                .headerSearchPath("API Objects/Card"),
                .headerSearchPath("API Objects/Errors"),
                
                .headerSearchPath("API Objects/Request"),
                .headerSearchPath("API Objects/Request/Charge"),
                .headerSearchPath("API Objects/Request/FinishAuthorize"),
                .headerSearchPath("API Objects/Request/GetCardList"),
                .headerSearchPath("API Objects/Request/GetState"),
                .headerSearchPath("API Objects/Request/Init"),
                .headerSearchPath("API Objects/Request/RemoveCard"),

                .headerSearchPath("API Objects/Response"),
                .headerSearchPath("API Objects/Response/Charge"),
                .headerSearchPath("API Objects/Response/FinishAuthorize"),
                .headerSearchPath("API Objects/Response/GetCardList"),
                .headerSearchPath("API Objects/Response/GetState"),
                .headerSearchPath("API Objects/Response/Init"),
                .headerSearchPath("API Objects/Response/PaymentInfo"),
                .headerSearchPath("API Objects/Response/RemoveCard"),
                .headerSearchPath("API Objects/Response/ThreeDsData"),

                .headerSearchPath("CryptoUtils"),
                
                .headerSearchPath("RequestBuilder"),
                .headerSearchPath("RequestBuilder/Charge"),
                .headerSearchPath("RequestBuilder/FinishAuthorize"),
                .headerSearchPath("RequestBuilder/GetCardList"),
                .headerSearchPath("RequestBuilder/GetState"),
                .headerSearchPath("RequestBuilder/Init"),
                .headerSearchPath("RequestBuilder/RemoveCard")
            ]
        ),
        .target(
            name: "ASDKUI",
            dependencies: ["ASDKCore"],
            path: "Sources/ASDKUI",
            publicHeadersPath: "PublicHeaders",
            cSettings: [
                .headerSearchPath("."),
                
                .headerSearchPath("Helpers"),
                .headerSearchPath("3DSController"),

                .headerSearchPath("Resources/Images"),
                .headerSearchPath("Resources/Texts"),

                .headerSearchPath("Payment"),
                .headerSearchPath("Payment/PaymentFormStarter"),
                
                .headerSearchPath("Payment/PaymentViewController"),
                .headerSearchPath("Payment/PaymentViewController/EmailCell"),
                .headerSearchPath("Payment/PaymentViewController/InputCardCell"),
                .headerSearchPath("Payment/PaymentViewController/CustomInput"),
                .headerSearchPath("Payment/PaymentViewController/CustomInput/HighlightedButton"),

                .headerSearchPath("Payment/CardsListViewController"),
                .headerSearchPath("Payment/CardsListViewController/AddNewCardCell"),
                .headerSearchPath("Payment/CardsListViewController/CardCell"),
                
                .headerSearchPath("Payment/CardListDataSource"),                
            ]
        )
    ]
)
