import Foundation

open class DataLifeViewModel: ObserverProtocol {
    public init() {}
    
    public var id: UUID = UUID()
    public func onValueChanged(_ value: Any?) {}
}
