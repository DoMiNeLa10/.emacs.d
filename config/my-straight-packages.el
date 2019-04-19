;; configure straight.el
(setq
 ;; avoid checking packages on startup to speed it up
 straight-check-for-modifications '(find-when-checking check-on-save)
 ;; put all autoloads into a single file
 straight-cache-autoloads t)

;; require all packages via straight.el
(mapc
 (lambda (repo-info)
   (let* ((repo-name (car repo-info))
          (package-name (or (cadr repo-info)
                            (intern (cadr (split-string repo-name "/"))))))
     (straight-use-package
      `(,package-name :type git :host github :repo ,repo-name))))
 '(("joaotavora/yasnippet")
   ("DoMiNeLa10/ox-reveal")
   ("stardiviner/ob-php")
   ("skeeto/emacs-http-server" simple-httpd)
   ("DoMiNeLa10/ox-sfhp")
   ("ledger/ledger-mode")
   ("mooz/js2-mode")
   ("felipeochoa/rjsx-mode")
   ("emacs-php/php-mode")
   ("rust-lang/rust-mode")
   ("Emacs-D-Mode-Maintainers/Emacs-D-Mode" d-mode)
   ("fxbois/web-mode")
   ("DoMiNeLa10/web-mode-plus")
   ("DoMiNeLa10/json-mode")
   ("yoshiki/yaml-mode")
   ("haskell/haskell-mode")))
