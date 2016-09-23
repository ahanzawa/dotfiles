;; C-Programming
(defun c-mode-hooks ()
  (c-set-style "stroustrup")
  (setq-default c-basic-offset 4)
  )
(add-hook 'c-mode-hook 'c-mode-hooks)

;; ;; C-Programming
;; (add-hook 'c-mode-hook
;;           (lambda ()
;;             ;(set (make-local-variable 'eldoc-idle-delay) 0.20)  ;c-eldoc.el
;;             ;(c-turn-on-eldoc-mode)                              ;c-eldoc.el
;;             ;; NCOS推奨コーディングスタイル
;;             ;; (setq c-default-style "bsd"
;;             ;;       c-basic-offset 4
;;             ;;       tab-width 4
;;             ;;       indent-tabs-mode nil
;;             ;;       c-brace-offset -4
;;             ;;       c-indent-level 4
;;             ;;       )
;;                                         ;(setq c-site-default-style "bsd"
;;                                         ;      c-basic-offset 4)
;;                                         ; tab ではなく space を使う

;; Flycheck
;(add-hook ‘c-mode-common-hook ‘flycheck-mode)

