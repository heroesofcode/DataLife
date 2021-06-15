import Foundation

public protocol ObserverProtocol {
    var id : Int { get set }
    func onValueChanged(_ value: Any?)
}
