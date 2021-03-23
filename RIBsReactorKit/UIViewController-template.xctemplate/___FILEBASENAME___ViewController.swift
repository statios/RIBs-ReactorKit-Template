//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
  
  // MARK: - Constants
  
  // MARK: - NSLayoutConstraints
  
  // MARK: - Properties
  
  // MARK: - UI Components
  
  // MARK: - Con(De)structor
  
  deinit { logDebug("deinit: \(self)") }
  
  // MARK: - Overridden: UIViewController
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
    setupUI()
  }
  
  // MARK: - Internal methods
  
  // MARK: - Private methods
  
  // MARK: - Selectors
  
  // MARK: - Layout
}

// MARK: - Binding
private extension ___FILEBASENAMEASIDENTIFIER___ {
  func bind() {
    
  }
}

// MARK: - SetupUI
private extension ___FILEBASENAMEASIDENTIFIER___ {
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
