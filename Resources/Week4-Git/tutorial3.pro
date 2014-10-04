pro error1
  ;;;makes a range of numbers and prints them one by one
   x = findgen(10)
   for i = 0, n_elements(x)-1 do begin
       print, x[i]
   endfor
end


pro error2
   ;;;Prints the word hello
   print, 'hello'
end

pro error3
   ;;;Prints a sentence about division and a number
   print, '3 divided by 2 is ', 3./2
end


pro error4
   ;;;Puts two lists together
   x = ['1','2','3']
   y = ['a','b', 'c']
   z = [x, y]
end


pro error5
;;;creates a 2d array, replaces certain positions with different values 
a = fltarr(1000,1000)
s = size(a)
for i = 0, s[1] - 1 do begin
	for j = 0, s[2] - 1 do begin 
		if i+j LT 90 then begin
		a[i,j] = sin(i+j)
		endif
	endfor
endfor
for i=0, s[1] - 1 do begin
	for j=0, s[2] - 1 do begin
		if a[i, j] NE 0 then begin
		a[i,j] = 5
		endif
	endfor
endfor
end
