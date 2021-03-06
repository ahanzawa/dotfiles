;;;; ローマ字で日本語をインクリメンタルサーチ
;; 事前にインストール必要
;; $ sudo apt-get install cmigemo
(use-package migemo
  :ensure migemo)

;;; 基本設定
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

;;; migemo-dict のパスを指定
;; ubuntuの場合
(setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)

;;; 辞書の文字コードを指定．
(setq migemo-coding-system 'utf-8-unix)

;;; ライブラリーのロードと初期化
(load-library "migemo")
(migemo-init)
