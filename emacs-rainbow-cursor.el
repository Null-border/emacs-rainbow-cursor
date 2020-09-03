
;; we don't want the cursor vanish
(blink-cursor-mode -1)

(setq rainbow-color-list '("#FF0000";red
			   "#FF5000"
			   "#FF9F00";orange
			   "#FFFF00";yellow
			   "#BFFF00"
			   "#00FF00";green
			   "#00FFFF";
			   "#0088FF"
			   "#0000FF";blue
			   "#5F00FF"
			   "#8B00FF";purple
			   "#CF00FF"
			   "#FF0088"
			   ))
;; declair the variable
(setq cursor-color-pointer 1)

;; declaire the function
(defun cursor-color-change ()
  "Take a color from `rainbow-color-list' by the pointer.  
	       The pointer moves by +1, and restore by taking mod.  "
  (setq cursor-color-pointer (% (1+ cursor-color-pointer)
				(length rainbow-color-list)))
  (set-cursor-color (nth cursor-color-pointer
			 rainbow-color-list))
  )

;; main function.  gothrough the `rainbow-color-list' within 0.5s. calls `cursor-color-change' .  
(run-with-timer ()
		(/ .5 (length rainbow-color-list))
		'cursor-color-change)

