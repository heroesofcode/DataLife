import ProjectDescription
import ProjectDescriptionHelpers

let dataLife = Target(
    name: "DataLife",
    platform: .iOS,
    product: .framework,
    bundleId: "com.heroesofcode.datalife",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    sources: ["Sources/DataLife/**/*"],
    scripts: Project.targetScripts()
)

let tests =  Target(
    name: "Tests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.heroesofcode.datalifeTests",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .default,
    sources: ["Tests/DataLifeTests/**/*"],
    dependencies: [
        .target(name: "DataLife")
    ]
)

let project = Project(
    name: "DataLife",
    targets: [dataLife, tests],
    schemes: Project.schemes()
)
