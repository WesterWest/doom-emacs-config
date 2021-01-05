;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jáchm Tomášek"
      user-mail-address "jachym.tomasek@tutanota.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;;
;;(add-to-list 'load-path "~/.doom.d/")
;;(require 'writer-dark-theme)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'writer-dark)
;;(load-theme 'nano-theme-dark)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/Notes/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq centaur-tabs-bar-height 24
      centaur-tabs-set-bar nil
      centaur-tabs-style "wave")

(setq lsp-rust-analyzer-server-display-inlay-hints t)

;;(defun lsp-ui-doc-mode ())
;;(defun lsp-ui-peek-mode ())
(add-hook! lsp mode lsp-ui-mode)
(add-hook! lsp-mode lsp-ui-doc-mode)
(add-hook! lsp-mode lsp-ui-peek-mode)

(setq +latex-viewers '(evince))

(setq org-directory "~/Documents/Notes")

(setq evil-snipe-scope 'whole-visible)

;; (use-package! org-link-beautify
;;   :hook (org-mode . org-link-beautify-mode))
(setq org-roam-index-file "~/Documents/Notes/roam/index.org")
(use-package org-roam-server
  :ensure t
  :config
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 8080
        org-roam-server-authenticate nil
        org-roam-server-export-inline-images t
        org-roam-server-serve-files nil
        org-roam-server-served-file-extensions '("pdf" "mp4" "ogv")
        org-roam-server-network-poll t
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))

(use-package org-caldav
  :config
  (setq org-caldav-url "https://calendar.omase.tk/yachimm_thomasegh/"
        org-caldav-id "d47c47fe-cf6c-33ec-b33e-914de0e09e4d"
        org-caldav-inbox "~/Documents/Notes/agenda.org"
        org-caldav-files ("~/Documents/Notes/todo.org")))
