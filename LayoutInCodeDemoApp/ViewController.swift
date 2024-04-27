//
//  ViewController.swift
//  LayoutInCodeDemoApp
//
//  Created by Viktor Prikolota on 26.04.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let taskLabel = UILabel()
    private let menuButton = UIButton()
    private let taskView = TaskView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .white

        setupTaskLabel()
        setupMenuButton()
        setupTaskView()
    }

    private func setupTaskLabel() {
        view.addSubview(taskLabel)

        taskLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        taskLabel.text = "Task"

        taskLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
    }

    private func setupMenuButton() {
        view.addSubview(menuButton)

        menuButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        menuButton.tintColor = .systemGray2

        menuButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalTo(taskLabel)
            make.size.equalTo(25)
        }
    }

    private func setupTaskView() {
        view.addSubview(taskView)

        taskView.action = {
            let viewController = UIViewController()
            viewController.view.backgroundColor = .red

            self.present(viewController, animated: true)
        }

        taskView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(16)
            make.top.equalTo(taskLabel.snp.bottom).offset(24)
        }
    }
}

