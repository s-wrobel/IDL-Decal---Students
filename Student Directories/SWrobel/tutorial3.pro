pro error1      ;wants to print x, i times

   x = findgen(10)
   for i = 0, n_elements(x) do begin

      print, x    ;there's no need to have (i) as it is implied that x will be printed i times from the for statement

   endfor
end



pro error2      ;wants to print the word "hello"
                ;procedures must be begun with "pro" not "pr"
  
 print, "hello"    ;print must be followed by a comma and words must be put in quotes to make them strings

end



pro error3      ;wants to print the phrase below

   print, '3 divided by 2 is 3/2'    ;must keep all of the phrase as one type, in this case a string

end



pro error3a   ;must be called something different than error3 as the previous procedure is called error3
              ;wants to print z which is composed of x and y

   x = [string(1),string(2),string(3)]   ;all components of an array must be of the same type so the integers; 1,2,3 must be written as strings

   y = ['a','b','c']
   z = [x, y]      

   print, z    ;must print the wanted variable otherwise nothing useful happens

end    ;must be "end" not "ed"



pro error4       ;wants to take a 1000x1000 float array and depending on whether the sum of the dim i and j is less than 90 or not zero two results will occur for a[i,j]
 
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
  endfor    ;should indent code so that the statements can be matched up, making sure that each statement is ended properly. in this case there was a missing endfor statement before the last end statement which caused the procedure to not be finished

end

