;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 検索と置換の拡張                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 要拡張機能インストール
;;;検索結果をリストアップする color-moccur
;;
;; color-moccurの設定
(use-package color-moccur)

;; M-oにoccur-by-moccurを割り当て
(define-key global-map (kbd "M-o") 'occur-by-moccur)
;; C-c oにmoccurを割り当て
(define-key global-map (kbd "C-c o") 'moccur)
;; スペース区切りでAND検索
(setq moccur-split-word t)
;; ディレクトリ検索のとき除外するファイル
(add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
(add-to-list 'dmoccur-exclusion-mask "^#.+#$")
;; Migemoを利用できる環境であればMigemoを使う
(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  (setq moccur-use-migemo t))

;; ;; 要拡張機能インストール
;; ;;; moccurの結果を直接編集 moccur-edit
;; ;; moccur-editの設定
;; (use-package moccur-edit)
;; ;; moccur-edit-finish-editと同時にファイルを保存する
;; (defadvice moccur-edit-change-file
;;   (after save-after-moccur-edit-buffer activate)
;;   (save-buffer))
