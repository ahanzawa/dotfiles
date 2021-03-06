;;; Anything
;;; (ELPAにてインストール)
;;; Anything の基本設定
;;; リスト1 Anythingの設定サンプル
;; (auto-install-batch "anything")
(when (require 'anything nil t)
  (setq
   ;; 候補を表示するまでの時間。デフォルトは0.5
   anything-idle-delay 0.3
   ;; タイプして再描写するまでの時間。デフォルトは0.1
   anything-input-idle-delay 0.2
   ;; 候補の最大表示数。デフォルトは50
   anything-candidate-number-limit 100
   ;; 候補が多いときに体感速度を早くする
   anything-quick-update t
   ;; 候補選択ショートカットをアルファベットに
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    ;; root権限でアクションを実行するときのコマンド
    ;; デフォルトは"su"
    (setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)
  (and (equal current-language-environment "Japanese")
       (executable-find "cmigemo")
       (require 'anything-migemo nil t))
  (when (require 'anything-complete nil t)
    ;; M-xによる補完をAnythingで行なう
    ;; (anything-read-string-mode 1)
    ;; lispシンボルの補完候補の再検索時間
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
    ;; describe-bindingsをAnythingに置き換える
    (descbinds-anything-install))
  ;; C-c d でdescribe-bindings を実行する
  (global-set-key (kbd "C-c d") 'describe-bindings)

  (require 'anything-grep nil t)

  ;;; 特に個人的な設定
  ;; C-u で anything
  (define-key global-map (kbd "C-c u") 'anything)
  ;; M-y で anything-show-kill-ring
  (define-key global-map (kbd "M-y") 'anything-show-kill-ring)

              ;;; P88
              ;;; manやinfoを調べるコマンドを作成してみる
  ;; anything-for-document 用のソースを定義
  (setq anything-for-document-sources
        (list anything-c-source-man-pages
              anything-c-source-info-cl
              anything-c-source-info-pages
              anything-c-source-info-elisp
              anything-c-source-apropos-emacs-commands
              anything-c-source-apropos-emacs-functions
              anything-c-source-apropos-emacs-variables))
  ;; anything-for-document コマンドを作成
  (defun anything-for-document ()
    "Preconfigured `anything' for anything-for-document."
    (interactive)
    (anything anything-for-document-sources (thing-at-point 'symbol) nil nil nil "*anything for document*"))
  ;; Command+d に anything-for-documentを割り当て
  (define-key global-map (kbd "s-d") 'anything-for-document)

                    ;;; P90
                    ;;; anything-project: プロジェクトからファイルを絞り込み
  ;; (install-elisp "http://github.com/imakado/anything-project/raw/master/anything-project.el")
  (when (require 'anything-project nil t)
    (global-set-key (kbd "C-c C-f") 'anything-project)
    (setq ap:project-files-filters
          (list
           (lambda (files)
             (remove-if 'file-directory-p files)
             (remove-if '(lambda (file) (string-match-p "~$" file)) files)))))

                  ;;; P90
                  ;;; anything-c-moccur: MoccurのAnythingインターフェイス
  ;; (install-elisp "http://svn.coderepos.org/share/lang/elisp/anything-c-moccur/trunk/anything-c-moccur.el")
  ;; (when (require 'anything-c-moccur nil t)
  ;;   (setq
  ;;    ;; anything-c-moccur用 `anything-idle-delay'
  ;;    anything-c-moccur-anything-idle-delay 0.1

  ;;    ;; バッファの情報をハイライトする
  ;;    anything-c-moccur-higligt-info-line-flag t
  ;;    ;; 現在選択中の候補の位置を他のwindowに表示する
  ;;    anything-c-moccur-enable-auto-look-flag t
  ;;    ;; 起動時にポイントの位置の単語を初期パターンにする
  ;;    anything-c-moccur-enable-initial-pattern t)

  ;;   (global-set-key (kbd "C-x o")
  ;;                   'anything-c-moccur-occur-by-moccur))
  )
