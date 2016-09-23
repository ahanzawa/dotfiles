;; open-junk-file
;; install: M-x install-from-emacs-wiki open-junk-file.el
(use-package open-junk-file)
(setq open-junk-file-format "~/junk/%Y%m%d-%H%M%S.txt")
(global-set-key (kbd "C-x j") 'open-junk-file)
