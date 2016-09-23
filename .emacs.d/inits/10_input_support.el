;; 入力補助系

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; インデントの設定 
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TABの表示幅
(setq-default tab-width 4)
;; インデントにタブ文字を使用しない
(setq-default indent-tabs-mode nil)



;; C-o に動的略語展開機能を割り当てる
(define-key global-map "\C-o" 'dabbrev-expand)
(setq dabbrev-case-fold-search nil) ; 大文字小文字を区別

;; 自動インデントを無効化
;; http://blue.hatenadiary.jp/entry/2014/11/20/211335
(electric-indent-mode -1)


