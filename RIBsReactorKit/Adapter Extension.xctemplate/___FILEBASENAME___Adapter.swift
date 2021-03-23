//___FILEHEADER___

import Foundation

// MARK: - ___VARIABLE_productName___AdapterListener
protocol ___VARIABLE_productName___AdapterListener: class {
}

// MARK: - ___VARIABLE_productName___AdapterDependency
protocol ___VARIABLE_productName___AdapterDependency: Dependency {
}

// MARK: - ___VARIABLE_productName___AdapterComponent
final class ___VARIABLE_productName___AdapterComponent:
  Component<___VARIABLE_productName___AdapterDependency>,
  ___VARIABLE_childName___Dependency
{
  
}

// MARK: - ___VARIABLE_productName___AdapterBuildable
protocol ___VARIABLE_productName___AdapterBuildable: Buildable {
}


final class ___VARIABLE_productName___Adapter:
  Builder<___VARIABLE_productName___AdapterDependency>,
  ___VARIABLE_productName___AdapterBuildable,
  ___VARIABLE_childName___Listener
{
  
  // MARK: - Properties
  
  private weak var listener: ___VARIABLE_productName___AdapterListener?
  
  // MARK: - Con(De)structor
  
  override init(dependency: ___VARIABLE_productName___AdapterDependency) {
    super.init(dependency: dependency)
  }
  
  deinit { logDebug("deinit: \(self)") }
}

// MARK: - ___VARIABLE_childName___Listener
extension ___VARIABLE_productName___Adapter {
  
}
