;;;; YASnippet の設定

(use-package yasnippet
  :ensure yasnippet)

;; yasnippetを置いているフォルダにパスを通す
(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/snippets"))

;; yas起動
(yas-global-mode 1)

(custom-set-variables '(yas-trigger-key "TAB"))


;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)


;; (yas-global-mode 1)
;; (setq yas-prompt-functions '(yas-no-prompt))
;; (define-key yas-minor-mode-map (kbd "C-i") nil)


;; ;;; フィールドの編集で smartchr が効かなくなる問題の修正
;; (remove-hook 'c-mode-common-hook
;;              '(lambda ()
;;                 (dolist (k '(":" ">" ";" "<" "{" "}"))
;;                   (define-key (symbol-value (make-local-variable 'yas-keymap))
;;                     k 'self-insert-command))))

;; ;;; キーが重複したときに yas-snippet-dirs のリストで先頭に近い
;; ;;; ディレクトリのスニペットが挿入されるように修正
;; (defun yas--prompt-for-template (templates &optional prompt)
;;   (when templates
;;     (some #'(lambda (fn)
;;               (funcall fn (or prompt "Choose a snippet: ")
;;                        templates
;;                        #'yas--template-name))
;;           yas-prompt-functions)))


