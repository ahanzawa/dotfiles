;; ハイライトの設定

;; paren: 対応する括弧を光らせる
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression); カッコ内の色も変更
;(set-face-background 'show-paren-match-face nil)       ; カッコ内のフェイス
;(set-face-underline-p 'show-paren-match-face "yellow") ; カッコ内のフェイス

;;現在行の強調表示

(defface my-hl-line-face
  ;; 背景がdarkならば背景色を紺に
  '((((class color) (background dark))
     (:background "NavyBlue" t))
    ;; 背景がlightならば背景色を緑に
    (((class color) (background light))
     (:background "LightGoldenrodYellow" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode)
(global-hl-line-mode nil)
(require 'hl-line)
(defun global-hl-line-timer-function ()
  (global-hl-line-unhighlight-all)
  (let ((global-hl-line-mode t))
    (global-hl-line-highlight)))
(setq global-hl-line-timer
      (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))
;; (cancel-timer global-hl-line-timer)'))')

;;auto-highlight-symbol-mode
;; (ELPAにてインストール)
;; 変数を選択後、C-x C-a で、ハイライトしている変数を一括でrenameできる
(use-package auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(ahs-set-idle-interval -1.5)
