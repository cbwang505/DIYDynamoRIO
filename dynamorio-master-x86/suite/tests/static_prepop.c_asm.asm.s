

















































































































































































































































































































































































































































































   

























































  



  





















   




  



































































































































































































































































































































































































































































































































































































































































































































































































.686 
.XMM 
.MODEL flat, c 
ASSUME fs:_DATA 
.CODE

PUBLIC asm_label1
PUBLIC asm_label2
PUBLIC asm_label3
PUBLIC asm_return


        asm_func PROC

        inc dword ptr [ 1*4 + esp]
         
 call asm_label1 
 
asm_return::
        jmp     asm_label2

asm_label1::
        inc dword ptr [ 2*4 + esp]
        ret

asm_label2::
        inc dword ptr [ 3*4 + esp]
        jmp     asm_label3

asm_label3::
        inc dword ptr [ 4*4 + esp]
        ret
        asm_func ENDP


END


