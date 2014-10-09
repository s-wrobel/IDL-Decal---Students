;This tutorial is all about finding out the name of the real tutorial by
;playing with strings. Let's get to it!

pro fake_out

     readcol, 'clues.txt', clues, format = 'A'
     ;the above function just reads in
     ;strings from the text file clues.txt
     ;we'll learn more about this next week
     
    
     ;FOLLOW THE FOLLOWING INSTRUCTIONS AND CONCATENATE THE RESULTS OF EACH INTO AN ARRAY
     
     ;1. extract the first letter of the first string in clues and make it
     ;   lowercase (use strlowcase)
   
       a = strlowcase(strmid(clues[0], 0,1))          ;;;finds and extracts the first letter of string 1 and makes it lowercase
      ; print, a
     
     ;2. find the string containing the
     ;substring 'og' and extract it from that
     ;string

      b = strpos(clues, 'og')                         ;;;finds 'og' position
      for i= 0, n_elements(b)-1 do begin              ;;;sets i as range of b 

         if b[i] GT -1 then begin                     
           c =  strmid(clues[i],b[i],2)               ;;;extracts 'og' from array that is GT -1 for the ith array in b
       ;    print, c
        endif

      endfor


     ;3. add in an '_'

     d = strjoin([c,'_'])
     ;print, d

     ;4. find the string containing 'ate' and
     ;extract 3 letters from the p on

     e = strpos(clues, 'ate')
     f = strpos(clues, 'p')                           ;;;finds where 'ate' and 'p' are located
      for i= 0, n_elements(e)-1 do begin

         if e[i] GT -1 then begin

            for j= 0, n_elements(f)-1 do begin

               if f[j] GT -1 then begin
                 g =  strmid(clues[i], f[j], 3)       ;;;same idea as with 2 except specifies that extraction begins at 'p' in thearray that has 'ate'

      ;           print, g 
               endif

            endfor
           
         endif

      endfor

     ;5. find the string containing 'x' and extract the first two letters

       h = strpos(clues, 'x')
      for i= 0, n_elements(h)-1 do begin

         if h[i] GT -1 then begin
            l =  strmid(clues[i], 0, 2)               ;;;same idea as 2 except with 'x'
       ;          print, l
         endif

      endfor



     ;6. use strjoin to collape your array into a single string

     m = strjoin([a,d,g,l])                           ;;;joins the wanted strings together
    ; print, m

     ;7. use repstr to replace the second o in your string with ''
     ;   (try using the /reverse_search option in strpos)      

     n = strpos(m, 'o', /reverse_search)              ;;;finds the second position of 'o'

     o = strmid(m, 0, n) + strmid(m, n+1)             ;;;adds together two extractions that exclude the second 'o'
    ; print, o
    

     ;8. add in a '.pro'


     final = strjoin([o, '.pro'])                     ;;adds suffix '.pro'

     ;9. print your string and go find the file  in /home/jzalesky/public_html

      print, final

     ;   and open it in emacs
end     



      ;;;Lumberjack fantasies have me oggling axes with less prudent
      ;;;intentions. Don't judge me for finding an amusing way to
      ;;;incorporate the word axes.
