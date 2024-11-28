;;;; BASE 01:10:21
(setq custom-file "~/.emacs.custom.el") ;; is the custom file
(load custom-file)                      ;; loads the custom file
(menu-bar-mode 0)                       ;; no menu bar
(tool-bar-mode 0)                       ;; no tool bar
(scroll-bar-mode 0)                     ;; no scroll bar
(electric-pair-mode 1)                  ;; closing brackets
(global-display-line-numbers-mode)      ;; line numbers
;;(whitespace-mode 1)
;;(setq-default inhibit-splash-screen t)  ;; no splash screen

;;;; TO-DO
;; custom splash screen (or default/default+)

;;;; MAXIMIZE EMACS
(when (eq system-type 'gnu/linux)
  (defun X11-maximize-frame()
    "Maximize the current frame (to fullscreen)"
    (interactive)
    (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
    (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
  (run-with-idle-timer 0.01 nil 'x11-maximize-frame)
  )
(when (eq system-type 'windows-nt)
  (w32-send-sys-command 61488))
;; to do: android

;;;; SPLASH SCREEN


;;;; PACKAGES
(use-package evil
  :ensure t
  :config
(evil-mode t))


;; CLANG indenting
(setq c-default-style "linux"
      c-basic-offset 4)
