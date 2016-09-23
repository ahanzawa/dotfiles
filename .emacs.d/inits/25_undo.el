;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 6.5 さまざまな履歴管理                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; P137-138 編集履歴を記憶する undohist
;;; install-elisp "http://cx4a.org/pub/undohist.el"
;; undohistの設定
(use-package undohist)
(undohist-initialize)

;;; P138 アンドゥの分岐履歴 undo-tree
;;; (ELPAにてインストール)
;; undo-treeの設定
(use-package undo-tree)
(global-undo-tree-mode)


;;; P139-140 カーソルの移動履歴 point-undo
;; (install-elisp "http://www.emacswiki.org/cgi-bin/wiki/download/point-undo.el")
;; point-undoの設定
(use-package point-undo)
;; (define-key global-map [f5] 'point-undo)
;; (define-key global-map [f6] 'point-redo)
;; 筆者のお勧めキーバインド
(define-key global-map (kbd "M-[") 'point-undo)
(define-key global-map (kbd "M-]") 'point-redo)



