//
//  ViewController.swift
//  LayoutInCodeDemoApp
//
//  Created by Viktor Prikolota on 26.04.2024.
//

import UIKit

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
        taskLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            taskLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            taskLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
        ])
    }

    private func setupMenuButton() {
        view.addSubview(menuButton)

        menuButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        menuButton.tintColor = .systemGray2
        menuButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            menuButton.centerYAnchor.constraint(equalTo: taskLabel.centerYAnchor),
            menuButton.widthAnchor.constraint(equalToConstant: 25),
            menuButton.heightAnchor.constraint(equalToConstant: 25),
        ])
    }

    private func setupTaskView() {
        view.addSubview(taskView)

        taskView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            taskView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            taskView.topAnchor.constraint(equalTo: taskLabel.bottomAnchor, constant: 24),
            taskView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            taskView.heightAnchor.constraint(equalToConstant: 114)
        ])
    }
}

