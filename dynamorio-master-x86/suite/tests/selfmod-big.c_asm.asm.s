



























































































































































































































































































































































   

























































  



  





















   




  




































































































































































































































































































































































































































































































































































































































































































































































































.686 
.XMM 
.MODEL flat, c 
ASSUME fs:_DATA 
.CODE

EXTERN big:PROC
EXTERN protect_mem:PROC

    


        get_next_pc PROC

        mov      eax, [esp]
        ret
        get_next_pc ENDP



        foo PROC
PUBLIC foo_start
PUBLIC foo_end

foo_start::
        mov      ecx, dword ptr [ 1*4 + esp]  
        push     ebp
        push     ebx
        push     edx
        

        
        mov      ebx, ecx               
        lea      eax, [foo_start]
        lea      edx, [foo_end]
        sub      edx, eax               
         
 push 07h 
 push edx 
 push eax 
 call protect_mem 
 lea esp, [4*3 + esp]
        mov      ecx, ebx               

        lea      edx, [immed_plus_four]
        mov      dword ptr [edx - 4], ecx 
        mov      eax, 012345678h 
    immed_plus_four:

        





        mov      edx, offset big

        mov      dword ptr [edx + 0], ecx
        mov      dword ptr [edx + 1], ecx
        mov      dword ptr [edx + 2], ecx
        mov      dword ptr [edx + 3], ecx
        mov      dword ptr [edx + 4], ecx
        mov      dword ptr [edx + 5], ecx
        mov      dword ptr [edx + 6], ecx
        mov      dword ptr [edx + 7], ecx
        mov      dword ptr [edx + 8], ecx
        mov      dword ptr [edx + 9], ecx
        mov      dword ptr [edx + 10], ecx
        mov      dword ptr [edx + 11], ecx
        mov      dword ptr [edx + 12], ecx
        mov      dword ptr [edx + 13], ecx
        mov      dword ptr [edx + 14], ecx
        mov      dword ptr [edx + 15], ecx
        mov      dword ptr [edx + 16], ecx
        mov      dword ptr [edx + 17], ecx
        mov      dword ptr [edx + 18], ecx
        mov      dword ptr [edx + 19], ecx
        mov      dword ptr [edx + 20], ecx
        mov      dword ptr [edx + 21], ecx
        mov      dword ptr [edx + 22], ecx
        mov      dword ptr [edx + 23], ecx
        mov      dword ptr [edx + 24], ecx
        mov      dword ptr [edx + 25], ecx
        mov      dword ptr [edx + 26], ecx
        mov      dword ptr [edx + 27], ecx
        mov      dword ptr [edx + 28], ecx
        mov      dword ptr [edx + 29], ecx
        mov      dword ptr [edx + 30], ecx
        mov      dword ptr [edx + 31], ecx
        mov      dword ptr [edx + 32], ecx
        mov      dword ptr [edx + 33], ecx
        mov      dword ptr [edx + 34], ecx
        mov      dword ptr [edx + 35], ecx
        mov      dword ptr [edx + 36], ecx
        mov      dword ptr [edx + 37], ecx
        mov      dword ptr [edx + 38], ecx
        mov      dword ptr [edx + 39], ecx
        mov      dword ptr [edx + 40], ecx
        mov      dword ptr [edx + 41], ecx
        mov      dword ptr [edx + 42], ecx
        mov      dword ptr [edx + 43], ecx
        mov      dword ptr [edx + 44], ecx
        mov      dword ptr [edx + 45], ecx
        mov      dword ptr [edx + 46], ecx
        mov      dword ptr [edx + 47], ecx
        mov      dword ptr [edx + 48], ecx
        mov      dword ptr [edx + 49], ecx
        mov      dword ptr [edx + 50], ecx
        mov      dword ptr [edx + 51], ecx
        mov      dword ptr [edx + 52], ecx
        mov      dword ptr [edx + 53], ecx
        mov      dword ptr [edx + 54], ecx
        mov      dword ptr [edx + 55], ecx
        mov      dword ptr [edx + 56], ecx
        mov      dword ptr [edx + 57], ecx
        mov      dword ptr [edx + 58], ecx
        mov      dword ptr [edx + 59], ecx
        mov      dword ptr [edx + 60], ecx
        mov      dword ptr [edx + 61], ecx
        mov      dword ptr [edx + 62], ecx
        mov      dword ptr [edx + 63], ecx
        mov      dword ptr [edx + 64], ecx
        mov      dword ptr [edx + 65], ecx
        mov      dword ptr [edx + 66], ecx
        mov      dword ptr [edx + 67], ecx
        mov      dword ptr [edx + 68], ecx
        mov      dword ptr [edx + 69], ecx
        mov      dword ptr [edx + 70], ecx
        mov      dword ptr [edx + 71], ecx
        mov      dword ptr [edx + 72], ecx
        mov      dword ptr [edx + 73], ecx
        mov      dword ptr [edx + 74], ecx
        mov      dword ptr [edx + 75], ecx
        mov      dword ptr [edx + 76], ecx
        mov      dword ptr [edx + 77], ecx
        mov      dword ptr [edx + 78], ecx
        mov      dword ptr [edx + 79], ecx
        mov      dword ptr [edx + 80], ecx
        mov      dword ptr [edx + 81], ecx
        mov      dword ptr [edx + 82], ecx
        mov      dword ptr [edx + 83], ecx
        mov      dword ptr [edx + 84], ecx
        mov      dword ptr [edx + 85], ecx
        mov      dword ptr [edx + 86], ecx
        mov      dword ptr [edx + 87], ecx
        mov      dword ptr [edx + 88], ecx
        mov      dword ptr [edx + 89], ecx
        mov      dword ptr [edx + 90], ecx
        mov      dword ptr [edx + 91], ecx
        mov      dword ptr [edx + 92], ecx
        mov      dword ptr [edx + 93], ecx
        mov      dword ptr [edx + 94], ecx
        mov      dword ptr [edx + 95], ecx
        mov      dword ptr [edx + 96], ecx
        mov      dword ptr [edx + 97], ecx
        mov      dword ptr [edx + 98], ecx
        mov      dword ptr [edx + 99], ecx
        mov      dword ptr [edx + 100], ecx
        mov      dword ptr [edx + 101], ecx
        mov      dword ptr [edx + 102], ecx
        mov      dword ptr [edx + 103], ecx
        mov      dword ptr [edx + 104], ecx
        mov      dword ptr [edx + 105], ecx
        mov      dword ptr [edx + 106], ecx
        mov      dword ptr [edx + 107], ecx
        mov      dword ptr [edx + 108], ecx
        mov      dword ptr [edx + 109], ecx
        mov      dword ptr [edx + 110], ecx
        mov      dword ptr [edx + 111], ecx
        mov      dword ptr [edx + 112], ecx
        mov      dword ptr [edx + 113], ecx
        mov      dword ptr [edx + 114], ecx
        mov      dword ptr [edx + 115], ecx
        mov      dword ptr [edx + 116], ecx
        mov      dword ptr [edx + 117], ecx
        mov      dword ptr [edx + 118], ecx
        mov      dword ptr [edx + 119], ecx
        mov      dword ptr [edx + 120], ecx
        mov      dword ptr [edx + 121], ecx
        mov      dword ptr [edx + 122], ecx
        mov      dword ptr [edx + 123], ecx
        mov      dword ptr [edx + 124], ecx
        mov      dword ptr [edx + 125], ecx
        mov      dword ptr [edx + 126], ecx
        mov      dword ptr [edx + 127], ecx
        mov      dword ptr [edx + 128], ecx
        mov      dword ptr [edx + 129], ecx
        mov      dword ptr [edx + 130], ecx
        mov      dword ptr [edx + 131], ecx
        mov      dword ptr [edx + 132], ecx
        mov      dword ptr [edx + 133], ecx
        mov      dword ptr [edx + 134], ecx
        mov      dword ptr [edx + 135], ecx
        mov      dword ptr [edx + 136], ecx
        mov      dword ptr [edx + 137], ecx
        mov      dword ptr [edx + 138], ecx
        mov      dword ptr [edx + 139], ecx
        mov      dword ptr [edx + 140], ecx
        mov      dword ptr [edx + 141], ecx
        mov      dword ptr [edx + 142], ecx
        mov      dword ptr [edx + 143], ecx
        mov      dword ptr [edx + 144], ecx
        mov      dword ptr [edx + 145], ecx
        mov      dword ptr [edx + 146], ecx
        mov      dword ptr [edx + 147], ecx
        mov      dword ptr [edx + 148], ecx
        mov      dword ptr [edx + 149], ecx
        mov      dword ptr [edx + 150], ecx
        mov      dword ptr [edx + 151], ecx
        mov      dword ptr [edx + 152], ecx
        mov      dword ptr [edx + 153], ecx
        mov      dword ptr [edx + 154], ecx
        mov      dword ptr [edx + 155], ecx
        mov      dword ptr [edx + 156], ecx
        mov      dword ptr [edx + 157], ecx
        mov      dword ptr [edx + 158], ecx
        mov      dword ptr [edx + 159], ecx
        mov      dword ptr [edx + 160], ecx
        mov      dword ptr [edx + 161], ecx
        mov      dword ptr [edx + 162], ecx
        mov      dword ptr [edx + 163], ecx
        mov      dword ptr [edx + 164], ecx
        mov      dword ptr [edx + 165], ecx
        mov      dword ptr [edx + 166], ecx
        mov      dword ptr [edx + 167], ecx
        mov      dword ptr [edx + 168], ecx
        mov      dword ptr [edx + 169], ecx
        mov      dword ptr [edx + 170], ecx
        mov      dword ptr [edx + 171], ecx
        mov      dword ptr [edx + 172], ecx
        mov      dword ptr [edx + 173], ecx
        mov      dword ptr [edx + 174], ecx
        mov      dword ptr [edx + 175], ecx
        mov      dword ptr [edx + 176], ecx
        mov      dword ptr [edx + 177], ecx
        mov      dword ptr [edx + 178], ecx
        mov      dword ptr [edx + 179], ecx
        mov      dword ptr [edx + 180], ecx
        mov      dword ptr [edx + 181], ecx
        mov      dword ptr [edx + 182], ecx
        mov      dword ptr [edx + 183], ecx
        mov      dword ptr [edx + 184], ecx
        mov      dword ptr [edx + 185], ecx
        mov      dword ptr [edx + 186], ecx
        mov      dword ptr [edx + 187], ecx
        mov      dword ptr [edx + 188], ecx
        mov      dword ptr [edx + 189], ecx
        mov      dword ptr [edx + 190], ecx
        mov      dword ptr [edx + 191], ecx
        mov      dword ptr [edx + 192], ecx
        mov      dword ptr [edx + 193], ecx
        mov      dword ptr [edx + 194], ecx
        mov      dword ptr [edx + 195], ecx
        mov      dword ptr [edx + 196], ecx
        mov      dword ptr [edx + 197], ecx
        mov      dword ptr [edx + 198], ecx
        mov      dword ptr [edx + 199], ecx
        mov      dword ptr [edx + 200], ecx
        mov      dword ptr [edx + 201], ecx
        mov      dword ptr [edx + 202], ecx
        mov      dword ptr [edx + 203], ecx
        mov      dword ptr [edx + 204], ecx
        mov      dword ptr [edx + 205], ecx
        mov      dword ptr [edx + 206], ecx
        mov      dword ptr [edx + 207], ecx
        mov      dword ptr [edx + 208], ecx
        mov      dword ptr [edx + 209], ecx
        mov      dword ptr [edx + 210], ecx
        mov      dword ptr [edx + 211], ecx
        mov      dword ptr [edx + 212], ecx
        mov      dword ptr [edx + 213], ecx
        mov      dword ptr [edx + 214], ecx
        mov      dword ptr [edx + 215], ecx
        mov      dword ptr [edx + 216], ecx
        mov      dword ptr [edx + 217], ecx
        mov      dword ptr [edx + 218], ecx
        mov      dword ptr [edx + 219], ecx
        mov      dword ptr [edx + 220], ecx
        mov      dword ptr [edx + 221], ecx
        mov      dword ptr [edx + 222], ecx
        mov      dword ptr [edx + 223], ecx
        mov      dword ptr [edx + 224], ecx
        mov      dword ptr [edx + 225], ecx
        mov      dword ptr [edx + 226], ecx
        mov      dword ptr [edx + 227], ecx
        mov      dword ptr [edx + 228], ecx
        mov      dword ptr [edx + 229], ecx
        mov      dword ptr [edx + 230], ecx
        mov      dword ptr [edx + 231], ecx
        mov      dword ptr [edx + 232], ecx
        mov      dword ptr [edx + 233], ecx
        mov      dword ptr [edx + 234], ecx
        mov      dword ptr [edx + 235], ecx
        mov      dword ptr [edx + 236], ecx
        mov      dword ptr [edx + 237], ecx
        mov      dword ptr [edx + 238], ecx
        mov      dword ptr [edx + 239], ecx
        mov      dword ptr [edx + 240], ecx
        mov      dword ptr [edx + 241], ecx
        mov      dword ptr [edx + 242], ecx
        mov      dword ptr [edx + 243], ecx
        mov      dword ptr [edx + 244], ecx
        mov      dword ptr [edx + 245], ecx
        mov      dword ptr [edx + 246], ecx
        mov      dword ptr [edx + 247], ecx
        mov      dword ptr [edx + 248], ecx
        mov      dword ptr [edx + 249], ecx
        mov      dword ptr [edx + 250], ecx
        mov      dword ptr [edx + 251], ecx
        mov      dword ptr [edx + 252], ecx
        mov      dword ptr [edx + 253], ecx
        mov      dword ptr [edx + 254], ecx
        mov      dword ptr [edx + 255], ecx
        mov      dword ptr [edx + 256], ecx
        mov      dword ptr [edx + 257], ecx
        mov      dword ptr [edx + 258], ecx
        mov      dword ptr [edx + 259], ecx
        mov      dword ptr [edx + 260], ecx
        mov      dword ptr [edx + 261], ecx
        mov      dword ptr [edx + 262], ecx
        mov      dword ptr [edx + 263], ecx
        mov      dword ptr [edx + 264], ecx
        mov      dword ptr [edx + 265], ecx
        mov      dword ptr [edx + 266], ecx
        mov      dword ptr [edx + 267], ecx
        mov      dword ptr [edx + 268], ecx
        mov      dword ptr [edx + 269], ecx
        mov      dword ptr [edx + 270], ecx
        mov      dword ptr [edx + 271], ecx
        mov      dword ptr [edx + 272], ecx
        mov      dword ptr [edx + 273], ecx
        mov      dword ptr [edx + 274], ecx
        mov      dword ptr [edx + 275], ecx
        mov      dword ptr [edx + 276], ecx
        mov      dword ptr [edx + 277], ecx
        mov      dword ptr [edx + 278], ecx
        mov      dword ptr [edx + 279], ecx
        mov      dword ptr [edx + 280], ecx
        mov      dword ptr [edx + 281], ecx
        mov      dword ptr [edx + 282], ecx
        mov      dword ptr [edx + 283], ecx
        mov      dword ptr [edx + 284], ecx
        mov      dword ptr [edx + 285], ecx
        mov      dword ptr [edx + 286], ecx
        mov      dword ptr [edx + 287], ecx
        mov      dword ptr [edx + 288], ecx
        mov      dword ptr [edx + 289], ecx
        mov      dword ptr [edx + 290], ecx
        mov      dword ptr [edx + 291], ecx
        mov      dword ptr [edx + 292], ecx
        mov      dword ptr [edx + 293], ecx
        mov      dword ptr [edx + 294], ecx
        mov      dword ptr [edx + 295], ecx
        mov      dword ptr [edx + 296], ecx
        mov      dword ptr [edx + 297], ecx
        mov      dword ptr [edx + 298], ecx
        mov      dword ptr [edx + 299], ecx
        mov      dword ptr [edx + 300], ecx
        mov      dword ptr [edx + 301], ecx
        mov      dword ptr [edx + 302], ecx
        mov      dword ptr [edx + 303], ecx
        mov      dword ptr [edx + 304], ecx
        mov      dword ptr [edx + 305], ecx
        mov      dword ptr [edx + 306], ecx
        mov      dword ptr [edx + 307], ecx
        mov      dword ptr [edx + 308], ecx
        mov      dword ptr [edx + 309], ecx
        mov      dword ptr [edx + 310], ecx
        mov      dword ptr [edx + 311], ecx
        mov      dword ptr [edx + 312], ecx
        mov      dword ptr [edx + 313], ecx
        mov      dword ptr [edx + 314], ecx
        mov      dword ptr [edx + 315], ecx
        mov      dword ptr [edx + 316], ecx
        mov      dword ptr [edx + 317], ecx
        mov      dword ptr [edx + 318], ecx
        mov      dword ptr [edx + 319], ecx
        mov      dword ptr [edx + 320], ecx
        mov      dword ptr [edx + 321], ecx
        mov      dword ptr [edx + 322], ecx
        mov      dword ptr [edx + 323], ecx
        mov      dword ptr [edx + 324], ecx
        mov      dword ptr [edx + 325], ecx
        mov      dword ptr [edx + 326], ecx
        mov      dword ptr [edx + 327], ecx
        mov      dword ptr [edx + 328], ecx
        mov      dword ptr [edx + 329], ecx
        mov      dword ptr [edx + 330], ecx
        mov      dword ptr [edx + 331], ecx
        mov      dword ptr [edx + 332], ecx
        mov      dword ptr [edx + 333], ecx
        mov      dword ptr [edx + 334], ecx
        mov      dword ptr [edx + 335], ecx
        mov      dword ptr [edx + 336], ecx
        mov      dword ptr [edx + 337], ecx
        mov      dword ptr [edx + 338], ecx
        mov      dword ptr [edx + 339], ecx
        mov      dword ptr [edx + 340], ecx
        mov      dword ptr [edx + 341], ecx
        mov      dword ptr [edx + 342], ecx
        mov      dword ptr [edx + 343], ecx
        mov      dword ptr [edx + 344], ecx
        mov      dword ptr [edx + 345], ecx
        mov      dword ptr [edx + 346], ecx
        mov      dword ptr [edx + 347], ecx
        mov      dword ptr [edx + 348], ecx
        mov      dword ptr [edx + 349], ecx
        mov      dword ptr [edx + 350], ecx
        mov      dword ptr [edx + 351], ecx
        mov      dword ptr [edx + 352], ecx
        mov      dword ptr [edx + 353], ecx
        mov      dword ptr [edx + 354], ecx
        mov      dword ptr [edx + 355], ecx
        mov      dword ptr [edx + 356], ecx
        mov      dword ptr [edx + 357], ecx
        mov      dword ptr [edx + 358], ecx
        mov      dword ptr [edx + 359], ecx
        mov      dword ptr [edx + 360], ecx
        mov      dword ptr [edx + 361], ecx
        mov      dword ptr [edx + 362], ecx
        mov      dword ptr [edx + 363], ecx
        mov      dword ptr [edx + 364], ecx
        mov      dword ptr [edx + 365], ecx
        mov      dword ptr [edx + 366], ecx
        mov      dword ptr [edx + 367], ecx
        mov      dword ptr [edx + 368], ecx
        mov      dword ptr [edx + 369], ecx
        mov      dword ptr [edx + 370], ecx
        mov      dword ptr [edx + 371], ecx
        mov      dword ptr [edx + 372], ecx
        mov      dword ptr [edx + 373], ecx
        mov      dword ptr [edx + 374], ecx
        mov      dword ptr [edx + 375], ecx
        mov      dword ptr [edx + 376], ecx
        mov      dword ptr [edx + 377], ecx
        mov      dword ptr [edx + 378], ecx
        mov      dword ptr [edx + 379], ecx
        mov      dword ptr [edx + 380], ecx
        mov      dword ptr [edx + 381], ecx
        mov      dword ptr [edx + 382], ecx
        mov      dword ptr [edx + 383], ecx
        mov      dword ptr [edx + 384], ecx
        mov      dword ptr [edx + 385], ecx
        mov      dword ptr [edx + 386], ecx
        mov      dword ptr [edx + 387], ecx
        mov      dword ptr [edx + 388], ecx
        mov      dword ptr [edx + 389], ecx
        mov      dword ptr [edx + 390], ecx
        mov      dword ptr [edx + 391], ecx
        mov      dword ptr [edx + 392], ecx
        mov      dword ptr [edx + 393], ecx
        mov      dword ptr [edx + 394], ecx
        mov      dword ptr [edx + 395], ecx
        mov      dword ptr [edx + 396], ecx
        mov      dword ptr [edx + 397], ecx
        mov      dword ptr [edx + 398], ecx
        mov      dword ptr [edx + 399], ecx
        mov      dword ptr [edx + 400], ecx
        mov      dword ptr [edx + 401], ecx
        mov      dword ptr [edx + 402], ecx
        mov      dword ptr [edx + 403], ecx
        mov      dword ptr [edx + 404], ecx
        mov      dword ptr [edx + 405], ecx
        mov      dword ptr [edx + 406], ecx
        mov      dword ptr [edx + 407], ecx
        mov      dword ptr [edx + 408], ecx
        mov      dword ptr [edx + 409], ecx
        mov      dword ptr [edx + 410], ecx
        mov      dword ptr [edx + 411], ecx
        mov      dword ptr [edx + 412], ecx
        mov      dword ptr [edx + 413], ecx
        mov      dword ptr [edx + 414], ecx
        mov      dword ptr [edx + 415], ecx
        mov      dword ptr [edx + 416], ecx
        mov      dword ptr [edx + 417], ecx
        mov      dword ptr [edx + 418], ecx
        mov      dword ptr [edx + 419], ecx
        mov      dword ptr [edx + 420], ecx
        mov      dword ptr [edx + 421], ecx
        mov      dword ptr [edx + 422], ecx
        mov      dword ptr [edx + 423], ecx
        mov      dword ptr [edx + 424], ecx
        mov      dword ptr [edx + 425], ecx
        mov      dword ptr [edx + 426], ecx
        mov      dword ptr [edx + 427], ecx
        mov      dword ptr [edx + 428], ecx
        mov      dword ptr [edx + 429], ecx
        mov      dword ptr [edx + 430], ecx
        mov      dword ptr [edx + 431], ecx
        mov      dword ptr [edx + 432], ecx
        mov      dword ptr [edx + 433], ecx
        mov      dword ptr [edx + 434], ecx
        mov      dword ptr [edx + 435], ecx
        mov      dword ptr [edx + 436], ecx
        mov      dword ptr [edx + 437], ecx
        mov      dword ptr [edx + 438], ecx
        mov      dword ptr [edx + 439], ecx
        mov      dword ptr [edx + 440], ecx
        mov      dword ptr [edx + 441], ecx
        mov      dword ptr [edx + 442], ecx
        mov      dword ptr [edx + 443], ecx
        mov      dword ptr [edx + 444], ecx
        mov      dword ptr [edx + 445], ecx
        mov      dword ptr [edx + 446], ecx
        mov      dword ptr [edx + 447], ecx
        mov      dword ptr [edx + 448], ecx
        mov      dword ptr [edx + 449], ecx
        mov      dword ptr [edx + 450], ecx
        mov      dword ptr [edx + 451], ecx
        mov      dword ptr [edx + 452], ecx
        mov      dword ptr [edx + 453], ecx
        mov      dword ptr [edx + 454], ecx
        mov      dword ptr [edx + 455], ecx
        mov      dword ptr [edx + 456], ecx
        mov      dword ptr [edx + 457], ecx
        mov      dword ptr [edx + 458], ecx
        mov      dword ptr [edx + 459], ecx
        mov      dword ptr [edx + 460], ecx
        mov      dword ptr [edx + 461], ecx
        mov      dword ptr [edx + 462], ecx
        mov      dword ptr [edx + 463], ecx
        mov      dword ptr [edx + 464], ecx
        mov      dword ptr [edx + 465], ecx
        mov      dword ptr [edx + 466], ecx
        mov      dword ptr [edx + 467], ecx
        mov      dword ptr [edx + 468], ecx
        mov      dword ptr [edx + 469], ecx
        mov      dword ptr [edx + 470], ecx
        mov      dword ptr [edx + 471], ecx
        mov      dword ptr [edx + 472], ecx
        mov      dword ptr [edx + 473], ecx
        mov      dword ptr [edx + 474], ecx
        mov      dword ptr [edx + 475], ecx
        mov      dword ptr [edx + 476], ecx
        mov      dword ptr [edx + 477], ecx
        mov      dword ptr [edx + 478], ecx
        mov      dword ptr [edx + 479], ecx
        mov      dword ptr [edx + 480], ecx
        mov      dword ptr [edx + 481], ecx
        mov      dword ptr [edx + 482], ecx
        mov      dword ptr [edx + 483], ecx
        mov      dword ptr [edx + 484], ecx
        mov      dword ptr [edx + 485], ecx
        mov      dword ptr [edx + 486], ecx
        mov      dword ptr [edx + 487], ecx
        mov      dword ptr [edx + 488], ecx
        mov      dword ptr [edx + 489], ecx
        mov      dword ptr [edx + 490], ecx
        mov      dword ptr [edx + 491], ecx
        mov      dword ptr [edx + 492], ecx
        mov      dword ptr [edx + 493], ecx
        mov      dword ptr [edx + 494], ecx
        mov      dword ptr [edx + 495], ecx
        mov      dword ptr [edx + 496], ecx
        mov      dword ptr [edx + 497], ecx
        mov      dword ptr [edx + 498], ecx
        mov      dword ptr [edx + 499], ecx
        mov      dword ptr [edx + 500], ecx
        mov      dword ptr [edx + 501], ecx
        mov      dword ptr [edx + 502], ecx
        mov      dword ptr [edx + 503], ecx
        mov      dword ptr [edx + 504], ecx
        mov      dword ptr [edx + 505], ecx
        mov      dword ptr [edx + 506], ecx
        mov      dword ptr [edx + 507], ecx
        mov      dword ptr [edx + 508], ecx
        mov      dword ptr [edx + 509], ecx
        mov      dword ptr [edx + 510], ecx
        mov      dword ptr [edx + 511], ecx
        mov      dword ptr [edx + 512], ecx
        mov      dword ptr [edx + 513], ecx
        mov      dword ptr [edx + 514], ecx
        mov      dword ptr [edx + 515], ecx
        mov      dword ptr [edx + 516], ecx
        mov      dword ptr [edx + 517], ecx
        mov      dword ptr [edx + 518], ecx
        mov      dword ptr [edx + 519], ecx
        mov      dword ptr [edx + 520], ecx
        mov      dword ptr [edx + 521], ecx
        mov      dword ptr [edx + 522], ecx
        mov      dword ptr [edx + 523], ecx
        mov      dword ptr [edx + 524], ecx
        mov      dword ptr [edx + 525], ecx
        mov      dword ptr [edx + 526], ecx
        mov      dword ptr [edx + 527], ecx
        mov      dword ptr [edx + 528], ecx
        mov      dword ptr [edx + 529], ecx
        mov      dword ptr [edx + 530], ecx
        mov      dword ptr [edx + 531], ecx
        mov      dword ptr [edx + 532], ecx
        mov      dword ptr [edx + 533], ecx
        mov      dword ptr [edx + 534], ecx
        mov      dword ptr [edx + 535], ecx
        mov      dword ptr [edx + 536], ecx
        mov      dword ptr [edx + 537], ecx
        mov      dword ptr [edx + 538], ecx
        mov      dword ptr [edx + 539], ecx
        mov      dword ptr [edx + 540], ecx
        mov      dword ptr [edx + 541], ecx
        mov      dword ptr [edx + 542], ecx
        mov      dword ptr [edx + 543], ecx
        mov      dword ptr [edx + 544], ecx
        mov      dword ptr [edx + 545], ecx
        mov      dword ptr [edx + 546], ecx
        mov      dword ptr [edx + 547], ecx
        mov      dword ptr [edx + 548], ecx
        mov      dword ptr [edx + 549], ecx
        mov      dword ptr [edx + 550], ecx
        mov      dword ptr [edx + 551], ecx
        mov      dword ptr [edx + 552], ecx
        mov      dword ptr [edx + 553], ecx
        mov      dword ptr [edx + 554], ecx
        mov      dword ptr [edx + 555], ecx
        mov      dword ptr [edx + 556], ecx
        mov      dword ptr [edx + 557], ecx
        mov      dword ptr [edx + 558], ecx
        mov      dword ptr [edx + 559], ecx
        mov      dword ptr [edx + 560], ecx
        mov      dword ptr [edx + 561], ecx
        mov      dword ptr [edx + 562], ecx
        mov      dword ptr [edx + 563], ecx
        mov      dword ptr [edx + 564], ecx
        mov      dword ptr [edx + 565], ecx
        mov      dword ptr [edx + 566], ecx
        mov      dword ptr [edx + 567], ecx
        mov      dword ptr [edx + 568], ecx
        mov      dword ptr [edx + 569], ecx
        mov      dword ptr [edx + 570], ecx
        mov      dword ptr [edx + 571], ecx
        mov      dword ptr [edx + 572], ecx
        mov      dword ptr [edx + 573], ecx
        mov      dword ptr [edx + 574], ecx
        mov      dword ptr [edx + 575], ecx
        mov      dword ptr [edx + 576], ecx
        mov      dword ptr [edx + 577], ecx
        mov      dword ptr [edx + 578], ecx
        mov      dword ptr [edx + 579], ecx
        mov      dword ptr [edx + 580], ecx
        mov      dword ptr [edx + 581], ecx
        mov      dword ptr [edx + 582], ecx
        mov      dword ptr [edx + 583], ecx
        mov      dword ptr [edx + 584], ecx
        mov      dword ptr [edx + 585], ecx
        mov      dword ptr [edx + 586], ecx
        mov      dword ptr [edx + 587], ecx
        mov      dword ptr [edx + 588], ecx
        mov      dword ptr [edx + 589], ecx
        mov      dword ptr [edx + 590], ecx
        mov      dword ptr [edx + 591], ecx
        mov      dword ptr [edx + 592], ecx
        mov      dword ptr [edx + 593], ecx
        mov      dword ptr [edx + 594], ecx
        mov      dword ptr [edx + 595], ecx
        mov      dword ptr [edx + 596], ecx
        mov      dword ptr [edx + 597], ecx
        mov      dword ptr [edx + 598], ecx
        mov      dword ptr [edx + 599], ecx
        mov      dword ptr [edx + 600], ecx
        mov      dword ptr [edx + 601], ecx
        mov      dword ptr [edx + 602], ecx
        mov      dword ptr [edx + 603], ecx
        mov      dword ptr [edx + 604], ecx
        mov      dword ptr [edx + 605], ecx
        mov      dword ptr [edx + 606], ecx
        mov      dword ptr [edx + 607], ecx
        mov      dword ptr [edx + 608], ecx
        mov      dword ptr [edx + 609], ecx
        mov      dword ptr [edx + 610], ecx
        mov      dword ptr [edx + 611], ecx
        mov      dword ptr [edx + 612], ecx
        mov      dword ptr [edx + 613], ecx
        mov      dword ptr [edx + 614], ecx
        mov      dword ptr [edx + 615], ecx
        mov      dword ptr [edx + 616], ecx
        mov      dword ptr [edx + 617], ecx
        mov      dword ptr [edx + 618], ecx
        mov      dword ptr [edx + 619], ecx
        mov      dword ptr [edx + 620], ecx
        mov      dword ptr [edx + 621], ecx
        mov      dword ptr [edx + 622], ecx
        mov      dword ptr [edx + 623], ecx
        mov      dword ptr [edx + 624], ecx
        mov      dword ptr [edx + 625], ecx
        mov      dword ptr [edx + 626], ecx
        mov      dword ptr [edx + 627], ecx
        mov      dword ptr [edx + 628], ecx
        mov      dword ptr [edx + 629], ecx
        mov      dword ptr [edx + 630], ecx
        mov      dword ptr [edx + 631], ecx
        mov      dword ptr [edx + 632], ecx
        mov      dword ptr [edx + 633], ecx
        mov      dword ptr [edx + 634], ecx
        mov      dword ptr [edx + 635], ecx
        mov      dword ptr [edx + 636], ecx
        mov      dword ptr [edx + 637], ecx
        mov      dword ptr [edx + 638], ecx
        mov      dword ptr [edx + 639], ecx
        mov      dword ptr [edx + 640], ecx
        mov      dword ptr [edx + 641], ecx
        mov      dword ptr [edx + 642], ecx
        mov      dword ptr [edx + 643], ecx
        mov      dword ptr [edx + 644], ecx
        mov      dword ptr [edx + 645], ecx
        mov      dword ptr [edx + 646], ecx
        mov      dword ptr [edx + 647], ecx
        mov      dword ptr [edx + 648], ecx
        mov      dword ptr [edx + 649], ecx
        mov      dword ptr [edx + 650], ecx
        mov      dword ptr [edx + 651], ecx
        mov      dword ptr [edx + 652], ecx
        mov      dword ptr [edx + 653], ecx
        mov      dword ptr [edx + 654], ecx
        mov      dword ptr [edx + 655], ecx
        mov      dword ptr [edx + 656], ecx
        mov      dword ptr [edx + 657], ecx
        mov      dword ptr [edx + 658], ecx
        mov      dword ptr [edx + 659], ecx
        mov      dword ptr [edx + 660], ecx
        mov      dword ptr [edx + 661], ecx
        mov      dword ptr [edx + 662], ecx
        mov      dword ptr [edx + 663], ecx
        mov      dword ptr [edx + 664], ecx
        mov      dword ptr [edx + 665], ecx
        mov      dword ptr [edx + 666], ecx
        mov      dword ptr [edx + 667], ecx
        mov      dword ptr [edx + 668], ecx
        mov      dword ptr [edx + 669], ecx
        mov      dword ptr [edx + 670], ecx
        mov      dword ptr [edx + 671], ecx
        mov      dword ptr [edx + 672], ecx
        mov      dword ptr [edx + 673], ecx
        mov      dword ptr [edx + 674], ecx
        mov      dword ptr [edx + 675], ecx
        mov      dword ptr [edx + 676], ecx
        mov      dword ptr [edx + 677], ecx
        mov      dword ptr [edx + 678], ecx
        mov      dword ptr [edx + 679], ecx
        mov      dword ptr [edx + 680], ecx
        mov      dword ptr [edx + 681], ecx
        mov      dword ptr [edx + 682], ecx
        mov      dword ptr [edx + 683], ecx
        mov      dword ptr [edx + 684], ecx
        mov      dword ptr [edx + 685], ecx
        mov      dword ptr [edx + 686], ecx
        mov      dword ptr [edx + 687], ecx
        mov      dword ptr [edx + 688], ecx
        mov      dword ptr [edx + 689], ecx
        mov      dword ptr [edx + 690], ecx
        mov      dword ptr [edx + 691], ecx
        mov      dword ptr [edx + 692], ecx
        mov      dword ptr [edx + 693], ecx
        mov      dword ptr [edx + 694], ecx
        mov      dword ptr [edx + 695], ecx
        mov      dword ptr [edx + 696], ecx
        mov      dword ptr [edx + 697], ecx
        mov      dword ptr [edx + 698], ecx
        mov      dword ptr [edx + 699], ecx
        mov      dword ptr [edx + 700], ecx
        mov      dword ptr [edx + 701], ecx
        mov      dword ptr [edx + 702], ecx
        mov      dword ptr [edx + 703], ecx
        mov      dword ptr [edx + 704], ecx
        mov      dword ptr [edx + 705], ecx
        mov      dword ptr [edx + 706], ecx
        mov      dword ptr [edx + 707], ecx
        mov      dword ptr [edx + 708], ecx
        mov      dword ptr [edx + 709], ecx
        mov      dword ptr [edx + 710], ecx
        mov      dword ptr [edx + 711], ecx
        mov      dword ptr [edx + 712], ecx
        mov      dword ptr [edx + 713], ecx
        mov      dword ptr [edx + 714], ecx
        mov      dword ptr [edx + 715], ecx
        mov      dword ptr [edx + 716], ecx
        mov      dword ptr [edx + 717], ecx
        mov      dword ptr [edx + 718], ecx
        mov      dword ptr [edx + 719], ecx
        mov      dword ptr [edx + 720], ecx
        mov      dword ptr [edx + 721], ecx
        mov      dword ptr [edx + 722], ecx
        mov      dword ptr [edx + 723], ecx
        mov      dword ptr [edx + 724], ecx
        mov      dword ptr [edx + 725], ecx
        mov      dword ptr [edx + 726], ecx
        mov      dword ptr [edx + 727], ecx
        mov      dword ptr [edx + 728], ecx
        mov      dword ptr [edx + 729], ecx
        mov      dword ptr [edx + 730], ecx
        mov      dword ptr [edx + 731], ecx
        mov      dword ptr [edx + 732], ecx
        mov      dword ptr [edx + 733], ecx
        mov      dword ptr [edx + 734], ecx
        mov      dword ptr [edx + 735], ecx
        mov      dword ptr [edx + 736], ecx
        mov      dword ptr [edx + 737], ecx
        mov      dword ptr [edx + 738], ecx
        mov      dword ptr [edx + 739], ecx
        mov      dword ptr [edx + 740], ecx
        mov      dword ptr [edx + 741], ecx
        mov      dword ptr [edx + 742], ecx
        mov      dword ptr [edx + 743], ecx
        mov      dword ptr [edx + 744], ecx
        mov      dword ptr [edx + 745], ecx
        mov      dword ptr [edx + 746], ecx
        mov      dword ptr [edx + 747], ecx
        mov      dword ptr [edx + 748], ecx
        mov      dword ptr [edx + 749], ecx
        mov      dword ptr [edx + 750], ecx
        mov      dword ptr [edx + 751], ecx
        mov      dword ptr [edx + 752], ecx
        mov      dword ptr [edx + 753], ecx
        mov      dword ptr [edx + 754], ecx
        mov      dword ptr [edx + 755], ecx
        mov      dword ptr [edx + 756], ecx
        mov      dword ptr [edx + 757], ecx
        mov      dword ptr [edx + 758], ecx
        mov      dword ptr [edx + 759], ecx
        mov      dword ptr [edx + 760], ecx
        mov      dword ptr [edx + 761], ecx
        mov      dword ptr [edx + 762], ecx
        mov      dword ptr [edx + 763], ecx
        mov      dword ptr [edx + 764], ecx
        mov      dword ptr [edx + 765], ecx
        mov      dword ptr [edx + 766], ecx
        mov      dword ptr [edx + 767], ecx
        mov      dword ptr [edx + 768], ecx
        mov      dword ptr [edx + 769], ecx
        mov      dword ptr [edx + 770], ecx
        mov      dword ptr [edx + 771], ecx
        mov      dword ptr [edx + 772], ecx
        mov      dword ptr [edx + 773], ecx
        mov      dword ptr [edx + 774], ecx
        mov      dword ptr [edx + 775], ecx
        mov      dword ptr [edx + 776], ecx
        mov      dword ptr [edx + 777], ecx
        mov      dword ptr [edx + 778], ecx
        mov      dword ptr [edx + 779], ecx
        mov      dword ptr [edx + 780], ecx
        mov      dword ptr [edx + 781], ecx
        mov      dword ptr [edx + 782], ecx
        mov      dword ptr [edx + 783], ecx
        mov      dword ptr [edx + 784], ecx
        mov      dword ptr [edx + 785], ecx
        mov      dword ptr [edx + 786], ecx
        mov      dword ptr [edx + 787], ecx
        mov      dword ptr [edx + 788], ecx
        mov      dword ptr [edx + 789], ecx
        mov      dword ptr [edx + 790], ecx
        mov      dword ptr [edx + 791], ecx
        mov      dword ptr [edx + 792], ecx
        mov      dword ptr [edx + 793], ecx
        mov      dword ptr [edx + 794], ecx
        mov      dword ptr [edx + 795], ecx
        mov      dword ptr [edx + 796], ecx
        mov      dword ptr [edx + 797], ecx
        mov      dword ptr [edx + 798], ecx
        mov      dword ptr [edx + 799], ecx
        mov      dword ptr [edx + 800], ecx
        mov      dword ptr [edx + 801], ecx
        mov      dword ptr [edx + 802], ecx
        mov      dword ptr [edx + 803], ecx
        mov      dword ptr [edx + 804], ecx
        mov      dword ptr [edx + 805], ecx
        mov      dword ptr [edx + 806], ecx
        mov      dword ptr [edx + 807], ecx
        mov      dword ptr [edx + 808], ecx
        mov      dword ptr [edx + 809], ecx
        mov      dword ptr [edx + 810], ecx
        mov      dword ptr [edx + 811], ecx
        mov      dword ptr [edx + 812], ecx
        mov      dword ptr [edx + 813], ecx
        mov      dword ptr [edx + 814], ecx
        mov      dword ptr [edx + 815], ecx
        mov      dword ptr [edx + 816], ecx
        mov      dword ptr [edx + 817], ecx
        mov      dword ptr [edx + 818], ecx
        mov      dword ptr [edx + 819], ecx
        mov      dword ptr [edx + 820], ecx
        mov      dword ptr [edx + 821], ecx
        mov      dword ptr [edx + 822], ecx
        mov      dword ptr [edx + 823], ecx
        mov      dword ptr [edx + 824], ecx
        mov      dword ptr [edx + 825], ecx
        mov      dword ptr [edx + 826], ecx
        mov      dword ptr [edx + 827], ecx
        mov      dword ptr [edx + 828], ecx
        mov      dword ptr [edx + 829], ecx
        mov      dword ptr [edx + 830], ecx
        mov      dword ptr [edx + 831], ecx
        mov      dword ptr [edx + 832], ecx
        mov      dword ptr [edx + 833], ecx
        mov      dword ptr [edx + 834], ecx
        mov      dword ptr [edx + 835], ecx
        mov      dword ptr [edx + 836], ecx
        mov      dword ptr [edx + 837], ecx
        mov      dword ptr [edx + 838], ecx
        mov      dword ptr [edx + 839], ecx
        mov      dword ptr [edx + 840], ecx
        mov      dword ptr [edx + 841], ecx
        mov      dword ptr [edx + 842], ecx
        mov      dword ptr [edx + 843], ecx
        mov      dword ptr [edx + 844], ecx
        mov      dword ptr [edx + 845], ecx
        mov      dword ptr [edx + 846], ecx
        mov      dword ptr [edx + 847], ecx
        mov      dword ptr [edx + 848], ecx
        mov      dword ptr [edx + 849], ecx
        mov      dword ptr [edx + 850], ecx
        mov      dword ptr [edx + 851], ecx
        mov      dword ptr [edx + 852], ecx
        mov      dword ptr [edx + 853], ecx
        mov      dword ptr [edx + 854], ecx
        mov      dword ptr [edx + 855], ecx
        mov      dword ptr [edx + 856], ecx
        mov      dword ptr [edx + 857], ecx
        mov      dword ptr [edx + 858], ecx
        mov      dword ptr [edx + 859], ecx
        mov      dword ptr [edx + 860], ecx
        mov      dword ptr [edx + 861], ecx
        mov      dword ptr [edx + 862], ecx
        mov      dword ptr [edx + 863], ecx
        mov      dword ptr [edx + 864], ecx
        mov      dword ptr [edx + 865], ecx
        mov      dword ptr [edx + 866], ecx
        mov      dword ptr [edx + 867], ecx
        mov      dword ptr [edx + 868], ecx
        mov      dword ptr [edx + 869], ecx
        mov      dword ptr [edx + 870], ecx
        mov      dword ptr [edx + 871], ecx
        mov      dword ptr [edx + 872], ecx
        mov      dword ptr [edx + 873], ecx
        mov      dword ptr [edx + 874], ecx
        mov      dword ptr [edx + 875], ecx
        mov      dword ptr [edx + 876], ecx
        mov      dword ptr [edx + 877], ecx
        mov      dword ptr [edx + 878], ecx
        mov      dword ptr [edx + 879], ecx
        mov      dword ptr [edx + 880], ecx
        mov      dword ptr [edx + 881], ecx
        mov      dword ptr [edx + 882], ecx
        mov      dword ptr [edx + 883], ecx
        mov      dword ptr [edx + 884], ecx
        mov      dword ptr [edx + 885], ecx
        mov      dword ptr [edx + 886], ecx
        mov      dword ptr [edx + 887], ecx
        mov      dword ptr [edx + 888], ecx
        mov      dword ptr [edx + 889], ecx
        mov      dword ptr [edx + 890], ecx
        mov      dword ptr [edx + 891], ecx
        mov      dword ptr [edx + 892], ecx
        mov      dword ptr [edx + 893], ecx
        mov      dword ptr [edx + 894], ecx
        mov      dword ptr [edx + 895], ecx
        mov      dword ptr [edx + 896], ecx
        mov      dword ptr [edx + 897], ecx
        mov      dword ptr [edx + 898], ecx
        mov      dword ptr [edx + 899], ecx
        mov      ecx, 0 
      repeata:
        dec      eax
        inc      ecx
        cmp      eax, 0
        jnz      repeata

        mov      eax,ecx

        pop      edx
        pop      ebx
        pop      ebp
        ret
foo_end::
        foo ENDP

END



