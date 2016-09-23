;; ミニバッファ履歴リストの最大長：tなら無限
(setq history-length t)

;; session.el
;;   kill-ringやミニバッファで過去に開いたファイルなどの履歴を保存する
(use-package session)
(setq session-initialize '(de-saveplace session keys menus places)
      session-globals-include '((kill-ring 50)
                                (session-file-alist 500 t)
                                (file-name-history 10000)))
(add-hook 'after-init-hook 'session-initialize)
;; 前回閉じたときの位置にカーソルを復帰
(setq session-undo-check -1)

;; minibuf-isearch
;;   minibufでisearchを使えるようにする
(use-package minibuf-isearch)


;;Emacs の コピー/ペースト をクリップボードで行う
;; http://qiita.com/akisute3@github/items/f5ccc2b027a9aaa13fe4
(setq x-select-enable-clipboard t)
