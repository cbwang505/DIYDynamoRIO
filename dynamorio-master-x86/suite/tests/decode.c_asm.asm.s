








































































































































































































































































































































































































































































































































































































   

























































  



  





















   




  



































































































































































































































































































































































































































































































































































































































































































































































































.686 
.XMM 
.MODEL flat, c 
ASSUME fs:_DATA 
.CODE


        test_modrm16 PROC

        
        mov      eax, dword ptr [ 1*4 + esp]
        push ebx 
 
 push ebp 
 
 push esi 
 
 push edi 

        push eax 

        
        mov      ax, 4
        mov      bx, 8
        mov      cx, 4
        mov      dx, 8
        mov      si, 4
        mov      di, 8
        mov      bp, 8
         
 call dword ptr [esp] 
 
        pop      eax 
        add      esp, 0 
        pop edi 
 pop esi 
 pop ebp 
 pop ebx
        ret
        test_modrm16 ENDP



        test_nops PROC

        DB 066h 
 DB 090h 

        DB 067h 
 DB 090h 

        DB 0f2h 
 DB 090h 

        DB 0f3h 
 DB 090h 

        DB 066h 
 DB 066h 
 DB 066h 
 DB 066h 
 DB 066h 
 DB 090h 

        DB 00fh 
 DB 01fh 
 DB 000h 

        DB 00fh 
 DB 01fh 
 DB 040h 
 DB 000h 

        DB 00fh 
 DB 01fh 
 DB 044h 
 DB 000h 
 DB 000h 

        DB 066h 
 DB 00fh 
 DB 01fh 
 DB 044h 
 DB 000h 
 DB 000h 

        DB 00fh 
 DB 01fh 
 DB 080h 
 DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 

        DB 00fh 
 DB 01fh 
 DB 084h 
 DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 

        DB 066h 
 DB 00fh 
 DB 01fh 
 DB 084h 
 DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 

        ret
        test_nops ENDP



        test_sse3 PROC

        mov    eax, dword ptr [ 1*4 + esp]
        DB 0f2h 
 DB 00fh 
 DB 07ch 
 DB 020h 
 
        DB 0f2h 
 DB 00fh 
 DB 07dh 
 DB 020h 
 
        DB 0f2h 
 DB 00fh 
 DB 0d0h 
 DB 020h 
 
        DB 0f2h 
 DB 00fh 
 DB 0f0h 
 DB 020h 
 
        DB 0f3h 
 DB 00fh 
 DB 012h 
 DB 020h 
 
        DB 0f2h 
 DB 00fh 
 DB 012h 
 DB 020h 
 
        DB 0f3h 
 DB 00fh 
 DB 016h 
 DB 020h 
 





        mov  ecx, 0
        mov  edx, 0
        DB 00fh 
 DB 001h 
 DB 0c8h 
 
        DB 00fh 
 DB 001h 
 DB 0c9h 
 
        

        DB 0f3h 
 DB 00fh 
 DB 07ch 
 DB 020h 
 
        ret
        test_sse3 ENDP



        test_avx512_vex PROC

        mov    eax, dword ptr [ 1*4 + esp]
        DB 0c5h 
 DB 0f8h 
 DB 090h 
 DB 0c8h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 090h 
 DB 0dah 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 090h 
 DB 0ech 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 090h 
 DB 0feh 
         
        DB 0c5h 
 DB 0f8h 
 DB 090h 
 DB 045h 
 DB 0e4h 
         
        DB 0c5h 
 DB 0f9h 
 DB 090h 
 DB 04dh 
 DB 0e4h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 090h 
 DB 055h 
 DB 0e4h 
 
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 090h 
 DB 05dh 
 DB 0e4h 
 
        DB 0c5h 
 DB 0f8h 
 DB 091h 
 DB 065h 
 DB 0e4h 
         
        DB 0c5h 
 DB 0f9h 
 DB 091h 
 DB 06dh 
 DB 0e4h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 091h 
 DB 075h 
 DB 0e4h 
 
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 091h 
 DB 07dh 
 DB 0e4h 
 
        DB 0c5h 
 DB 0f8h 
 DB 092h 
 DB 0c0h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 092h 
 DB 0cbh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0fbh 
 DB 092h 
 DB 0d1h 
         
        DB 0c5h 
 DB 0fbh 
 DB 092h 
 DB 0dah 
                 
        DB 0c5h 
 DB 0f8h 
 DB 093h 
 DB 0f4h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 093h 
 DB 0fdh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0fbh 
 DB 093h 
 DB 0c6h 
         
        DB 0c5h 
 DB 0fbh 
 DB 093h 
 DB 0dfh 
                 
        DB 0c5h 
 DB 0f4h 
 DB 041h 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 041h 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 041h 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 041h 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f4h 
 DB 042h 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 042h 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 042h 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 042h 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f5h 
 DB 04bh 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0c4h 
 DB 04bh 
 DB 0c6h 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0ech 
 DB 04bh 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f8h 
 DB 044h 
 DB 0c8h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 044h 
 DB 0dah 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 044h 
 DB 0ech 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 044h 
 DB 0feh 
         
        DB 0c5h 
 DB 0f4h 
 DB 045h 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 045h 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 045h 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 045h 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f4h 
 DB 046h 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 046h 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 046h 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 046h 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f4h 
 DB 047h 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 047h 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 047h 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 047h 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f4h 
 DB 04ah 
 DB 0d0h 
                 
        DB 0c5h 
 DB 0ddh 
 DB 04ah 
 DB 0ebh 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0c4h 
 DB 04ah 
 DB 0c6h 
         
        DB 0c4h 
 DB 0e1h 
 DB 0edh 
 DB 04ah 
 DB 0d9h 
         
        DB 0c5h 
 DB 0f8h 
 DB 098h 
 DB 0c8h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 098h 
 DB 0dah 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 098h 
 DB 0ech 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 098h 
 DB 0feh 
         
        DB 0c5h 
 DB 0f8h 
 DB 099h 
 DB 0c8h 
                 
        DB 0c5h 
 DB 0f9h 
 DB 099h 
 DB 0dah 
                 
        DB 0c4h 
 DB 0e1h 
 DB 0f8h 
 DB 099h 
 DB 0ech 
         
        DB 0c4h 
 DB 0e1h 
 DB 0f9h 
 DB 099h 
 DB 0feh 
         
        DB 0c4h 
 DB 0e3h 
 DB 0f9h 
 DB 032h 
 DB 0c8h 
 DB 0ffh 
 
        DB 0c4h 
 DB 0e3h 
 DB 079h 
 DB 032h 
 DB 0dah 
 DB 07bh 
 
        DB 0c4h 
 DB 0e3h 
 DB 0f9h 
 DB 033h 
 DB 0ech 
 DB 007h 
 
        DB 0c4h 
 DB 0e3h 
 DB 079h 
 DB 033h 
 DB 0feh 
 DB 063h 
 
        DB 0c4h 
 DB 0e3h 
 DB 0f9h 
 DB 030h 
 DB 0c8h 
 DB 0dfh 
 
        DB 0c4h 
 DB 0e3h 
 DB 079h 
 DB 030h 
 DB 0dah 
 DB 065h 
 
        DB 0c4h 
 DB 0e3h 
 DB 0f9h 
 DB 031h 
 DB 0ech 
 DB 005h 
 
        DB 0c4h 
 DB 0e3h 
 DB 079h 
 DB 031h 
 DB 0feh 
 DB 02fh 
 
        ret
        test_avx512_vex ENDP



        test_3dnow PROC

        mov    eax, dword ptr [ 1*4 + esp] 
        DB 00fh 
 DB 00eh 
                   
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0bfh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 09eh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0aeh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 090h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0a0h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0b0h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 094h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0a4h 
 
        
        DB 00fh 
 DB 00fh 
 DB 048h 
 DB 00ah 
 DB 0b4h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 096h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0a6h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0b6h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 097h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0a7h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0b7h 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 09ah 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0aah 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 00dh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 01dh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 00ch 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 01ch 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 08ah 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 08eh 
 
        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 0bbh 
 
        

        DB 00fh 
 DB 00fh 
 DB 008h 
 DB 000h 
 
        ret
        test_3dnow ENDP

EXTERN mark:PROC








EXTERN _setjmp3:PROC



















































        test_far_cti PROC

        
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_1
        
        DB 0eah 
 DB 012h 
 DB 034h 
 DB 056h 
 DB 0f8h 
 DB 09ah 
 DB 0bch 

    test_far_cti_1:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_2
        
        DB 0eah 
 DB 012h 
 DB 034h 
 DB 056h 
 DB 078h 
 DB 09ah 
 DB 0bch 

    test_far_cti_2:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_3
        
        DB 09ah 
 DB 012h 
 DB 034h 
 DB 056h 
 DB 0f8h 
 DB 09ah 
 DB 0bch 

    test_far_cti_3:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_4
        
        DB 09ah 
 DB 012h 
 DB 034h 
 DB 056h 
 DB 078h 
 DB 09ah 
 DB 0bch 

    test_far_cti_4:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_5
        
        mov   eax, 0deadbeefh
        DB 0ffh 
 DB 028h 
 
    test_far_cti_5:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_far_cti_6
        
        mov   eax, 0deadbeefh
        DB 0ffh 
 DB 018h 
 
    test_far_cti_6:
        ret
        test_far_cti ENDP



        test_data16_mbr PROC

        




        








        push 0deadbeefh 





        
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_1
        mov   ecx, 0deadbeefh 


        


        DB 066h 
 DB 0ffh 
 DB 0d1h 
 
    test_data16_mbr_1:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_2
        mov   ecx, 0deadbeefh 
        DB 066h 
 DB 0ffh 
 DB 0e1h 
 
    test_data16_mbr_2:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_3
        
        







        DB 066h 
 DB 0c3h 
 
    test_data16_mbr_3:
    
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_4
        
        DB 066h 
 DB 0eah 
 DB 056h 
 DB 078h 
 DB 09ah 
 DB 0bch 

    test_data16_mbr_4:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_5
        
        DB 066h 
 DB 09ah 
 DB 056h 
 DB 0f8h 
 DB 09ah 
 DB 0bch 

    test_data16_mbr_5:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_6
        mov   eax, 0deadbeefh
        DB 066h 
 DB 0ffh 
 DB 028h 
 
    test_data16_mbr_6:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_7
        mov   eax, 0deadbeefh
        DB 066h 
 DB 0ffh 
 DB 018h 
 
    test_data16_mbr_7:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_8
        







        DB 066h 
 DB 0cbh 
 

    test_data16_mbr_8:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_9
        DB 066h 
 DB 0e9h 
 DB 000h 
 DB 000h 
 
        
        DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 

    test_data16_mbr_9:
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        cmp   eax, 0
        jne   test_data16_mbr_10
        DB 066h 
 DB 0e8h 
 DB 000h 
 DB 000h 
 
        
        DB 000h 
 DB 000h 
 DB 000h 
 DB 000h 

    test_data16_mbr_10:
        add      esp, 4 
        ret
        test_data16_mbr ENDP

EXTERN func_ptr:PROC



        test_rip_rel_ind PROC

        sub esp, 16 - 4  




        
        lea eax, mark 
  
 push 0 
 push eax 
 call _setjmp3 
 lea esp, [4*2 + esp]
        call     dword ptr [func_ptr]
        add esp, 16 - 4
        ret
        test_rip_rel_ind ENDP



       


        test_bsr PROC

        push ebx 
 
 push ebp 
 
 push esi 
 
 push edi 

        

        
        DB 066h 
 DB 00Fh 
 DB 0BBh 
 DB 0E9h 
 
        DB 066h 
 DB 00Fh 
 DB 0BCh 
 DB 0E9h 
 
        DB 066h 
 DB 00Fh 
 DB 0BDh 
 DB 0E9h 
 
        DB 0f2h 
 DB 00Fh 
 DB 0BBh 
 DB 0E9h 
 
        DB 0f2h 
 DB 00Fh 
 DB 0BCh 
 DB 0E9h 
 
        DB 0f2h 
 DB 00Fh 
 DB 0BDh 
 DB 0E9h 
 
        DB 0f3h 
 DB 00Fh 
 DB 0BBh 
 DB 0E9h 
 
        DB 0f3h 
 DB 00Fh 
 DB 0BCh 
 DB 0E9h 
 
        DB 0f3h 
 DB 00Fh 
 DB 0BDh 
 DB 0E9h 
 

        add      esp, 0 
        pop edi 
 pop esi 
 pop ebp 
 pop ebx
        ret
        test_bsr ENDP



       


        test_SSE2 PROC

        push ebx 
 
 push ebp 
 
 push esi 
 
 push edi 

        

        DB 066h 
 DB 00Fh 
 DB 0D8h 
 DB 0E9h 
 
        
        DB 0f2h 
 DB 00Fh 
 DB 0D8h 
 DB 0E9h 
 
        DB 0f3h 
 DB 00Fh 
 DB 0D8h 
 DB 0E9h 
 

        add      esp, 0 
        pop edi 
 pop esi 
 pop ebp 
 pop ebx
        ret
        test_SSE2 ENDP



        
        test_mangle_seg PROC

        
        push     eax
        mov      ax, fs
        mov      word ptr [esp], fs





        pop      eax
        add      esp, 0 
        ret
        test_mangle_seg ENDP
END


