;;; tokyo-theme.el --- tokyonight theme inspired by the neovim version -*- lexical-binding:t -*-

;; Author: Rawley Fowler <rawleyfowler@gmail.com>
;; URL: https://github.com/rawleyfowler/tokyonight-emacs

;;; Commentary:
;; You can find the neovim version here: https://github.com/folke/tokyonight.nvim

;;; Code:
(deftheme tokyo
  "It's like tokyo, but at night (for emacs 24+)")

(let ((tokyo-bg "#24283b")
      (tokyo-bg-dark "#1f2335")
      (tokyo-bg-hl "#292e42")
      (tokyo-fg "#c0caf5")
      (tokyo-fg-1 "#a9b1d6")
      (tokyo-fg-2 "#3b4261")
      (tokyo-white "#ffffff")
      (tokyo-black "#414868")
      (tokyo-comment "#565f89")
      (tokyo-dark "#545c7e")
      (tokyo-dark+1 "#737aa2")
      (tokyo-blue-1 "#394b70")
      (tokyo-blue "#3d59a1")
      (tokyo-blue+1 "#7aa2f7")
      (tokyo-blue+2 "#2ac3d3")
      (tokyo-blue+3 "#0db9d7")
      (tokyo-blue+4 "#89ddff")
      (tokyo-blue+5 "#b4f9f8")
      (tokyo-cyan "#7dcfff")
      (tokyo-magenta "#bb9af7")
      (tokyo-magenta+1 "#ff007c")
      (tokyo-purple "#9d7cd8")
      (tokyo-orange "#ff9e64")
      (tokyo-yellow "#e0af68")
      (tokyo-green "#9ece6a")
      (tokyo-teal-1 "#41a6b5")
      (tokyo-teal "#1abc9c")
      (tokyo-teal+1 "#73daca")
      (tokyo-red-1 "#db4b4b")
      (tokyo-red "#f7768e"))
  (custom-theme-set-variables
   'tokyo
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'tokyo

   ;; Uncategorized Coloring
   `(border ((t ,(list :background tokyo-bg
		       :foreground tokyo-bg-hl))))
   `(cursor ((t (:background ,tokyo-white))))
   `(default ((t ,(list :foreground tokyo-fg
			:background tokyo-bg))))
   `(fringe ((t ,(list :background tokyo-bg-dark
		       :foreground tokyo-fg-2))))
   `(link ((t (:foreground ,tokyo-dark+1 :underline t))))
   `(link-visited ((t (:foreground ,tokyo-dark+1 :underline t))))
   `(match ((t (:background ,tokyo-dark+1))))
   `(shadow ((t (:foreground ,tokyo-dark+1))))
   `(minibuffer-prompt ((t :foreground ,tokyo-magenta)))
   `(region ((t (:background ,tokyo-bg-hl :foreground nil))))
   `(secondary-selection ((t ,(list :background tokyo-bg-hl
				    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground tokyo-white
				    :background tokyo-red))))
   `(tooltip ((t ,(list :background tokyo-bg-hl
			:foreground tokyo-fg))))
   `(success ((t (:foreground ,tokyo-green :weight bold))))
   `(warning ((t (:foreground ,tokyo-orange :weight bold))))
   `(tooltip ((t (:foreground ,tokyo-fg :background ,tokyo-fg))))
     
   ;; Calendar
   `(holiday-face ((t (:foreground ,tokyo-red-1))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground tokyo-green
				 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground tokyo-yellow
				    :bold t
				    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,tokyo-red))))
   `(compilation-mode-line-failt ((t ,(list :foreground tokyo-red
					    :weight 'bold
					    :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground tokyo-green
					   :weight 'bold
					   :inherit 'unspecified))))

   ;; Custom
   `(custom-state ((t (:foreground ,tokyo-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground tokyo-red
			     :background nil))))
   `(diff-added ((t ,(list :foreground tokyo-green
			   :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,tokyo-magenta))))
   `(dired-ignored ((t ,(list :foreground tokyo-blue+5
			      :inherit 'unspecified))))

   ;; Add ido support
   `(ido-first-match ((t (:foreground ,tokyo-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,tokyo-orange))))
   `(ido-subdir ((t (:foreground ,tokyo-green))))

   ;; eshell
   `(eshell-ls-backup ((t (:foreground ,tokyo-orange))))
   `(eshell-ls-directory ((t (:foreground ,tokyo-blue))))
   `(eshell-ls-executable ((t (:foreground ,tokyo-green))))
   `(eshell-ls-symlink ((t (:foreground ,tokyo-yellow))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide 'tokyo-theme)
;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; tokyo-theme.el ends here
