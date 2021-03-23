//___FILEHEADER___

import Foundation
import RIBs
import Moya
import ReactorKit

// MARK: - ___VARIABLE_productName___Routing
protocol ___VARIABLE_productName___Routing: ViewableRouting {
}

// MARK: - ___VARIABLE_productName___Presentable
protocol ___VARIABLE_productName___Presentable: Presentable {
  var listener: ___VARIABLE_productName___PresentableListener? { get set }
}

// MARK: - ___VARIABLE_productName___Listener
protocol ___VARIABLE_productName___Listener: class {
  func detach___VARIABLE_productName___RIB()
}

// MARK: - ___VARIABLE_productName___Interactor
final class ___VARIABLE_productName___Interactor:
  PresentableInteractor<___VARIABLE_productName___Presentable>,
  ___VARIABLE_productName___Interactable,
  ___VARIABLE_productName___PresentableListener,
  Reactor
{
  
  // MARK: - Types
  
  typealias Action = ___VARIABLE_productName___PresentableAction
  
  typealias State = ___VARIABLE_productName___PresentableState
  
  enum Mutation {
    case detach
  }
  
  // MARK: - Properties
  
  weak var router: ___VARIABLE_productName___Routing?
  
  weak var listener: ___VARIABLE_productName___Listener?
  
  let initialState: State
  
  // MARK: - Con(De)structor
  
  init(
    initialState: State,
    presenter: ___VARIABLE_productName___Presentable
  ) {
    self.initialState = initialState
    super.init(presenter: presenter)
    presenter.listener = self
  }
}

// MARK: Reactor
extension ___VARIABLE_productName___Interactor {
  
  // MARK: - mutate
  
  func mutate(action: Action) -> Observable<Mutation> {
    switch action {
    case .detachAction:
      return .just(.detach)
    }
  }
  
  // MARK: - Transform mutation
  
  func transform(mutation: Observable<Mutation>) -> Observable<Mutation> {
    return mutation
      .flatMap { [weak self] mutation -> Observable<Mutation> in
        guard let this = self else { return .never() }
        switch mutation {
        case .detach:
          return this.detach___VARIABLE_productName___RIBTransform()
        }
    }
  }
  
  private func detach___VARIABLE_productName___RIBTransform() -> Observable<Mutation> {
    listener?.detach___VARIABLE_productName___RIB()
    return .empty()
  }
  
  // MARK: - reduce
  
  func reduce(
    state: State,
    mutation: Mutation
  ) -> State {
    let newState = state
    switch mutation {
    case .detach:
      logDebug("route logic: \(mutation)")
    }
    return newState
  }
}

// MARK: - ___VARIABLE_productName___Interactable
extension ___VARIABLE_productName___Interactor {
}

// MARK: - ___VARIABLE_productName___PresentableListener
extension ___VARIABLE_productName___Interactor {
}
