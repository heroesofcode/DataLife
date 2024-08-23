import Foundation

open class DataLifeViewModel: ObserverProtocol {
    public init() {}

    public var id: UUID = .init()
    public func onValueChanged(_ value: Any?) {}
}
