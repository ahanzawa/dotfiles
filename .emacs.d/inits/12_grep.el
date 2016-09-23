;; C-x gにgrepを割り当てる
(global-set-key (kbd "C-x g") 'grep)

;;; grepの結果を直接編集─wgrep
;; 要拡張機能インストール
;; wgrepの設定
(use-package wgrep)
