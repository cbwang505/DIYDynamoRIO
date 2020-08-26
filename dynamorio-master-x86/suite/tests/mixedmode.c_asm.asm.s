























































































































































































































































































































































































































   

























































  



  





















   




  



































































































































































































































































































































































































































































































































































































































































































































































































.686 
.XMM 
.MODEL flat, c 
ASSUME fs:_DATA 
.CODE














EXTERN global_data:PROC
EXTERN is_x86_to_x64:PROC

























        test_top_bits PROC

        
 
 DB 0eah 
 
 DD offset switch_32_to_64_set_r8 
 DB 033h 
 DB 000h 
 
 switch_32_to_64_set_r8: 
 nop
        
        DB 049h 

          mov      eax, 012345678h
          DD 012345678h
        
 
 push offset switch_64_to_32_no_more_r8 
 mov dword ptr [esp + 4], 023h 
 jmp fword ptr [esp] 
 switch_64_to_32_no_more_r8: 
 lea esp, [esp + 8]
        
 
 DB 0eah 
 
 DD offset switch_32_to_64_retrieve_r8 
 DB 033h 
 DB 000h 
 
 switch_32_to_64_retrieve_r8: 
 nop
        


        mov      ecx, offset global_data
        
        DB 04ch 

          mov      dword ptr [ecx], eax
        
 
 push offset switch_64_to_32_back_to_normal 
 mov dword ptr [esp + 4], 023h 
 jmp fword ptr [esp] 
 switch_64_to_32_back_to_normal: 
 lea esp, [esp + 8]
        ret
        test_top_bits ENDP



        test_push_word PROC

        mov      ecx, offset global_data
        push     word ptr [ecx]
        push     word ptr 08765h
        pop      edx
        cmp      edx, 056788765h
        jnz      push_word_exit
        mov      ax, 0abcdh
        push     ax
        
        DB 066h 

          push   byte ptr 0ffh
        pop      edx
    push_word_exit:
        mov      dword ptr [ecx], edx
        ret
        test_push_word ENDP



        test_pop_word PROC

        mov      ecx, offset global_data
        push     012345678h
        pop      word ptr [ecx + 2]
        pop      ax
        mov      word ptr [ecx], ax
        ret
        test_pop_word ENDP



        test_push_es PROC

        mov      edx, 0e5e5e5e5h
        mov      ax, es
        push     es
        pop      ecx
        cmp      cx, ax
        jz       push_es_exit
        mov      edx, 0deadbeefh
    push_es_exit:
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_push_es ENDP



        test_pop_es PROC

        mov      edx, 05e5e5e5eh
        mov      ax, es
        movzx    eax, ax
        push     eax
        pop      es
        mov      cx, es
        cmp      cx, ax
        jz       pop_es_exit
        mov      edx, 0deadbeefh
    pop_es_exit:
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_pop_es ENDP



        test_push_esp PROC

        mov      edx, esp
        add      edx, edx
        push     esp
        sub      edx, [esp]
        pop      esp
        sub      edx, esp
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_push_esp ENDP



        test_pusha PROC

        mov      edx, 011223344h
        pushad
        mov      edx, 0deadbeefh
        popad
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_pusha ENDP



        test_pushf PROC

        mov      edx, 055667788h
        cmp      edx, 055667788h
        pushfd
        cmp      edx, 0deadbeefh
        popfd
        jz       pushf_exit
        mov      edx, 0deadbeefh
    pushf_exit:
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_pushf ENDP



        test_les PROC

        mov      ax, es
        push     es
        push     087654321h
        les      edx, fword ptr [esp]
        add      esp, 8
        mov      cx, es
        cmp      cx, ax
        jz       les_exit
        mov      edx, 0deadbeefh
    les_exit:
        mov      ecx, offset global_data
        mov      dword ptr [ecx], edx
        ret
        test_les ENDP



        test_lea_addr32 PROC

        push     01EAADD32h
        lea      esp, [esp + 4]
        lea      esp, [esp - 4]
        lea      esp, [esp + 04000h]
        lea      esp, [esp - 04000h]
        pop      edx
        mov      ecx, -8
        mov      dword ptr [ecx + (offset global_data + 8)], edx
        ret
        test_lea_addr32 ENDP



















        test_call_esp PROC

        mov      ecx, 1
        call     call_esp_next
    call_esp_next:
        push     0
        pop      eax
        pop      eax
        jecxz    call_esp_exit
        dec      ecx
        call     near ptr [esp - 4]
    call_esp_exit:
        ret
        test_call_esp ENDP



        test_iret PROC

        pushfd
        push     033h
        push     offset iret_32_to_64
        iretd
    iret_32_to_64:
        
        mov      edx, esp
        push     02bh
        push     edx
        pushfd   
        push     023h
        push     offset iret_64_to_32
        DB 048h 

          iretd  
    iret_64_to_32:
        
        mov      ecx, offset is_x86_to_x64
        mov      al, byte ptr [ecx]
        test     al, al
        jnz      iret_64_to_32_skip_daa
        
        daa
    iret_64_to_32_skip_daa:
        pushfd
        push     033h
        push     offset iret_32_to_64_B
        iretd
    iret_32_to_64_B:
        
        mov ecx, 0
        
        DB 049h 

          add    eax, 1
        mov      eax, ecx
        
        
        pushfd   
        pop      ecx
        mov      edx, esp
        lea      esp, [esp - 20]
        mov      dword ptr [esp + 16], 02bh
        mov      dword ptr [esp + 12], edx
        mov      dword ptr [esp + 8], ecx
        mov      dword ptr [esp + 4], 023h
        mov      dword ptr [esp], offset iret_64_to_32_B
        iretd
    iret_64_to_32_B:
        nop

        ret                      
        test_iret ENDP



        test_far_calls PROC

        
        push     033h
        push     offset far_call_to_64
        call     fword ptr [esp]
        lea      esp, [esp + 8]     
        jmp      test_far_dir_call
    far_call_to_64:
        retf
    test_far_dir_call:

        
        DB 09ah 

          DD offset far_dir_call
          DB 033h
          DB 000h 

        jmp      test_far_dir_done
    far_dir_call:
        retf

    test_far_dir_done:

        
 
 DB 0eah 
 
 DD offset switch_32_to_64_far_call_from_64 
 DB 033h 
 DB 000h 
 
 switch_32_to_64_far_call_from_64: 
 nop
        
        push     offset far_call_to_32  
        mov      dword ptr [esp + 4], 023h 
        call     fword ptr [esp]
        lea      esp, [esp + 8]     
        jmp      test_far_dir_call_from_64
    far_call_to_32:
        
        mov      ecx, offset is_x86_to_x64
        mov      al, byte ptr [ecx]
        test     al, al
        jnz      far_call_to_32_skip_daa
        
        daa
    far_call_to_32_skip_daa:
        retf
    test_far_dir_call_from_64:
        
 
 push offset switch_64_to_32_far_calls_done 
 mov dword ptr [esp + 4], 023h 
 jmp fword ptr [esp] 
 switch_64_to_32_far_calls_done: 
 lea esp, [esp + 8]

        xor      eax,eax
        ret
        test_far_calls ENDP


END


