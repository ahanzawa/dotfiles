;; ターミナル以外はツールバー、スクロールバーを非表示
(when window-system
  ;; tool-barを非表示
  (tool-bar-mode 0)
  ;; scroll-barを非表示
  (scroll-bar-mode 0))

;; CocoaEmacs以外はメニューバーを非表示
(unless (eq window-system 'ns)
  ;; menu-barを非表示
  (menu-bar-mode 0))

;; カラム番号も表示
(column-number-mode t)

;; ファイルサイズを表示
;; (size-indication-mode t)

;; 時計を表示（好みに応じてフォーマットを変更可能）
;; (setq display-time-day-and-date t) ; 曜日・月・日を表示
;; (setq display-time-24hr-format t) ; 24時表示
;; (display-time-mode t)

;; ;; リージョン内の行数と文字数をモードラインに表示する（範囲指定時のみ）
;; ;; http://d.hatena.ne.jp/sonota88/20110224/1298557375
;; (defun count-lines-and-chars ()
;;   (if mark-active
;;       (format "%d lines,%d chars "
;;               (count-lines (region-beginning) (region-end))
;;               (- (region-end) (region-beginning)))
;;     ;; これだとエコーエリアがチラつく
;;     ;;(count-lines-region (region-beginning) (region-end))
;;     ""))

;; (add-to-list 'default-mode-line-format
;;              '(:eval (count-lines-and-chars)))

;;; P90 タイトルバーにファイルのフルパスを表示
;(setq frame-title-format "%f")

;; 行番号を常に表示する
(global-linum-mode t)

;; 5 桁分の領域を確保して行番号のあとにスペースを入れる
(setq linum-format "%5d ") 

