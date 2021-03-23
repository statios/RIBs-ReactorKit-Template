//___FILEHEADER___

import RIBs

// MARK: - ___VARIABLE_productName___Dependency
protocol ___VARIABLE_productName___Dependency: Dependency {
}

// MARK: - ___VARIABLE_productName___Component
final class ___VARIABLE_productName___Component: Component<___VARIABLE_productName___Dependency> {
  fileprivate var initialState: ___VARIABLE_productName___PresentableState {
    ___VARIABLE_productName___PresentableState()
  }
}

// MARK: - ___VARIABLE_productName___Buildable
protocol ___VARIABLE_productName___Buildable: Buildable {
  func build(withListener listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing
}

// MARK: - ___VARIABLE_productName___Builder
final class ___VARIABLE_productName___Builder:
  Builder<___VARIABLE_productName___Dependency>,
  ___VARIABLE_productName___Buildable
{
  
  // MARK: - Con(De)structor
  
  override init(dependency: ___VARIABLE_productName___Dependency) {
    super.init(dependency: dependency)
  }
 
  // MARK: - ___VARIABLE_productName___Buildable
  
  func build(withListener listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing {
    let component = ___VARIABLE_productName___Component(dependency: dependency)
    let viewController = ___VARIABLE_productName___ViewController()
    let interactor = ___VARIABLE_productName___Interactor(
      initialState: component.initialState,
      presenter: viewController
    )
    interactor.listener = listener
    return ___VARIABLE_productName___Router(
      interactor: interactor,
      viewController: viewController
    )
  }
}

// MARK: - ___VARIABLE_productName___Buildable
extension ___VARIABLE_productName___Builder {
  
}
