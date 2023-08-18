import ProjectDescription

public extension Project {

    static func schemes() -> [Scheme] {
        return [
            Scheme(
                name: "DataLife",
                buildAction: .buildAction(targets: ["DataLife"]),
                testAction: .targets(["Tests"], options: .options(coverage: true, codeCoverageTargets: ["DataLife"]))
            )
        ]
    }
}
