// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SEONIdVerification",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SEONIdVerification",
            targets: ["SEONIDV"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/BlinkID/blinkid-ios", from: "6.11.1"),
        .package(url: "https://github.com/BlinkID/capture-core-sp", from: "1.3.1"),
        .package(url: "https://github.com/BlinkID/capture-ux-sp", from: "1.3.1"),
    ],
    targets: [
        .target(
            name: "SEONIDV",
            dependencies: [
                .target(name: "SEONIdVerification"),
                .product(name: "BlinkID", package: "blinkid-ios"),
                .product(name: "CaptureCore", package: "capture-core-sp"),
                .product(name: "CaptureUX", package: "capture-ux-sp"),
            ]
        ),
        .binaryTarget(
            name: "SEONIdVerification",
            url: "https://s3.us-east-1.amazonaws.com/idv-static.native-sdk.seondev.space/sdk-releases/ios/1.6.3/SEONIdVerification_SPM.zip",
            checksum: "0feced8d6c35014db72f14635e617d61ee87150c89ad4043334ddd75f7531085"
        )
    ]
)
