// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASDKCore",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ASDKCore",
            targets: ["ASDKCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ASDKCore",
            dependencies: [],
            path: "Sources/ASDKCore",
//            publicHeadersPath: "PublicHeaders",
            cSettings: [
                .headerSearchPath("EverythingElse"),
                
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
        .testTarget(
            name: "tinkoff-asdk-ios-3Tests",
            dependencies: ["ASDKCore"]),
    ]
)
