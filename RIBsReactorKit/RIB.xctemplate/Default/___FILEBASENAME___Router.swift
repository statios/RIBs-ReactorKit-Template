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
  Router<___VARIABLE_productName___Interactable>,
  ___VARIABLE_productName___Routing
{
  
  init(
    interactor: ___VARIABLE_productName___Interactable,
    viewController: ___VARIABLE_productName___ViewControllable
  ) {
    self.viewController = viewController
    super.init(interactor: interactor)
    interactor.router = self
  }
  
  // MARK: - Private
  
  private let viewController: ___VARIABLE_productName___ViewControllable
}
