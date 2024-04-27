//
//  TaskView.swift
//  LayoutInCodeDemoApp
//
//  Created by Viktor Prikolota on 26.04.2024.
//

import UIKit
import SnapKit

class TaskView: UIView {

    private let timerLable = UILabel()
    private let iconView = UIImageView()
    private let titleLabel = UILabel()
    private let actionButton = UIButton()

    var action: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .black.withAlphaComponent(0.8)
        layer.cornerRadius = 12

        setupTimerLable()
        setupIconView()
        setupTitleLabel()
        setupActionButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTimerLable() {
        addSubview(timerLable)

        timerLable.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        timerLable.text = "00:32:21"
        timerLable.textColor = .white

        timerLable.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(26)
        }
    }

    private func setupIconView() {
        addSubview(iconView)

        iconView.image = UIImage(named: "ellipse")

        iconView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalTo(timerLable.snp.bottom).offset(24)
            make.size.equalTo(12)
            make.bottom.equalToSuperview().inset(28)
        }
    }

    private func setupTitleLabel() {
        addSubview(titleLabel)

        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        titleLabel.text = "Rasion Project"
        titleLabel.textColor = .white

        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(iconView.snp.trailing).offset(12)
            make.centerY.equalTo(iconView)
        }
    }

    private func setupActionButton() {
        addSubview(actionButton)

        actionButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        actionButton.tintColor = .white

        actionButton.addAction(UIAction { [weak self] _ in
            self?.action?()
        }, for: .touchUpInside)

        actionButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.size.equalTo(25)
            make.centerY.equalTo(timerLable)
        }
    }
}
