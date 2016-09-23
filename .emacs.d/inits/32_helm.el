;; helm

;; 主なキーバインド
;;
;; C-u : helm-mini -> メインコマンド
;; C-z : helm-mini実行中に選択されたバッファの中身をチラ見


;; (add-to-list 'load-path "~/.emacs.d/helm")

;; ;; ;; (require 'helm-config)
;; (use-package helm-config)
;; (helm-mode 1)



;;;; Helm の基本設定

(use-package helm
  :ensure helm)
(use-package helm-config)
(use-package helm-migemo
  :ensure helm-migemo)
(use-package helm-mode)
(use-package helm-orgcard
  :ensure helm-orgcard)
(use-package helm-descbinds
  :ensure helm-descbinds)

(use-package helm-ag)


;; ;;; キー設定
;; (global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; (define-key helm-map (kbd "C-j") 'helm-maybe-exit-minibuffer)
;; (define-key helm-map (kbd "M-j") 'helm-select-3rd-action)
;; (define-key helm-map (kbd "C-;") 'anything-keyboard-quit)
;; key settings
;; (global-set-key (kbd "C-u") 'helm-mini)
(global-set-key (kbd "C-u") 'helm-for-files)

;; ;; ;;; 既存のコマンドを Helm インターフェイスに置き換える
;; (helm-mode 1)

;; 自動補完を無効
(custom-set-variables '(helm-ff-auto-update-initial-value nil))

;; ミニバッファでC-hをバックスペースに割り当て
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)

;; ;; TABで補完
;; (define-key helm-read-file-map (kbd "<tab>") 'helm-execute-persistent-action)

;; For find-file etc.
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)


;;; 自動補完を無効
;; (custom-set-variables '(helm-ff-auto-update-initial-value nil))
;;; helm-mode で無効にしたいコマンド
(add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))
(add-to-list 'helm-completing-read-handlers-alist '(find-file-at-point . nil))
(add-to-list 'helm-completing-read-handlers-alist '(write-file . nil))
(add-to-list 'helm-completing-read-handlers-alist '(helm-c-yas-complete . nil))
(add-to-list 'helm-completing-read-handlers-alist '(dired-do-copy . nil))
(add-to-list 'helm-completing-read-handlers-alist '(dired-do-rename . nil))
(add-to-list 'helm-completing-read-handlers-alist '(dired-create-directory . nil))


;;; 一度に表示する最大候補数を増やす
(setq helm-candidate-number-limit 99999)

;; helm-swoop
;; http://rubikitch.com/2014/12/25/helm-swoop/


;; helm-for-filesを快適に使う設定
;; 最近のファイル500個を保存する
(setq recentf-max-saved-items 500)

;; 最近使ったファイルに加えないファイルを正規表現で指定する
(setq recentf-exclude '("/TAGS$" "/var/tmp/"))

;; recentfをディレクトリにも拡張したうえに
;; 「最近開いたファイル」を「最近使ったファイル」に進化させる

(use-package recentf-ext)
(setq helm-for-files-preferred-list
      '(helm-source-buffers-list
        helm-source-recentf
        helm-source-bookmarks
        helm-source-file-cache
        helm-source-files-in-current-dir
        helm-source-bookmark-set
        helm-source-locate))

;; 過去のkill-ringをhelm化
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;;
