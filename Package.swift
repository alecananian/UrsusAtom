// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UrsusAtom",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "UrsusAtom", targets: ["UrsusAtom"]),
    ],
    dependencies: [
        .package(name: "BigInt",
                 url: "https://github.com/attaswift/BigInt",
                 from: "5.3.0"),
        .package(name: "MurmurHash-Swift",
                 url: "https://github.com/daisuke-t-jp/MurmurHash-Swift",
                 from: "1.1.1"),
    ],
    targets: [
        .target(
            name: "UrsusAtom",
            dependencies: [
                .byName(name: "BigInt"),
                .byName(name: "MurmurHash-Swift")
            ]),
    ]
)