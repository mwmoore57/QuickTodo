//
//  PushedEditTaskViewController.swift
//  QuickTodo
//
//  Created by Michael W. Moore on 1/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Action
import NSObject_Rx

class PushedEditTaskViewController: UIViewController, BindableType {
  
  @IBOutlet var titleView: UITextView!
  
  var viewModel: PushedEditTaskViewModel!
  
  func bindViewModel() {
    titleView.text = viewModel.itemTitle
    titleView.rx.text
      .orEmpty
      .bind(to: viewModel.onUpdate.inputs.asObserver())
      .disposed(by: self.rx.disposeBag)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    titleView.becomeFirstResponder()
  }
  
}
