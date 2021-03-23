//___FILEHEADER___

import UIKit

import RxSwift
import RxCocoa
import ReactorKit

// MARK: - ___VARIABLE_productName___PresentableAction
enum ___VARIABLE_productName___PresentableAction {
  case detachAction
}

// MARK: - ___VARIABLE_productName___PresentableListener
protocol ___VARIABLE_productName___PresentableListener: class {
  typealias Action = ___VARIABLE_productName___PresentableAction
  typealias State = ___VARIABLE_productName___PresentableState
  
  var action: ActionSubject<Action> { get }
  var state: Observable<State> { get }
  var currentState: State { get }
}

// MARK: - ___VARIABLE_productName___ViewController
final class ___VARIABLE_productName___ViewController:
  UIViewController,
  ___VARIABLE_productName___Presentable,
  ___VARIABLE_productName___ViewControllable
{
  // MARK: - Constants
  
  // MARK: - Properties
  
  weak var listener: ___VARIABLE_productName___PresentableListener?
  
  private let detachActionRelay = PublishRelay<Void>()
  
  // MARK: - UI Components
  
  // MARK: - Con(De)structor
  
  deinit { logInfo("deinit: \(self)") }
  
  // MARK: - Overridden: UIViewController
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bind(to: listener)
    setupUI()
  }
  
  // MARK: - Internal methods
  
  // MARK: - Private methods
  
  // MARK: - Selectors
}

// MARK: - Binding
private extension ___VARIABLE_productName___ViewController {
  func bind(to listener: ___VARIABLE_productName___PresentableListener?) {
    guard let listener = listener else { return }
    bindDetachAction(to: listener)
  }
  
  func bindDetachAction(to listener: ___VARIABLE_productName___PresentableListener) {
    detachActionRelay
      .map { .detachAction }
      .bind(to: listener.action)
      .disposed(by: rx.disposeBag)
  }
}

// MARK: - SetupUI
private extension ___VARIABLE_productName___ViewController {
  func setupUI() {
    layout()
    setupProperties()
  }
  
  func layout() {
    
  }
  
  func setupProperties() {
    view.backgroundColor = .white
  }
}

// MARK: - ___VARIABLE_productName___Presentable
extension ___VARIABLE_productName___ViewController {
  
}

// MARK: - ___VARIABLE_productName___ViewControllable
extension ___VARIABLE_productName___ViewController {
}
