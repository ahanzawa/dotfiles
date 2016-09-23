;; emacsclient
;; WindowsとLinuxで挙動が異なるため、それぞれのプラットフォーム用の設定ファイルへ分離

;; for linux
;; ;; emacsclient
;; (require 'server)
;; (unless (server-running-p)
;;   (server-start)
;;   )



;; for Windows
;; ;; emacs-server起動
;; ;(require 'server)
;; (use-package server)
;; (defun server-ensure-safe-dir (dir) "Noop" t)
;; (setq server-socket-dir "~/.emacs.d")
;; (unless (server-running-p)
;;   (server-start)
;; )
