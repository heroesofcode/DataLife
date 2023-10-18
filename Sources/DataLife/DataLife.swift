public class DataLife<T> {

    public typealias CompletionHandler = ((T) -> Void)

    public var value: T? {
        didSet {
            self.notifyObservers(self.observers)
        }
    }

    private var observers: [Int: CompletionHandler] = [:]

    public init() {}

    public func observer(_ observer: ObserverProtocol, completion: @escaping CompletionHandler) {
        self.observers[observer.id] = completion
    }
    
    private func notifyObservers(_ observers: [Int: CompletionHandler]) {
        if value != nil {
            guard let value = value else { return }
            observers.forEach({ $0.value(value) })
        }
    }

    deinit {
        observers.removeAll()
    }
}
