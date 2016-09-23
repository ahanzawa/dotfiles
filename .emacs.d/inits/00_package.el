;;;; パッケージ管理システム

(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;;
;; 自動インストール設定
;; 参照:http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0
;;
(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    use-package
    flex-autopair
    smartparens
    auto-complete
    anything
    undohist
    undo-tree
    point-undo
    auto-highlight-symbol
    session
    open-junk-file
    color-moccur
    migemo
    wgrep
    smart-newline
    yasnippet
    flycheck
    helm
    helm-ag
    helm-migemo
    helm-swoop
    ace-isearch
    whitespace
    volatile-highlights
    powerline
    recentf-ext
    guide-key
    e2wm
    web-mode
    markdown-mode
    ;;afternoon-theme
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
