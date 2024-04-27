//
//  TaskView.swift
//  LayoutInCodeDemoApp
//
//  Created by Viktor Prikolota on 26.04.2024.
//

import UIKit

class TaskView: UIView {

    private let timerLable = UILabel()
    private let iconView = UIImageView()
    private let titleLabel = UILabel()
    private let actionButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .black.withAlphaComponent(0.8)
        layer.cornerRadius = 12

        setupTimerLable()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTimerLable() {
        addSubview(timerLable)

        timerLable.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        timerLable.text = "00:32:21"
        timerLable.textColor = .white
        timerLable.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            timerLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            timerLable.topAnchor.constraint(equalTo: topAnchor, constant: 26),
        ])
    }
}
