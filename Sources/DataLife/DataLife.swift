import Foundation

public class DataLife<T> {

    public typealias CompletionHandler = (T) -> Void

    public var value: T? {
        didSet {
            notifyObservers()
        }
    }

    private var observers: [UUID: CompletionHandler] = [:]
    private let queue = DispatchQueue(label: "datalife.queue", attributes: .concurrent)

    public init() {}

    public func addObserver(_ observer: ObserverProtocol, completion: @escaping CompletionHandler) {
        let id = UUID()

        queue.async(flags: .barrier) {
            self.observers[id] = completion
        }
    }

    public func removeObserver(_ observer: ObserverProtocol) {
        queue.async(flags: .barrier) {
            self.observers.removeValue(forKey: observer.id)
        }
    }

    private func notifyObservers() {
        guard let value else { return }

        queue.sync {
            self.observers.forEach { $0.value(value) }
        }
    }

    deinit {
        observers.removeAll()
    }
}
