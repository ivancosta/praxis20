; Disassembly of the file "D:\dados\projetos\praxis 20\rom disassembly\descrambled_rom.bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Monday, 16 of March 2026 at 11:33 AM
; 
l0000:  ex      (sp),ix
        nop     
        nop     
        ld      sp,0ff54h
        nop     
        nop     
        ret     

        ret     nz

        push    hl
        ret     

        ld      hl,(0ffch)
        ld      de,0ffbh
        ld      b,00h
l0015:  dec     de
        nop     
        nop     
        ld      a,(de)
        ld      c,a
        xor     a
        sbc     hl,bc
        ld      a,d
        nop     
        or      e
        jr      z,l0025                 ; (+03h)
        dec     de
        jr      l0015                   ; (-10h)
l0025:  ld      a,h
        or      l
        jp      nz,l0ccd
        jp      l1ccc
        im      2
        ld      a,00h
        out     (02h),a
        ld      a,0cfh
        out     (02h),a
        ld      a,0b8h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,0c0h
        out     (00h),a
        in      a,(00h)
        ld      a,07h
        out     (03h),a
        ld      a,0fh
        ld      i,a
        reti    

        halt    
        or      b
        ld      (bc),a
        cp      h
        nop     
        call    m,l0000
        ld      bc,00a3h
        jr      c,l005e                 ; (+02h)
l005c:  di      
        ld      sp,0058h
        im      2
        ld      a,00h
        ld      i,a
        ld      a,00h
        out     (02h),a
        ld      a,0cfh
        out     (02h),a
        ld      a,0b8h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,40h
        out     (00h),a
        in      a,(00h)
        ld      a,5ah
        out     (03h),a
        ld      a,4fh
        out     (03h),a
        ld      a,87h
        out     (03h),a
        in      a,(01h)
        reti    

        nop     
        jr      nz,l0090                ; (+01h)
        djnz    l0093                   ; (+02h)
        ld      b,b
        inc     bc
l0093:  inc     b
        add     a,h
        add     a,b
        dec     b
        dec     b
        ld      b,03h
        rlca    
        ld      (bc),a
        ld      b,b
        nop     
        ld      b,h
        nop     
        ret     nz

        nop     
        rst     38h
        ld      a,00h
        out     (00h),a
        ld      bc,l0000
l00aa:  djnz    l00aa                   ; (-02h)
        dec     c
        jp      nz,l00aa
        ld      a,04h
        out     (00h),a
        exx     
        ld      c,a
        exx     
        ld      bc,l0000
        ld      h,b
        ld      l,c
        ld      sp,0054h
        in      a,(01h)
        inc     l
l00c2:  ei      
        ld      a,l
        cp      05h
        jp      z,l00d7
        di      
        djnz    l00c2                   ; (-0ah)
        dec     c
        jp      nz,l00c2
        dec     h
        jp      nz,l00c2
        jp      l013e
l00d7:  di      
        ld      sp,0056h
        ei      
        ld      d,06h
        ld      bc,l0000
l00e1:  djnz    l00e1                   ; (-02h)
        dec     c
        jp      nz,l00e1
        dec     d
        jp      nz,l00e1
        di      
        ld      sp,0058h
        ei      
        ld      d,04h
l00f2:  djnz    l00f2                   ; (-02h)
        dec     c
        jp      nz,l00f2
        dec     d
        jp      nz,l00f2
        di      
        jp      l013e
        di      
        ld      bc,l0000
        ld      a,00h
        out     (00h),a
l0108:  djnz    l0108                   ; (-02h)
        dec     c
        jp      nz,l0108
        ld      a,02h
        out     (00h),a
        exx     
        ld      e,a
        exx     
l0115:  djnz    l0115                   ; (-02h)
        dec     c
        jp      nz,l0115
        ld      hl,008ch
l011e:  ld      bc,l0000
        ld      d,0ffh
        ld      a,(hl)
        cp      0ffh
        jp      z,l0181
        out     (00h),a
        inc     hl
        ld      c,(hl)
        inc     hl
l012e:  in      a,(01h)
        cpl     
        cp      c
        jr      z,l011e                 ; (-16h)
        djnz    l012e                   ; (-08h)
        dec     e
        jp      nz,l012e
        dec     d
        jp      nz,l012e
l013e:  di      
        ld      bc,l0000
        ld      d,1eh
        ld      e,02h
        exx     
        ld      a,c
        exx     
        cp      00h
        jr      nz,l014f                ; (+02h)
        ld      e,03h
l014f:  ld      a,40h
        out     (00h),a
l0153:  djnz    l0153                   ; (-02h)
        dec     c
        dec     c
        jp      nz,l0153
        exx     
        ld      a,c
        exx     
        out     (00h),a
l015f:  djnz    l015f                   ; (-02h)
        dec     c
        dec     c
        jp      nz,l015f
        ld      a,40h
        out     (00h),a
        dec     e
        jr      nz,l0153                ; (-1ah)
l016d:  djnz    l016d                   ; (-02h)
        dec     c
        dec     c
        jp      nz,l016d
        dec     d
        jr      z,l0153                 ; (-24h)
        exx     
        ld      a,c
        exx     
        cp      00h
        jr      nz,l013e                ; (-40h)
        jp      l005c
l0181:  ld      bc,l0000
        ld      a,00h
        out     (00h),a
l0188:  djnz    l0188                   ; (-02h)
        dec     c
        jp      nz,l0188
        ld      a,06h
        exx     
        ld      c,a
        exx     
        ld      a,40h
        out     (00h),a
l0197:  in      a,(00h)
        and     80h
        jp      nz,l01a7
        djnz    l0197                   ; (-09h)
        dec     c
        jp      nz,l0197
        jp      l013e
l01a7:  ld      bc,l0000
        ld      a,44h
        out     (00h),a
l01ae:  in      a,(00h)
        and     80h
        jp      z,l01be
        djnz    l01ae                   ; (-09h)
        dec     c
        jp      nz,l01ae
        jp      l013e
l01be:  ld      bc,l0000
        in      a,(80h)
        and     01h
        jp      z,l013e
        ld      a,07h
        out     (00h),a
l01cc:  in      a,(80h)
        and     01h
        jp      z,l01dc
        djnz    l01cc                   ; (-09h)
        dec     c
        jp      nz,l01cc
        jp      l013e
l01dc:  ld      bc,l0000
        ld      d,0ffh
l01e1:  in      a,(00h)
        ld      e,a
        and     10h
        jp      z,l013e
        ld      a,e
        and     08h
        jr      nz,l01fb                ; (+0dh)
        djnz    l01e1                   ; (-0fh)
        dec     c
        jp      nz,l01e1
        dec     d
        jp      nz,l01e1
        jp      l013e
l01fb:  ld      bc,l0000
        in      a,(01h)
        in      a,(00h)
        and     18h
        jr      z,l0221                 ; (+1bh)
        in      a,(01h)
        in      a,(00h)
        and     18h
        jr      z,l0221                 ; (+13h)
        in      a,(01h)
        in      a,(00h)
        and     18h
        jr      z,l0221                 ; (+0bh)
        in      a,(01h)
        in      a,(00h)
        and     18h
        jr      z,l0221                 ; (+03h)
        jp      l013e
l0221:  in      a,(00h)
        and     18h
        cp      10h
        jr      z,l0231                 ; (+08h)
        djnz    l0221                   ; (-0ah)
        dec     c
        jr      nz,l0221                ; (-0dh)
        jp      l013e
l0231:  exx     
        ld      c,00h
        exx     
        jp      l013e
        di      
        nop     
        reti    

        ld      a,00h
        ld      d,a
        ld      c,a
        ld      b,38h
        ld      e,b
        exx     
        ex      af,af'
        in      a,(00h)
        and     80h
        ret     z

l024a:  ld      a,0cfh
        out     (02h),a
        ld      a,38h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,0c0h
        out     (00h),a
        in      a,(00h)
        ld      hl,(0ffeh)
        ld      de,0ffeh
        ld      b,00h
l0264:  dec     de
        ld      a,(de)
        ld      c,a
        xor     a
        sbc     hl,bc
        dec     de
        ld      a,d
        or      e
        jr      z,l0271                 ; (+02h)
        jr      l0264                   ; (-0dh)
l0271:  ld      a,h
        or      l
        jr      nz,l024a                ; (-2bh)
        ld      b,1eh
l0277:  ld      hl,1644h
l027a:  dec     hl
        ld      a,l
        or      h
        jr      nz,l027a                ; (-05h)
        dec     b
        jr      nz,l0277                ; (-0bh)
        ld      sp,0050h
        ld      a,0cfh
        out     (03h),a
        ld      a,0ffh
        out     (03h),a
        ld      a,07h
        out     (02h),a
        in      a,(01h)
        ld      b,a
        ld      a,4fh
        out     (03h),a
        ld      a,17h
        out     (03h),a
        ld      a,50h
        out     (03h),a
        ld      a,50h
        out     (03h),a
        ld      a,4fh
        out     (03h),a
        ld      a,87h
        out     (03h),a
        in      a,(01h)
        reti    

        ld      sp,l02b6
        jp      l3bdd
l02b6:  ld      sp,0ff52h
        exx     
        ld      a,d
        and     7fh
        ld      d,a
        exx     
        ei      
        nop     
        nop     
        di      
        ret     

        exx     
        ld      a,d
        and     80h
        exx     
        jr      z,l02b6                 ; (-15h)
l02cb:  exx     
        ld      a,e
        exx     
        and     80h
        jr      z,l02d6                 ; (+04h)
        ld      a,d
        and     7fh
        ld      d,a
l02d6:  exx     
        ld      a,c
        and     10h
        jr      z,l02eb                 ; (+0fh)
        ld      a,c
        and     0efh
        ld      c,a
        exx     
        ld      a,d
        or      a
        jp      z,l037e
        ld      b,40h
        jp      l0387
l02eb:  ld      a,d
        exx     
        and     30h
        cp      30h
        jr      nz,l030e                ; (+1bh)
        ld      a,d
        and     7fh
        ld      d,a
        exx     
        ld      a,e
        exx     
        and     80h
        or      d
        exx     
        ld      e,a
        ld      a,b
        exx     
        and     80h
        or      d
        exx     
        ld      b,a
        ld      a,d
        and     0cfh
        ld      d,a
        exx     
        jp      l12b6
l030e:  ld      a,d
        ld      sp,166bh
        and     7fh
        cp      1bh
        jr      nz,l032e                ; (+16h)
        exx     
        ld      a,d
        exx     
        and     20h
        jr      z,l0322                 ; (+03h)
        jp      l12b6
l0322:  exx     
        ld      a,d
        or      20h
        ld      d,a
        exx     
        jp      l13e2
        jp      z,l0331
l032e:  exx     
        ld      a,d
        exx     
l0331:  and     20h
        jp      z,l2411
        exx     
        ld      a,d
        and     0dfh
        ld      d,a
        exx     
        ld      a,d
        and     7fh
        cp      2dh
        jr      z,l0375                 ; (+32h)
        cp      5ah
        jr      z,l038f                 ; (+48h)
        cp      59h
        jr      z,l0398                 ; (+4dh)
        cp      52h
        ld      b,10h
        jr      z,l0387                 ; (+36h)
        cp      40h
        jp      z,l3bdd
        cp      4eh
        jp      z,l33a1
        cp      4fh
        jp      z,l33aa
        cp      43h
        jp      z,l33b3
        cp      49h
        jp      z,l3bbe
        cp      44h
        ld      d,00h
        ld      c,0f9h
        jp      z,l2525
        jr      l03e2                   ; (+6dh)
l0375:  exx     
        ld      a,c
        or      10h
        ld      c,a
        exx     
        jp      l12b6
l037e:  exx     
        ld      a,d
        and     0bfh
        ld      d,a
        exx     
        jp      l12b6
l0387:  ld      a,b
        exx     
        or      d
        ld      d,a
        exx     
        jp      l12b6
l038f:  exx     
        ld      a,c
        or      80h
        ld      c,a
        exx     
        jp      l12b6
l0398:  exx     
        ld      a,c
        and     7fh
        ld      c,a
        exx     
        jp      l12b6
        exx     
        ld      a,b
        or      80h
        ld      b,a
        exx     
        jp      l12b6
        exx     
        ld      a,b
        and     7fh
        ld      b,a
        exx     
        jp      l12b6
        exx     
        ld      a,d
        or      30h
        ld      d,a
        exx     
        jp      l12b6
        exx     
        ld      a,d
        and     0efh
        ld      d,a
        exx     
        ld      a,d
        cp      20h
        jr      c,l03e2                 ; (+1bh)
        cp      5fh
        jr      z,l03e2                 ; (+17h)
        exx     
        ld      a,d
        exx     
        and     40h
        jr      z,l03e2                 ; (+10h)
        ld      d,08h
        ld      sp,1689h
        jp      l2411
        ld      d,5fh
        ld      sp,1691h
        jp      l2411
l03e2:  ld      a,0c0h
        out     (00h),a
        exx     
        ld      a,d
        and     0efh
        ld      d,a
        ld      a,c
        exx     
        and     40h
        jp      nz,l37a8
        exx     
        ld      a,c
        exx     
        and     20h
        jp      nz,l3c44
        exx     
        ld      a,b
        and     80h
        jr      z,l040d                 ; (+0dh)
        ld      a,b
        and     7fh
        cp      05h
        jr      nc,l040d                ; (+06h)
        exx     
        ld      d,0ch
        jp      l12cb
l040d:  exx     
        jp      l12b6
        exx     
        ld      a,c
        and     0f0h
        or      02h
        ld      c,a
        exx     
        ld      a,d
        cp      7fh
        jp      z,l12b6
        and     80h
        jr      z,l042d                 ; (+0ah)
        exx     
        ld      a,d
        or      10h
        ld      d,a
        exx     
        ld      a,d
        and     7fh
        ld      d,a
l042d:  ld      a,d
        cp      20h
        jp      c,l16fd
        jr      nz,l043e                ; (+09h)
        exx     
        ld      a,d
        exx     
        and     40h
        jr      z,l043e                 ; (+02h)
        ld      d,5fh
l043e:  exx     
        ld      a,d
        exx     
        and     10h
        jr      nz,l04b0                ; (+6bh)
        ld      a,d
        cp      40h
        ld      hl,1746h
        jr      z,l04af                 ; (+62h)
        ld      hl,1756h
        cp      7eh
        jr      z,l04af                 ; (+5bh)
        cp      60h
        jr      z,l04af                 ; (+57h)
        cp      5eh
        jr      z,l04af                 ; (+53h)
        cp      5ch
        jr      z,l04af                 ; (+4fh)
        ld      hl,1726h
        cp      3ch
        jr      z,l04af                 ; (+48h)
        ld      hl,172eh
        cp      3eh
        jr      z,l04af                 ; (+41h)
        ld      hl,1736h
        cp      23h
        jr      z,l04af                 ; (+3ah)
        jr      l04b0                   ; (+39h)
        ld      c,0e0h
        ld      sp,1756h
        jp      l3525
        ld      c,0a0h
        ld      sp,1756h
        jp      l3525
        ld      d,08h
        ld      sp,173eh
        jp      l3411
        ld      d,7ch
        ld      sp,166bh
        jp      l3411
        ld      d,08h
        ld      sp,174eh
        jp      l3411
        ld      d,4fh
        ld      sp,166bh
        jp      l3411
        ld      d,20h
        ld      sp,166bh
        jp      l3411
l04af:  ld      sp,hl
l04b0:  exx     
        ld      a,d
        exx     
        and     10h
        jr      z,l0514                 ; (+5dh)
        ld      a,d
        sub     20h
        ld      hl,0b000h
        ld      b,30h
        ld      c,a
        add     hl,bc
        add     hl,bc
        add     hl,bc
        ld      bc,0ddfdh
        exx     
        ld      a,c
        exx     
        and     80h
        jr      z,l04d0                 ; (+03h)
        ld      bc,6cd0h
l04d0:  add     hl,bc
        ld      sp,1785h
        jr      l051e                   ; (+48h)
        ld      a,d
        sub     20h
        ld      hl,0b000h
        ld      b,30h
        ld      c,a
        add     hl,bc
        add     hl,bc
        add     hl,bc
        ld      bc,0ddfeh
        exx     
        ld      a,c
        exx     
        and     80h
        jr      z,l04ef                 ; (+03h)
        ld      bc,6cd1h
l04ef:  add     hl,bc
        ld      sp,17a4h
        jr      l051e                   ; (+29h)
        ld      a,d
        sub     20h
        ld      hl,0b000h
        ld      b,30h
        ld      c,a
        add     hl,bc
        add     hl,bc
        add     hl,bc
        ld      bc,0ddffh
        exx     
        ld      a,c
        exx     
        and     80h
        jr      z,l050e                 ; (+03h)
        ld      bc,6cd2h
l050e:  add     hl,bc
        ld      sp,166bh
        jr      l051e                   ; (+0ah)
l0514:  ld      a,d
        sub     20h
        ld      c,a
        ld      b,30h
        ld      hl,0ec6ch
        add     hl,bc
l051e:  ld      a,(hl)
        cp      00h
        jp      z,l06f8
        ld      c,a
        ld      a,c
        and     40h
        jr      nz,l0531                ; (+07h)
        ld      a,c
        and     80h
        or      44h
        jr      l0534                   ; (+03h)
l0531:  ld      a,c
        and     0c0h
l0534:  out     (00h),a
        ld      a,c
        and     3fh
        cp      20h
        jp      z,l1765
        cp      23h
        jp      z,l1765
        ld      a,c
        cp      24h
        jp      z,l1765
        cp      0c6h
        jp      z,l3721
        cp      0f9h
        jp      z,l277f
        cp      0fdh
        jp      z,l277f
        cp      0fah
        jp      z,l277f
        cp      0feh
        jp      z,l277f
        cp      0ffh
        jp      z,l277f
        cp      0c3h
        jp      z,l277f
        cp      0fbh
        jp      z,l057b
        cp      0c2h
        jp      nz,l157d
        ld      d,0dh
        jp      l16fd
l057b:  ld      d,09h
        exx     
        ld      a,d
        or      80h
        ld      d,a
        exx     
        ex      af,af'
        inc     a
        ex      af,af'
        ld      a,c
        and     0c7h
        ld      b,a
        ld      a,c
        and     38h
        ld      c,a
        ld      e,02h
        ld      l,02h
        ld      h,23h
l0594:  in      a,(00h)
        and     38h
        cp      c
        jr      z,l0594                 ; (-07h)
l059b:  in      a,(80h)
        and     01h
        jr      z,l05b0                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l05b0                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l05b9                ; (+0bh)
        jr      l05b8                   ; (+08h)
l05b0:  ld      a,l
        cp      02h
        jr      nz,l05b9                ; (+04h)
        dec     h
        jr      nz,l05b9                ; (+01h)
l05b8:  dec     l
l05b9:  in      a,(00h)
        and     38h
        cp      c
        jr      nz,l059b                ; (-25h)
        in      a,(00h)
        and     38h
        cp      c
        jr      nz,l059b                ; (-2ch)
        ld      a,b
        and     0bfh
        out     (00h),a
l05cc:  in      a,(80h)
        and     01h
        jr      z,l05e1                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l05e1                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l05ea                ; (+0bh)
        jr      l05e9                   ; (+08h)
l05e1:  ld      a,l
        cp      02h
        jr      nz,l05ea                ; (+04h)
        dec     h
        jr      nz,l05ea                ; (+01h)
l05e9:  dec     l
l05ea:  in      a,(00h)
        and     38h
        cp      c
        jr      z,l05cc                 ; (-25h)
        ld      a,b
        and     40h
        jr      nz,l05fd                ; (+07h)
        ld      a,b
        and     80h
        or      44h
        jr      l0600                   ; (+03h)
l05fd:  ld      a,b
        and     0c0h
l0600:  out     (00h),a
        dec     e
        jr      nz,l059b                ; (-6ah)
        ld      a,0c0h
        out     (00h),a
        exx     
        ld      a,c
        and     0fh
        exx     
        ld      e,a
l060f:  in      a,(80h)
        and     01h
        jr      z,l0624                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l0624                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l062d                ; (+0bh)
        jr      l062c                   ; (+08h)
l0624:  ld      a,l
        cp      02h
        jr      nz,l062d                ; (+04h)
        dec     h
        jr      nz,l062d                ; (+01h)
l062c:  dec     l
l062d:  in      a,(00h)
        and     38h
        cp      c
        jr      nz,l060f                ; (-25h)
        in      a,(00h)
        and     38h
        cp      c
        jr      nz,l060f                ; (-2ch)
        dec     e
l063c:  in      a,(80h)
        and     01h
        jr      z,l0651                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l0651                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l065a                ; (+0bh)
        jr      l0659                   ; (+08h)
l0651:  ld      a,l
        cp      02h
        jr      nz,l065a                ; (+04h)
        dec     h
        jr      nz,l065a                ; (+01h)
l0659:  dec     l
l065a:  ld      a,e
        or      a
        jr      z,l0667                 ; (+09h)
        in      a,(00h)
        and     38h
        cp      c
        jr      z,l063c                 ; (-29h)
        jr      l060f                   ; (-58h)
l0667:  exx     
        ld      a,d
        exx     
        and     80h
        jp      z,l16db
        ld      bc,3a98h
l0672:  in      a,(80h)
        and     01h
        jr      z,l0687                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l0687                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l0690                ; (+0bh)
        jr      l068f                   ; (+08h)
l0687:  ld      a,l
        cp      02h
        jr      nz,l0690                ; (+04h)
        dec     h
        jr      nz,l0690                ; (+01h)
l068f:  dec     l
l0690:  ld      a,l
        or      a
        jr      z,l0699                 ; (+05h)
        dec     bc
        ld      a,b
        or      c
        jr      nz,l0672                ; (-27h)
l0699:  exx     
        ld      a,d
        and     0f0h
        ld      d,a
        exx     
        and     10h
        jr      nz,l06f8                ; (+55h)
        ld      a,d
        cp      0dh
        jr      z,l06ac                 ; (+04h)
        cp      09h
        jr      nz,l06f8                ; (+4ch)
l06ac:  ld      l,02h
        ld      h,23h
l06b0:  in      a,(80h)
        and     01h
        jr      z,l06c5                 ; (+0fh)
        in      a,(80h)
        and     01h
        jr      z,l06c5                 ; (+09h)
        ld      h,23h
        ld      a,l
        cp      01h
        jr      nz,l06ce                ; (+0bh)
        jr      l06cd                   ; (+08h)
l06c5:  ld      a,l
        cp      02h
        jr      nz,l06ce                ; (+04h)
        dec     h
        jr      nz,l06ce                ; (+01h)
l06cd:  dec     l
l06ce:  ld      a,l
        cp      02h
        jr      nc,l06b0                ; (-23h)
        ld      hl,06aeh
l06d6:  dec     hl
        ld      a,l
        or      h
        jr      nz,l06d6                ; (-05h)
        ld      a,d
        cp      0dh
        jr      nz,l06f8                ; (+18h)
        ex      af,af'
        ld      a,00h
        ex      af,af'
        exx     
        ld      a,b
        and     7fh
        dec     a
        jr      nz,l06f6                ; (+0bh)
        ld      a,b
        and     80h
        ld      b,a
        ld      a,e
        and     7fh
        or      b
        ld      b,a
        jr      l06f7                   ; (+01h)
l06f6:  dec     b
l06f7:  exx     
l06f8:  ld      hl,0ed51h
        add     hl,sp
        jp      (hl)
l06fd:  exx     
        ld      a,d
        or      80h
        ld      d,a
        exx     
        ld      a,d
        cp      0ch
        jr      nz,l071d                ; (+15h)
l0708:  ld      sp,19beh
l070b:  ld      d,0dh
        jr      l06fd                   ; (-12h)
        exx     
        ld      a,b
        and     7fh
        cp      01h
        exx     
        ld      sp,1691h
        jr      z,l070b                 ; (-10h)
        jr      l0708                   ; (-15h)
l071d:  cp      08h
        jr      nz,l0737                ; (+16h)
        ld      e,0ah
        ex      af,af'
        ld      c,a
        ex      af,af'
        ld      a,c
        or      a
        jr      z,l06f8                 ; (-32h)
        ex      af,af'
        dec     a
        ex      af,af'
        exx     
        ld      a,d
        and     7fh
        ld      d,a
        exx     
        ld      c,0c6h
        jr      l0767                   ; (+30h)
l0737:  cp      0dh
        jr      nz,l0756                ; (+1bh)
        exx     
        ld      a,d
        and     0bfh
        ld      d,a
        exx     
        ld      c,0c2h
        ex      af,af'
        ld      e,a
        ex      af,af'
        ld      a,e
        cp      02h
        jp      nc,l2586
        exx     
        ld      a,d
        and     7fh
        ld      d,a
        exx     
        ld      e,0fh
        jr      l0767                   ; (+11h)
l0756:  cp      09h
        ld      c,0fbh
        jr      nz,l0763                ; (+07h)
        ex      af,af'
        add     a,08h
        ex      af,af'
        jp      l2586
l0763:  jr      l06f8                   ; (-6dh)
        ld      e,07h
l0767:  exx     
        ld      a,d
        and     08h
        jr      nz,l0776                ; (+09h)
        inc     d
l076e:  ld      a,d
        and     7fh
        ld      d,a
        exx     
        jp      l2586
l0776:  ld      a,c
        and     0f0h
        exx     
        or      e
        exx     
        ld      c,a
        jr      l076e                   ; (-11h)
        exx     
        jr      l076e                   ; (-14h)
        ld      a,0cfh
        out     (02h),a
        ld      a,38h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,0c0h
        out     (00h),a
        in      a,(00h)
        ld      b,1eh
l0796:  ld      hl,1644h
l0799:  dec     hl
        ld      a,l
        or      h
        jr      nz,l0799                ; (-05h)
        dec     b
        jr      nz,l0796                ; (-0bh)
l07a1:  exx     
        ld      c,40h
        ld      hl,0843h
        exx     
        exx     
        ld      a,(hl)
        inc     hl
        exx     
        ld      d,a
        cp      00h
        jp      z,l07c4
        and     80h
        jp      z,l02cb
        exx     
        ld      a,d
        or      10h
        ld      d,a
        exx     
        ld      a,d
        and     7fh
        ld      d,a
        jp      l22cb
l07c4:  out     (02h),a
        ld      a,0cfh
        out     (02h),a
        ld      a,0b8h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,40h
        out     (00h),a
        in      a,(00h)
        exx     
        ld      c,00h
        exx     
        in      a,(00h)
        and     80h
        jr      nz,l07e6                ; (+04h)
        exx     
        ld      c,10h
        exx     
l07e6:  ld      a,0cfh
        out     (02h),a
        ld      a,38h
        out     (02h),a
        ld      a,07h
        out     (02h),a
        ld      a,0c0h
        out     (00h),a
        in      a,(00h)
        exx     
        ld      a,c
        exx     
        and     10h
        ld      c,00h
        jp      nz,l0804
        ld      c,0c3h
l0804:  ld      sp,1ab9h
        jp      l0c61
        exx     
        ld      a,c
        exx     
        and     10h
        jp      z,l0822
        ld      b,1eh
l0814:  ld      hl,1644h
l0817:  dec     hl
        ld      a,l
        or      h
        jr      nz,l0817                ; (-05h)
        dec     b
        jr      nz,l0814                ; (-0bh)
        jp      l07a1
l0822:  ld      b,0ah
l0824:  ld      hl,06aeh
l0827:  dec     hl
        ld      a,l
        or      h
        jr      nz,l0827                ; (-05h)
        dec     b
        jr      nz,l0824                ; (-0bh)
        ld      a,40h
        out     (00h),a
        ld      b,0ah
l0835:  ld      hl,06aeh
l0838:  dec     hl
        ld      a,l
        or      h
        jr      nz,l0838                ; (-05h)
        dec     b
        jr      nz,l0835                ; (-0bh)
        jp      l07c4
        dec     c
        dec     c
        dec     hl
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     hl
        dec     c
        ld      a,h
        jr      nz,l088e                ; (+20h)
        jr      nz,l0890                ; (+20h)
        jr      nz,l0892                ; (+20h)
        jr      nz,l0894                ; (+20h)
        jr      nz,l0896                ; (+20h)
        jr      nz,l0898                ; (+20h)
        jr      nz,l089a                ; (+20h)
        jr      nz,l089c                ; (+20h)
        jr      nz,l089e                ; (+20h)
        jr      nz,l08a0                ; (+20h)
        jr      nz,l08a2                ; (+20h)
        jr      nz,l08a4                ; (+20h)
        jr      nz,l08a6                ; (+20h)
        jr      nz,l08a8                ; (+20h)
        jr      nz,l08aa                ; (+20h)
        jr      nz,l08ac                ; (+20h)
        jr      nz,l08ae                ; (+20h)
l088e:  jr      nz,l090c                ; (+7ch)
l0890:  dec     c
        ld      a,h
l0892:  jr      nz,l08b4                ; (+20h)
l0894:  ld      c,b
        ld      b,h
l0896:  jr      nz,l08c5                ; (+2dh)
l0898:  jr      nz,l08ed                ; (+53h)
l089a:  ld      c,c
        ld      d,e
l089c:  ld      d,h
        ld      l,20h
        ld      b,l
l08a0:  ld      c,h
        ld      b,l
l08a2:  ld      d,h
        ld      l,20h
        ld      c,c
l08a6:  ld      c,(hl)
        ld      b,h
l08a8:  jr      nz,l08ef                ; (+45h)
l08aa:  jr      nz,l08ef                ; (+43h)
l08ac:  ld      c,a
        ld      c,l
l08ae:  jr      nz,l08fc                ; (+4ch)
        ld      d,h
        ld      b,h
        ld      b,c
        jr      nz,l08d5                ; (+20h)
        ld      a,h
        dec     c
        ld      a,h
        jr      nz,l08da                ; (+20h)
        jr      nz,l08dc                ; (+20h)
        jr      nz,l08de                ; (+20h)
        jr      nz,l08e0                ; (+20h)
        jr      nz,l08e2                ; (+20h)
        jr      nz,l08e4                ; (+20h)
        jr      nz,l08e6                ; (+20h)
        jr      nz,l08e8                ; (+20h)
        jr      nz,l08ea                ; (+20h)
        jr      nz,l08ec                ; (+20h)
        jr      nz,l08ee                ; (+20h)
        jr      nz,l08f0                ; (+20h)
        jr      nz,l08f2                ; (+20h)
        jr      nz,l08f4                ; (+20h)
        jr      nz,l08f6                ; (+20h)
        jr      nz,l08f8                ; (+20h)
        jr      nz,l08fa                ; (+20h)
l08da:  jr      nz,l0958                ; (+7ch)
l08dc:  dec     c
        ld      a,h
l08de:  jr      nz,l0900                ; (+20h)
l08e0:  jr      nz,l0902                ; (+20h)
l08e2:  jr      nz,l0904                ; (+20h)
l08e4:  jr      nz,l0906                ; (+20h)
l08e6:  jr      nz,l0908                ; (+20h)
l08e8:  jr      nz,l090a                ; (+20h)
l08ea:  ld      c,c
        ld      c,(hl)
l08ec:  ld      d,h
l08ed:  ld      b,l
l08ee:  ld      d,d
l08ef:  ld      b,(hl)
l08f0:  ld      b,c
        ld      e,b
l08f2:  jr      nz,l0926                ; (+32h)
l08f4:  jr      nc,l0916                ; (+20h)
l08f6:  jr      nz,l0918                ; (+20h)
l08f8:  jr      nz,l091a                ; (+20h)
l08fa:  jr      nz,l091c                ; (+20h)
l08fc:  jr      nz,l091e                ; (+20h)
        jr      nz,l0920                ; (+20h)
l0900:  jr      nz,l097e                ; (+7ch)
l0902:  dec     c
        ld      a,h
l0904:  jr      nz,l0926                ; (+20h)
l0906:  jr      nz,l0928                ; (+20h)
l0908:  jr      nz,l092a                ; (+20h)
l090a:  jr      nz,l092c                ; (+20h)
l090c:  jr      nz,l092e                ; (+20h)
        ld      d,d
        ld      b,l
        ld      d,(hl)
        jr      nz,l095b                ; (+48h)
        ld      b,c
        ld      d,d
        ld      b,h
l0916:  ld      d,a
        ld      b,c
l0918:  ld      d,d
        ld      b,l
l091a:  jr      nz,l094c                ; (+30h)
l091c:  ld      sp,2020h
        jr      nz,l0941                ; (+20h)
        jr      nz,l0943                ; (+20h)
        jr      nz,l0945                ; (+20h)
        jr      nz,l0947                ; (+20h)
        ld      a,h
l0928:  dec     c
        ld      a,h
l092a:  jr      nz,l094c                ; (+20h)
l092c:  jr      nz,l094e                ; (+20h)
l092e:  jr      nz,l0950                ; (+20h)
        jr      nz,l0984                ; (+52h)
        ld      b,l
        ld      d,(hl)
        jr      nz,l0989                ; (+53h)
        ld      c,a
        ld      b,(hl)
        ld      d,h
        ld      d,a
        ld      b,c
        ld      d,d
        ld      b,l
        jr      nz,l095f                ; (+20h)
        jr      c,l0973                 ; (+32h)
l0941:  ld      (3330h),a
        jr      nc,l0977                ; (+31h)
        jr      nz,l0968                ; (+20h)
        jr      nz,l096a                ; (+20h)
        jr      nz,l096c                ; (+20h)
l094c:  jr      nz,l09ca                ; (+7ch)
l094e:  dec     c
        ld      a,h
l0950:  jr      nz,l0972                ; (+20h)
        jr      nz,l0974                ; (+20h)
        jr      nz,l0976                ; (+20h)
        jr      nz,l0978                ; (+20h)
l0958:  jr      nz,l097a                ; (+20h)
        jr      nz,l097c                ; (+20h)
        jr      nz,l097e                ; (+20h)
        jr      nz,l0980                ; (+20h)
        jr      nz,l0982                ; (+20h)
        jr      nz,l0984                ; (+20h)
        jr      nz,l0986                ; (+20h)
        jr      nz,l0988                ; (+20h)
l0968:  jr      nz,l098a                ; (+20h)
l096a:  jr      nz,l098c                ; (+20h)
l096c:  jr      nz,l098e                ; (+20h)
        jr      nz,l0990                ; (+20h)
        jr      nz,l0992                ; (+20h)
l0972:  jr      nz,l09f0                ; (+7ch)
l0974:  dec     c
        ld      a,h
l0976:  jr      nz,l0998                ; (+20h)
l0978:  jr      nz,l099a                ; (+20h)
l097a:  jr      nz,l099c                ; (+20h)
l097c:  jr      nz,l099e                ; (+20h)
l097e:  jr      nz,l09a0                ; (+20h)
l0980:  jr      nz,l09d8                ; (+56h)
l0982:  ld      h,l
        ld      (hl),d
l0984:  ld      (hl),e
        ld      h,c
l0986:  ld      l,a
        jr      nz,l09ca                ; (+41h)
l0989:  ld      b,d
l098a:  ld      c,(hl)
        ld      d,h
l098c:  jr      nz,l09ae                ; (+20h)
l098e:  jr      nz,l09b0                ; (+20h)
l0990:  jr      nz,l09b2                ; (+20h)
l0992:  jr      nz,l09b4                ; (+20h)
        jr      nz,l09b6                ; (+20h)
        jr      nz,l09b8                ; (+20h)
l0998:  jr      nz,l0a16                ; (+7ch)
l099a:  dec     c
        ld      a,h
l099c:  jr      nz,l09be                ; (+20h)
l099e:  jr      nz,l09c0                ; (+20h)
l09a0:  jr      nz,l09c2                ; (+20h)
        jr      nz,l09c4                ; (+20h)
        jr      nz,l09c6                ; (+20h)
        jr      nz,l09c8                ; (+20h)
        jr      nz,l09ca                ; (+20h)
        jr      nz,l09cc                ; (+20h)
        jr      nz,l09ce                ; (+20h)
l09ae:  jr      nz,l09d0                ; (+20h)
l09b0:  jr      nz,l09d2                ; (+20h)
l09b2:  jr      nz,l09d4                ; (+20h)
l09b4:  jr      nz,l09d6                ; (+20h)
l09b6:  jr      nz,l09d8                ; (+20h)
l09b8:  jr      nz,l09da                ; (+20h)
        jr      nz,l09dc                ; (+20h)
        jr      nz,l09de                ; (+20h)
l09be:  jr      nz,l0a3c                ; (+7ch)
l09c0:  dec     c
        dec     hl
l09c2:  dec     l
        dec     l
l09c4:  dec     l
        dec     l
l09c6:  dec     l
        dec     l
l09c8:  dec     l
        dec     l
l09ca:  dec     l
        dec     l
l09cc:  dec     l
        dec     l
l09ce:  dec     l
        dec     l
l09d0:  dec     l
        dec     l
l09d2:  dec     l
        dec     l
l09d4:  dec     l
        dec     l
l09d6:  dec     l
        dec     l
l09d8:  dec     l
        dec     l
l09da:  dec     l
        dec     l
l09dc:  dec     l
        dec     l
l09de:  dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     l
        dec     hl
        dec     c
        dec     c
        ld      a,(bc)
        ld      b,c
        ld      d,l
        ld      d,h
        ld      c,a
        jr      nz,l0a43                ; (+54h)
        ld      b,l
l09f0:  ld      d,e
        ld      d,h
        ld      b,l
        dec     c
        scf     
        ld      (3837h),a
        scf     
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
        ld      sp,3637h
        scf     
        inc     sp
        scf     
        inc     sp
        scf     
        ld      (hl),37h
        ld      sp,3937h
        scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0a4a                 ; (+37h)
        ld      (0d37h),a
l0a16:  scf     
        ld      (3837h),a
        scf     
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
        ld      sp,3637h
        scf     
        inc     sp
        scf     
        inc     sp
        scf     
        ld      (hl),37h
        ld      sp,3937h
        scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0a6c                 ; (+37h)
        ld      (0d37h),a
        scf     
        ld      (3837h),a
l0a3c:  scf     
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
l0a43:  ld      sp,3637h
        scf     
        inc     sp
        scf     
        inc     sp
l0a4a:  scf     
        ld      (hl),37h
        ld      sp,3937h
        scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0a8e                 ; (+37h)
        ld      (0d37h),a
        scf     
        inc     sp
        scf     
        ld      (hl),37h
        ld      sp,3937h
        scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0aa0                 ; (+37h)
        ld      (3237h),a
l0a6c:  scf     
        jr      c,l0aa6                 ; (+37h)
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
        ld      sp,3637h
        scf     
        inc     sp
        scf     
        dec     c
        scf     
        inc     sp
        scf     
        ld      (hl),37h
        ld      sp,3937h
        scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0ac2                 ; (+37h)
        ld      (3237h),a
l0a8e:  scf     
        jr      c,l0ac8                 ; (+37h)
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
        ld      sp,3637h
        scf     
        inc     sp
        scf     
        dec     c
        scf     
        inc     sp
l0aa0:  scf     
        ld      (hl),37h
        ld      sp,3937h
l0aa6:  scf     
        dec     (hl)
        scf     
        inc     (hl)
        scf     
        jr      c,l0ae4                 ; (+37h)
        ld      (3237h),a
        scf     
        jr      c,l0aea                 ; (+37h)
        inc     (hl)
        scf     
        dec     (hl)
        scf     
        add     hl,sp
        scf     
        ld      sp,3637h
        scf     
        inc     sp
        scf     
        dec     c
        ld      b,d
        ld      c,e
l0ac2:  ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
l0ac8:  ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
l0ae4:  ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
l0aea:  ld      b,d
        ld      c,e
        ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
        ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
        ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
        ld      b,d
        ld      c,e
        ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
        ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
        ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
        ld      b,d
        ld      c,e
        ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
        ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
        ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
        ld      b,d
        ld      c,e
        ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
        ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
        ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
        ld      b,d
        ld      c,e
        ld      b,d
        ld      e,b
        ld      b,d
        inc     h
        ld      b,d
        ld      e,c
        ld      b,d
        ld      d,a
        ld      b,d
        ld      c,b
        ld      b,d
        ld      b,a
        ld      b,d
        ld      d,l
        ld      b,d
        ld      d,c
        ld      b,d
        ld      c,l
        ld      b,d
        ld      b,h
        ld      b,d
        ld      c,h
        ld      b,d
        ld      d,b
        ld      b,d
        ld      c,(hl)
        ld      b,d
        ld      b,e
        ld      b,d
        ld      d,h
        ld      b,d
        ld      d,d
        ld      b,d
        ld      c,c
        ld      d,e
        ld      b,l
        ld      d,e
        ld      c,c
        ld      b,d
        dec     c
        dec     c
        nop     
        exx     
        ld      hl,0ebc6h
        exx     
        jp      l3c44
        jp      nz,lfdfb
        ei      
        ei      
        ei      
        ei      
        ei      
        ei      
        ei      
        ei      
        ei      
        jp      nz,l0e00
        jp      nz,l0d16
        ld      sp,1e96h
        jp      l0c61
        ld      c,0fah
        ld      sp,1e9eh
        jp      l0c61
        exx     
        ld      hl,005ah
        exx     
        ld      a,0c6h
        and     0c7h
        ld      b,a
        ld      a,0c6h
        and     38h
        ld      c,a
l0bfe:  in      a,(00h)
        and     38h
        cp      c
        jr      nz,l0bfe                ; (-07h)
        in      a,(00h)
        and     38h
        cp      c
        jr      nz,l0bfe                ; (-0eh)
        ld      a,b
        and     0bfh
        out     (00h),a
l0c11:  in      a,(00h)
        and     38h
        cp      c
        jr      z,l0c11                 ; (-07h)
        ld      a,b
        and     0c0h
        out     (00h),a
        exx     
        dec     hl
        ld      a,l
        or      h
        exx     
        jr      nz,l0bfe                ; (-26h)
        exx     
        ld      hl,0ec2bh
        exx     
        jr      l0c44                   ; (+19h)
        cp      0fbh
        jp      m,lfdfb
        jp      m,lfdfb
        jp      m,lfdfb
        jp      m,lfdfb
        jp      m,lfdfb
        jp      m,lfdfb
        jp      m,lc2ff
        nop     
l0c44:  ld      sp,1691h
        exx     
        ld      a,c
        or      20h
        ld      c,a
        ld      a,(hl)
        inc     hl
        exx     
        ld      c,a
        cp      00h
        jp      z,l3c58
        jp      l3c61
        exx     
        ld      c,a
        and     0dfh
        ld      c,a
        exx     
        jp      l13e2
l0c61:  exx     
        ld      a,c
        and     0f0h
        or      02h
        ld      c,a
        exx     
        jp      l1525
        pop     bc
        ld      c,5ah
        ld      h,h
        jp      po,l76e4
        ld      (hl),d
        ld      d,(hl)
        ld      d,d
        ld      hl,(0f111h)
        pop     de
        push    de
        ld      l,(hl)
        jp      nc,ldade
        xor     0eah
        adc     a,0cah
        or      0f2h
        sub     51h
        ld      d,l
        jr      nz,l0cee                ; (+64h)
        ld      h,b
        ld      (hl),c
        ld      e,(hl)
        ld      e,e
        ld      c,l
        ld      l,l
        ld      l,e
        ld      l,h
        ld      l,a
        ld      c,e
        ld      c,a
        ld      (hl),b
        ld      (hl),e
        ld      (hl),a
        ld      d,e
        ld      (hl),l
        ld      c,c
        ld      d,h
        ld      d,b
        ld      e,h
        ld      l,b
        ld      e,a
        ld      c,h
        ld      (hl),h
        ld      l,c
        ld      e,b
        ld      e,c
        ld      c,b
        ld      e,l
        ld      d,(hl)
        ld      h,b
        ld      d,d
        inc     hl
        ld      c,d
        ld      h,b
        in      a,(0cdh)
        db      0edh, 0ebh              ; Undocumented 8 T-State NOP
        call    pe,lcbef
        rst     08h
        ret     p

        di      
        rst     30h
        out     (0f5h),a
        ret     

        call    nc,ldcd0
        ret     pe

        rst     18h
        call    z,le9f4
        ret     c

        exx     
        ret     z

        ld      d,(ix+36h)
        ld      d,d
        ex      (sp),hl
        nop     
        ld      a,0afh
        or      a
        ret     

        pop     bc
        nop     
        nop     
        ld      h,b
        ld      e,e
        nop     
        ret     po

        ld      e,e
        nop     
        ld      h,e
        ld      e,e
        nop     
        ex      (sp),hl
        ld      e,e
        nop     
        inc     h
        ld      e,e
        nop     
        ld      d,a
        nop     
        nop     
        ld      h,b
        ld      l,h
        nop     
        ret     po

        ld      l,h
        nop     
        ld      h,e
        ld      l,h
        nop     
l0cee:  inc     h
        ld      l,h
        nop     
        ld      h,b
        ld      (hl),b
        nop     
        ret     po

        ld      (hl),b
        nop     
        ld      h,e
        ld      (hl),b
        nop     
        inc     h
        ld      (hl),b
        nop     
        ex      (sp),hl
        ld      c,c
        nop     
        ld      h,b
        ld      d,h
        nop     
        ret     po

        ld      d,h
        nop     
        ld      h,e
        ld      d,h
        nop     
        ex      (sp),hl
        ld      d,h
        nop     
        inc     h
        ld      d,h
        nop     
        ld      d,h
l0d10:  nop     
        nop     
        ld      h,b
        ld      (hl),h
        nop     
        ret     po

l0d16:  ld      (hl),h
        nop     
        ld      h,e
        ld      (hl),h
        nop     
        inc     h
        ld      (hl),h
        nop     
        inc     h
        ld      c,b
        nop     
        inc     h
        pop     bc
        nop     
        ld      c,(hl)
        nop     
        nop     
        ret     po

        pop     bc
        nop     
        ld      l,d
        nop     
        nop     
        call    nc,l0000
        ld      c,00h
        nop     
l0d33:  jr      nz,l0d10                ; (-25h)
        nop     
l0d36:  and     b
        in      a,(00h)
        inc     hl
        in      a,(00h)
        and     e
        in      a,(00h)
        inc     h
        in      a,(00h)
        rst     10h
        nop     
        nop     
        jr      nz,l0d33                ; (-14h)
        nop     
        and     b
        call    pe,l2300
        call    pe,l2400
        call    pe,l2000
        ret     p

        nop     
        and     b
        ret     p

        nop     
        inc     hl
        ret     p

        nop     
        inc     h
        ret     p

        nop     
        and     e
        ret     

        nop     
        jr      nz,l0d36                ; (-2ch)
        nop     
        and     b
        call    nc,l2300
        call    nc,la300
        call    nc,l2400
        call    nc,ld400
        nop     
        nop     
        jr      nz,l0d68                ; (-0ch)
        nop     
        and     b
        call    p,l2000
        call    p,l2400
        call    p,l2400
        ret     z

        nop     
        ld      c,l
        nop     
        nop     
        ld      e,(hl)
        nop     
        nop     
        ld      h,d
        nop     
        nop     
        ld      (hl),c
        nop     
        nop     
        ld      de,4ac6h
        and     b
        nop     
        nop     
        ret     po

        nop     
        nop     
        jr      nz,l0d98                ; (+00h)
l0d98:  nop     
        ld      h,b
        nop     
        nop     
        inc     hl
        nop     
        nop     
        ld      h,e
        nop     
        nop     
        and     e
        nop     
        nop     
        ex      (sp),hl
        nop     
        nop     
        inc     h
        nop     
        nop     
        ld      h,e
        ld      (hl),00h
        ld      l,00h
        nop     
        and     d
l0db2:  nop     
        nop     
        and     h
        nop     
        nop     
        ex      (sp),hl
        ld      a,(de)
        nop     
        ld      c,b
        add     a,0d1h
        ld      c,b
        add     a,64h
        and     e
        ld      h,h
        nop     
        ld      h,h
        add     a,6eh
        sub     c
        add     a,36h
        ld      d,h
        add     a,0d1h
        call    nc,ld1c6
        ld      d,h
        add     a,6eh
        ld      d,h
        add     a,0d9h
        ret     c

        nop     
        nop     
        exx     
        nop     
        nop     
        ret     z

        nop     
        nop     
        nop     
        nop     
        ld      d,(hl)
        nop     
        nop     
l0de4:  ld      (hl),00h
        nop     
        ld      d,d
        nop     
        nop     
        and     e
        pop     bc
        nop     
        nop     
        nop     
        nop     
        di      
        pop     af
        in      a,(01h)
        ld      d,a
        exx     
        ld      a,d
        or      80h
        ld      d,a
        exx     
        reti    

        pop     bc
        nop     
        nop     
l0e00:  ld      (hl),00h
        nop     
        ld      (hl),0c6h
        im      0                       ; Undocumented
        nop     
        nop     
        ld      d,h
        add     a,59h
        ld      c,b
        add     a,0d1h
        ld      (hl),00h
        nop     
        ld      l,d
        nop     
        nop     
        inc     h
        pop     bc
        nop     
        db      0edh, 00h               ; Undocumented 8 T-State NOP
        nop     
        ld      e,00h
        nop     
        jr      nz,l0e00                ; (-20h)
        pop     bc
        pop     de
        nop     
        nop     
        pop     de
        nop     
        nop     
        ld      l,b
        nop     
        nop     
        pop     de
        nop     
        nop     
        ld      h,d
        nop     
        nop     
        ld      de,4ac6h
        and     d
        nop     
        nop     
        and     h
        nop     
        nop     
        ld      h,b
        pop     bc
        nop     
        ld      l,00h
        nop     
        ex      (sp),hl
        ld      e,d
        nop     
        jr      nz,l0de4                ; (-60h)
        pop     bc
        pop     af
        nop     
        nop     
        sbc     a,00h
        nop     
        ld      h,d
        nop     
        nop     
        and     b
        ld      h,b
        pop     bc
        pop     bc
        nop     
        nop     
        pop     bc
        nop     
        nop     
        pop     bc
        nop     
        nop     
        ld      (hl),c
        nop     
        nop     
        ld      h,b
        ld      e,e
        nop     
        ret     po

        ld      e,e
        nop     
        ld      h,e
        ld      e,e
        nop     
        ex      (sp),hl
        ld      e,e
        nop     
        inc     h
        ld      e,e
        nop     
        ld      (5bc6h),hl
        ld      e,e
        nop     
        nop     
        ld      d,a
        nop     
        nop     
        ld      h,b
        ld      l,h
        nop     
        ret     po

        ld      l,h
        nop     
        ld      h,e
        ld      l,h
        nop     
        inc     h
        ld      l,h
        nop     
        ld      h,b
        ld      (hl),b
        nop     
        ret     po

        ld      (hl),b
        nop     
        ld      h,e
        ld      (hl),b
        nop     
        inc     h
        ld      (hl),b
        nop     
        ld      l,e
        add     a,0d1h
        ex      (sp),hl
        ld      c,c
        nop     
        ld      h,b
        ld      d,h
        nop     
        ret     po

        ld      d,h
        nop     
        ld      h,e
l0e9a:  ld      d,h
        nop     
        ex      (sp),hl
        ld      d,h
        nop     
        inc     h
        ld      d,h
        nop     
        pop     bc
        nop     
        nop     
        ld      l,(hl)
        add     a,92h
        ld      h,b
        ld      (hl),h
        nop     
        ret     po

        ld      (hl),h
        nop     
        ld      h,e
        ld      (hl),h
        nop     
        inc     h
        ld      (hl),h
        nop     
        ret     po

        ld      c,b
        nop     
        ld      d,b
        nop     
        nop     
        ld      c,l
        nop     
        nop     
        jr      nz,l0e9a                ; (-25h)
        nop     
        and     b
        in      a,(00h)
l0ec3:  inc     hl
        in      a,(00h)
        and     e
        in      a,(00h)
l0ec9:  inc     h
        in      a,(00h)
        ld      (0dbc6h),hl
        in      a,(00h)
        nop     
        rst     10h
        nop     
        nop     
        jr      nz,l0ec3                ; (-14h)
        nop     
        and     b
        call    pe,l2300
        call    pe,l2400
        call    pe,l2000
        ret     p

        nop     
        and     b
        ret     p

        nop     
        inc     hl
        ret     p

        nop     
        inc     h
        ret     p

        nop     
        ex      de,hl
        add     a,0d1h
        and     e
        ret     

        nop     
        jr      nz,l0ec9                ; (-2ch)
        nop     
        and     b
        call    nc,l2300
        call    nc,la300
        call    nc,l2400
        call    nc,lc100
        nop     
        nop     
        ld      l,(hl)
        add     a,94h
        jr      nz,l0efe                ; (-0ch)
        nop     
        and     b
        call    p,l2300
        call    p,l2400
        call    p,l2000
        ret     z

        nop     
        ret     nc

        nop     
        nop     
        inc     h
        ret     z

        nop     
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
l0f3a:  rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
l0f49:  rst     38h
        rst     38h
l0f4b:  rst     38h
        rst     38h
        rst     38h
        rst     38h
        rst     38h
        ret     p

        xor     l
        call    nz,l0db2
        and     b
        ld      a,(bc)
        ret     nz

        dec     l
        or      b
        inc     a
        and     d
        add     a,d
        rst     30h
        inc     h
        call    pe,l2000
        ret     p

        nop     
        and     b
        ret     p

        nop     
        inc     hl
        ret     p

        nop     
        inc     h
        ret     p

        nop     
        ex      de,hl
        add     a,0d1h
        and     e
        ret     

        nop     
        jr      nz,l0f49                ; (-2ch)
        nop     
        and     b
        call    nc,l2300
        call    nc,la300
        call    nc,l2400
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        nop     
        add     hl,bc
        ld      c,(hl)
        ret     z

        adc     a,d
        ld      c,h
        jr      nz,l0f3a                ; (-76h)
        adc     a,h
        adc     a,d
        ret     z

        ld      c,c
        ld      b,a
        ld      c,c
        ld      h,c
        adc     a,l
        ld      c,0bh
        ld      a,(bc)
        jr      nz,l0fcb                ; (+0eh)
        adc     a,l
        adc     a,b
        jr      nz,l0f4b                ; (-76h)
        jr      nz,l0fce                ; (+0bh)
        adc     a,a
        adc     a,(hl)
        jr      nz,l0f53                ; (-74h)
        ret     z

        adc     a,b
        ld      a,(bc)
        ld      c,8dh
        ret     z

        adc     a,d
l0fce:  ld      c,c
        adc     a,c
        ld      a,(bc)
        ld      c,h
        jr      nz,l1035                ; (+61h)
        ld      h,b
        ld      c,c
        adc     a,d
        ret     

        jr      nz,l0fe6                ; (+0ch)
        ld      a,(bc)
        ld      c,c
        adc     a,b
        rrc     d
        ld      c,c
        adc     a,d
        jr      nz,l1003                ; (+20h)
        and     a
        jr      nz,l102f                ; (+49h)
l0fe6:  adc     a,d
        ret     

        jr      nz,l1035                ; (+4bh)
        adc     a,a
        adc     a,c
        ret     z

        rrc     d
        ld      c,c
        adc     a,d
        jr      nz,l0ffd                ; (+0ah)
        jp      z,l8fc8
        jr      nz,l0fc0                ; (-38h)
        adc     a,d
        ld      c,e
        ret     z

        adc     a,d
        ld      d,a
l0ffd:  rrca    
        inc     l
        and     00h
