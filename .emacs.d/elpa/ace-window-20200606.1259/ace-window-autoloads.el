;;; ace-window-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ace-window" "../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window.el"
;;;;;;  "61b63ce89b569294e59694d9a3f722e1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window.el

(autoload 'ace-select-window "ace-window" "\
Ace select window." t nil)

(autoload 'ace-delete-window "ace-window" "\
Ace delete window." t nil)

(autoload 'ace-swap-window "ace-window" "\
Ace swap window." t nil)

(autoload 'ace-delete-other-windows "ace-window" "\
Ace delete other windows." t nil)

(autoload 'ace-display-buffer "ace-window" "\
Make `display-buffer' and `pop-to-buffer' select using `ace-window'.
See sample config for `display-buffer-base-action' and `display-buffer-alist':
https://github.com/abo-abo/ace-window/wiki/display-buffer.

\(fn BUFFER ALIST)" nil nil)

(autoload 'ace-window "ace-window" "\
Select a window.
Perform an action based on ARG described below.

By default, behaves like extended `other-window'.
See `aw-scope' which extends it to work with frames.

Prefixed with one \\[universal-argument], does a swap between the
selected window and the current window, so that the selected
buffer moves to current window (and current buffer moves to
selected window).

Prefixed with two \\[universal-argument]'s, deletes the selected
window.

\(fn ARG)" t nil)

(defvar ace-window-display-mode nil "\
Non-nil if Ace-Window-Display mode is enabled.
See the `ace-window-display-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-window-display-mode'.")

(custom-autoload 'ace-window-display-mode "ace-window" nil)

(autoload 'ace-window-display-mode "ace-window" "\
Minor mode for showing the ace window key in the mode line.

If called interactively, enable Ace-Window-Display mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ace-window" "../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ace-window" '("ace-window-mode" "aw-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/ace-window-20200606.1259/ace-window.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ace-window-autoloads.el ends here
