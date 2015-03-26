;; .emacs

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; nuke the splash screen and start msg
(setq inhibit-splash-screet t)
(setq inhibit-startup-message t)

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; find and undo alternatives
(global-set-key "\C-z" 'undo)
(global-set-key "\C-f" 'isearch-forward)

;; turn on font-lock mode
;; fails on rhel5; global-font-lock is enabled by default anyway
;(when (fboundp 'global-font-lock-mode)
;  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
;; this fails on rhel5
;(setq frame-title-format
;      (concat  "%b - emacs@" (system-name)))

;; prevent duplication of compilation buffer
(setq-default display-buffer-reuse-frames t)

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
(setq require-final-newline 'query)

;; disable the bell
(setq visible-bell t)

;; add php support
;; see http://stackoverflow.com/questions/898063/making-php-mode-and-other-cc-mode-derived-modes-compatible-with-emacs-23
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;; YAML mode (
(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; enable indent after newline for YAML
(add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
	
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(c-default-style
   (quote
    ((c-mode . "linux")
     (c++-mode . "linux")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (tango-dark)))
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(mouse-wheel-mode t nil (mwheel))
 '(tool-bar-mode nil nil (tool-bar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Menlo")))))
