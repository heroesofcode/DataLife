import Foundation

public protocol ObserverProtocol: AnyObject {
    var id: UUID { get set }
    func onValueChanged(_ value: Any?)
}
