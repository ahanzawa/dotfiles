;;;; 標準コマンドのキー割り当て

;;; サスペンドしない
(global-unset-key (kbd "C-x C-z"))

;;; C-h にバックスペース
(keyboard-translate ?\C-h ?\C-?)

;;; C-x C-rでファイル再読み込み
(global-set-key (kbd "C-x C-r") 'revert-buffer)

;;; C-l をプレフィックスキーとしたため元のコマンドを C-l C-l に変更
;(global-set-key (kbd "C-l C-l") 'recenter-top-bottom)

;;; 置換のコマンドを C-l プレフィックスキーを使ったキーに変更
;(global-set-key (kbd "C-l R") 'query-replace-regexp)
;(global-set-key (kbd "C-l C-r") 'query-replace)

;;; C-x C-cをEmacs終了ではなくクライアントの終了に割り当てる
;;(global-set-key (kbd "C-x C-c") 'server-edit)

;;; ミニバッファで C-w で区切りまで削除
(define-key minibuffer-local-completion-map (kbd "C-w") 'backward-kill-word)
;;;

;; migration


;; Windows風のUndoキーバインド
(global-set-key (kbd "C-z") 'undo)

;; BS で選択範囲を消す
(delete-selection-mode 1)

;; C-x l で goto-line を実行
(define-key ctl-x-map "l" 'goto-line)

;;; windmove
;; (windmove-default-keybindings) ; 引数なしの場合は Shift
;; Alt + 矢印でウィンドウを移動する
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; C-x {↑↓→←}でウィンドウ間を移動
(define-key global-map (kbd "C-x <up>") 'windmove-up)
(define-key global-map (kbd "C-x <down>") 'windmove-down)
(define-key global-map (kbd "C-x <right>") 'windmove-right)
(define-key global-map (kbd "C-x <left>") 'windmove-left)

;; C-x rで文字列置換
(define-key global-map (kbd "C-x r") 'replace-string)
