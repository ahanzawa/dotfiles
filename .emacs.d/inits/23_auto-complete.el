;; 高機能補完＋ポップアップ
;; auto-complete

(use-package auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
(define-key ac-mode-map (
                         kbd "M-TAB") 'auto-complete)
(ac-config-default)
;; 大文字・小文字を区別しない
(setq ac-ignore-case t)
;;トリガーキーを有効にしない
                                        ;(setq ac-auto-start nil)
;; C-n/C-p で候補を選択
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

