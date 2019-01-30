(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     'append)

;;first feature
(require 'b-common)

;;second feature
(require 'b-module)



;;second last feature
(require 'b-hook  )

;;last feature
(require 'b-keybinding)

(provide 'a-init)
;;;a-init.el ends here
