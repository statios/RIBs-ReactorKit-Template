//___FILEHEADER___

import RIBs

// MARK: - ___VARIABLE_productName___Interactable
protocol ___VARIABLE_productName___Interactable: Interactable {
  var router: ___VARIABLE_productName___Routing? { get set }
  var listener: ___VARIABLE_productName___Listener? { get set }
}

// MARK: - ___VARIABLE_productName___ViewControllable
protocol ___VARIABLE_productName___ViewControllable: ViewControllable {
}

// MARK: - ___VARIABLE_productName___Router
final class ___VARIABLE_productName___Router:
  ViewableRouter<___VARIABLE_productName___Interactable, ___VARIABLE_productName___ViewControllable>,
  ___VARIABLE_productName___Routing
{
  
  // MARK: - Con(De)structor
  
  override init(
    interactor: ___VARIABLE_productName___Interactable,
    viewController: ___VARIABLE_productName___ViewControllable
  ) {
    super.init(
      interactor: interactor,
      viewController: viewController
    )
    interactor.router = self
  }
}

// MARK: - ___VARIABLE_productName___Routing
extension ___VARIABLE_productName___Router {
}
