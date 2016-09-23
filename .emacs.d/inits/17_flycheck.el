;; Flycheck
;; http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b
;(add-hook 'after-init-hook #'global-flycheck-mode)

;; ;; http://futurismo.biz/archives/3071
;; (add-hook 'c-mode-common-hook 'flycheck-mode)
;; ;; @todo C/C++への対応は、もう一手間必要。後で設定する
;; (require 'flycheck)
;; (flycheck-define-checker c/c++
;;   "A C/C++ checker using g++."
;;   :command ("g++" "-Wall" "-Wextra" source)
;;   :error-patterns  ((error line-start
;;                            (file-name) ":" line ":" column ":" " エラー: " (message)
;;                            line-end)
;;                     (warning line-start
;;                              (file-name) ":" line ":" column ":" " 警告: " (message)
;;                              line-end))
;;     :modes (c-mode c++-mode))


;http://ochiailab.blogspot.jp/2016/03/emacsflycheck.html
(require 'flycheck)
(global-flycheck-mode)
(defmacro flycheck-define-clike-checker (name command modes)
  `(flycheck-define-checker ,(intern (format "%s" name))
     ,(format "A %s checker using %s" name (car command))
     :command (,@command source-inplace)
     :error-patterns
     ((warning line-start (file-name) ":" line ":" column ": 警告:" (message) line-end)
      (error line-start (file-name) ":" line ":" column ": エラー:" (message) line-end))
     :modes ',modes))
;; エラーするのでいったん封印
;; (flycheck-define-clike-checker c-gcc-ja
;;        ("gcc" "-fsyntax-only" "-Wall" "-Wextra")
;;        c-mode)
;; (add-to-list 'flycheck-checkers 'c-gcc-ja)
(flycheck-define-clike-checker c++-g++-ja
                               ("g++" "-fsyntax-only" "-Wall" "-Wextra" "-std=c++11")
                               c++-mode)
(add-to-list 'flycheck-checkers 'c++-g++-ja)


(define-key global-map (kbd "\C-cn") 'flycheck-next-error)
(define-key global-map (kbd "\C-cp") 'flycheck-previous-error)
(define-key global-map (kbd "\C-cd") 'flycheck-list-errors)

