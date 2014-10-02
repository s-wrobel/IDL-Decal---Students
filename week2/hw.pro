pro swap_em, x, y
	a = x
	c = y
	y = a
	x = c	

end
;IDL> .com hw.pro
;% Compiled module: SWAP_EM.
;IDL> swap_em, 5, 6
;IDL> print, x
;% PRINT: Variable is undefined: X.
;% Execution halted at: $MAIN$          
;IDL> x = 5
;IDL> y =6 
;IDL> swap_em, x,y 
;IDL> 
;IDL> print, x
;       6
;IDL> print, y
;       5
;IDL>
;yay it works 
function nth_root, number, nthroot
; print, nth_root(8,3)
; 2.000
	answer = (number^(1.0/nthroot))
	return, answer
end

function factorial, number
	; recursion cause iteration is for punks
	if (number lt 0) then begin
		return,'nah'
	endif
	if (size(number, /type) ne 2) then begin
		return, 'put an integer in punk'
	endif
 
 	
	 if (number eq 0) then begin

		return, 1
	endif else begin 
		return, factorial(number-1)*number 
	endelse
	
end


pro swagfor, number1, number2
	if (number1 gt number2) or (number1 lt 0)  or (number2 lt 0) or (size(number1, /type) ne 2) or (size(number2, /type) ne 2) then begin

		print, 'enter it correctly fool and remember integers only!'


	endif else begin
	
			for i=number1, number2 DO BEGIN
			print, (i^(1./2))
		endfor
	endelse
end


pro swagwhile, number1, number2
	if (number1 gt number2) or (number1 lt 0) or (number2 lt 0)  or (number2 lt 0) or (size(number1, /type) ne 2) or (size(number2, /type) ne 2) then begin
		print, 'enter it correctly homie'
	endif else begin
		while (number1 lt number2) do begin
			print, (number1^(1./2))
			number1++ 
		endwhile
	endelse
end

