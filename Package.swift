// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModelEnvironment",
    platforms: [.macOS(.v11), .iOS(.v14)], // Our minimum deployment target is 12
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ModelEnvironment",
            targets: ["ModelEnvironment"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(path: "../RetirementModel"),
        .package(path: "../UnemployementModel"),
        .package(path: "../EconomyModel"),
        .package(path: "../SocioEconomyModel"),
        .package(path: "../HumanLifeModel"),
        .package(path: "../FiscalModel") // pour les tests uniquement
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ModelEnvironment",
            dependencies:
                [
                    "RetirementModel",
                    "UnemployementModel",
                    "EconomyModel",
                    "SocioEconomyModel",
                    "HumanLifeModel",
                    "FiscalModel"
                ]),
        .testTarget(
            name: "ModelEnvironmentTests",
            dependencies: ["ModelEnvironment"])
    ]
)
