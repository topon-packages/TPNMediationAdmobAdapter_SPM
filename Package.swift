// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationAdmobAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationAdmobAdapter",
            targets: ["TPNMediationAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.13.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkAdmobAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkAdmobAdapter/131300.2.10/AnyThinkAdmobAdapter-131300.2.10.zip",
            checksum: "241c86af302fa0f71e6a64f29a23c95f3aff7badc3a0d0f85bc7c674158a156f"
        ),
        .target(
            name: "TPNMediationAdmobAdapterTarget",
            dependencies: [
                "AnyThinkAdmobAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/TPNMediationAdmobAdapterTarget"
        )
    ]
)