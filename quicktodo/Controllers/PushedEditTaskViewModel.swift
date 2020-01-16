//
//  PushedEditTaskViewModel.swift
//  QuickTodo
//
//  Created by Michael W. Moore on 1/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import Foundation
import RxSwift
import Action

struct PushedEditTaskViewModel {
  
  let itemTitle: String
  let onUpdate: Action<String, Void>
  let disposeBag = DisposeBag()
  
  init(task: TaskItem, coordinator: SceneCoordinatorType, updateAction: Action<String, Void>) {
    itemTitle = task.title
    onUpdate = updateAction
  }
}
