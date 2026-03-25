; Disassembly of the file "descrambled_rom.bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Wednesday, 25 of March 2026 at 11:13 AM
; 
0000 dde3      ex      (sp),ix
0002 00        nop     
0003 00        nop     
0004 3154ff    ld      sp,0ff54h
0007 00        nop     
0008 00        nop     
0009 c9        ret     

000a c0        ret     nz

000b e5        push    hl
000c c9        ret     

000d 2afc0f    ld      hl,(0ffch)
0010 11fb0f    ld      de,0ffbh
0013 0600      ld      b,00h
0015 1b        dec     de
0016 00        nop     
0017 00        nop     
0018 1a        ld      a,(de)
0019 4f        ld      c,a
001a af        xor     a
001b ed42      sbc     hl,bc
001d 7a        ld      a,d
001e 00        nop     
001f b3        or      e
0020 2803      jr      z,0025h          ; (+03h)
0022 1b        dec     de
0023 18f0      jr      0015h            ; (-10h)
0025 7c        ld      a,h
0026 b5        or      l
0027 c2cd0c    jp      nz,0ccdh
002a c3cc1c    jp      1ccch
002d ed5e      im      2
002f 3e00      ld      a,00h
0031 d302      out     (02h),a
0033 3ecf      ld      a,0cfh
0035 d302      out     (02h),a
0037 3eb8      ld      a,0b8h
0039 d302      out     (02h),a
003b 3e07      ld      a,07h
003d d302      out     (02h),a
003f 3ec0      ld      a,0c0h
0041 d300      out     (00h),a
0043 db00      in      a,(00h)
0045 3e07      ld      a,07h
0047 d303      out     (03h),a
0049 3e0f      ld      a,0fh
004b ed47      ld      i,a
004d ed4d      reti    

004f 76        halt    
0050 b0        or      b
0051 02        ld      (bc),a
0052 bc        cp      h
0053 00        nop     
0054 fc0000    call    m,0000h
0057 01a300    ld      bc,00a3h
005a 3802      jr      c,005eh          ; (+02h)
005c f3        di      
005d 315800    ld      sp,0058h
0060 ed5e      im      2
0062 3e00      ld      a,00h
0064 ed47      ld      i,a
0066 3e00      ld      a,00h
0068 d302      out     (02h),a
006a 3ecf      ld      a,0cfh
006c d302      out     (02h),a
006e 3eb8      ld      a,0b8h
0070 d302      out     (02h),a
0072 3e07      ld      a,07h
0074 d302      out     (02h),a
0076 3e40      ld      a,40h
0078 d300      out     (00h),a
007a db00      in      a,(00h)
007c 3e5a      ld      a,5ah
007e d303      out     (03h),a
0080 3e4f      ld      a,4fh
0082 d303      out     (03h),a
0084 3e87      ld      a,87h
0086 d303      out     (03h),a
0088 db01      in      a,(01h)
008a ed4d      reti    

008c 00        nop     
008d 2001      jr      nz,0090h         ; (+01h)
008f 1002      djnz    0093h            ; (+02h)
0091 40        ld      b,b
0092 03        inc     bc
0093 04        inc     b
0094 84        add     a,h
0095 80        add     a,b
0096 05        dec     b
0097 05        dec     b
0098 0603      ld      b,03h
009a 07        rlca    
009b 02        ld      (bc),a
009c 40        ld      b,b
009d 00        nop     
009e 44        ld      b,h
009f 00        nop     
00a0 c0        ret     nz

00a1 00        nop     
00a2 ff        rst     38h
00a3 3e00      ld      a,00h
00a5 d300      out     (00h),a
00a7 010000    ld      bc,0000h
00aa 10fe      djnz    00aah            ; (-02h)
00ac 0d        dec     c
00ad c2aa00    jp      nz,00aah
00b0 3e04      ld      a,04h
00b2 d300      out     (00h),a
00b4 d9        exx     
00b5 4f        ld      c,a
00b6 d9        exx     
00b7 010000    ld      bc,0000h
00ba 60        ld      h,b
00bb 69        ld      l,c
00bc 315400    ld      sp,0054h
00bf db01      in      a,(01h)
00c1 2c        inc     l
00c2 fb        ei      
00c3 7d        ld      a,l
00c4 fe05      cp      05h
00c6 cad700    jp      z,00d7h
00c9 f3        di      
00ca 10f6      djnz    00c2h            ; (-0ah)
00cc 0d        dec     c
00cd c2c200    jp      nz,00c2h
00d0 25        dec     h
00d1 c2c200    jp      nz,00c2h
00d4 c33e01    jp      013eh
00d7 f3        di      
00d8 315600    ld      sp,0056h
00db fb        ei      
00dc 1606      ld      d,06h
00de 010000    ld      bc,0000h
00e1 10fe      djnz    00e1h            ; (-02h)
00e3 0d        dec     c
00e4 c2e100    jp      nz,00e1h
00e7 15        dec     d
00e8 c2e100    jp      nz,00e1h
00eb f3        di      
00ec 315800    ld      sp,0058h
00ef fb        ei      
00f0 1604      ld      d,04h
00f2 10fe      djnz    00f2h            ; (-02h)
00f4 0d        dec     c
00f5 c2f200    jp      nz,00f2h
00f8 15        dec     d
00f9 c2f200    jp      nz,00f2h
00fc f3        di      
00fd c33e01    jp      013eh
0100 f3        di      
0101 010000    ld      bc,0000h
0104 3e00      ld      a,00h
0106 d300      out     (00h),a
0108 10fe      djnz    0108h            ; (-02h)
010a 0d        dec     c
010b c20801    jp      nz,0108h
010e 3e02      ld      a,02h
0110 d300      out     (00h),a
0112 d9        exx     
0113 5f        ld      e,a
0114 d9        exx     
0115 10fe      djnz    0115h            ; (-02h)
0117 0d        dec     c
0118 c21501    jp      nz,0115h
011b 218c00    ld      hl,008ch
011e 010000    ld      bc,0000h
0121 16ff      ld      d,0ffh
0123 7e        ld      a,(hl)
0124 feff      cp      0ffh
0126 ca8101    jp      z,0181h
0129 d300      out     (00h),a
012b 23        inc     hl
012c 4e        ld      c,(hl)
012d 23        inc     hl
012e db01      in      a,(01h)
0130 2f        cpl     
0131 b9        cp      c
0132 28ea      jr      z,011eh          ; (-16h)
0134 10f8      djnz    012eh            ; (-08h)
0136 1d        dec     e
0137 c22e01    jp      nz,012eh
013a 15        dec     d
013b c22e01    jp      nz,012eh
013e f3        di      
013f 010000    ld      bc,0000h
0142 161e      ld      d,1eh
0144 1e02      ld      e,02h
0146 d9        exx     
0147 79        ld      a,c
0148 d9        exx     
0149 fe00      cp      00h
014b 2002      jr      nz,014fh         ; (+02h)
014d 1e03      ld      e,03h
014f 3e40      ld      a,40h
0151 d300      out     (00h),a
0153 10fe      djnz    0153h            ; (-02h)
0155 0d        dec     c
0156 0d        dec     c
0157 c25301    jp      nz,0153h
015a d9        exx     
015b 79        ld      a,c
015c d9        exx     
015d d300      out     (00h),a
015f 10fe      djnz    015fh            ; (-02h)
0161 0d        dec     c
0162 0d        dec     c
0163 c25f01    jp      nz,015fh
0166 3e40      ld      a,40h
0168 d300      out     (00h),a
016a 1d        dec     e
016b 20e6      jr      nz,0153h         ; (-1ah)
016d 10fe      djnz    016dh            ; (-02h)
016f 0d        dec     c
0170 0d        dec     c
0171 c26d01    jp      nz,016dh
0174 15        dec     d
0175 28dc      jr      z,0153h          ; (-24h)
0177 d9        exx     
0178 79        ld      a,c
0179 d9        exx     
017a fe00      cp      00h
017c 20c0      jr      nz,013eh         ; (-40h)
017e c35c00    jp      005ch
0181 010000    ld      bc,0000h
0184 3e00      ld      a,00h
0186 d300      out     (00h),a
0188 10fe      djnz    0188h            ; (-02h)
018a 0d        dec     c
018b c28801    jp      nz,0188h
018e 3e06      ld      a,06h
0190 d9        exx     
0191 4f        ld      c,a
0192 d9        exx     
0193 3e40      ld      a,40h
0195 d300      out     (00h),a
0197 db00      in      a,(00h)
0199 e680      and     80h
019b c2a701    jp      nz,01a7h
019e 10f7      djnz    0197h            ; (-09h)
01a0 0d        dec     c
01a1 c29701    jp      nz,0197h
01a4 c33e01    jp      013eh
01a7 010000    ld      bc,0000h
01aa 3e44      ld      a,44h
01ac d300      out     (00h),a
01ae db00      in      a,(00h)
01b0 e680      and     80h
01b2 cabe01    jp      z,01beh
01b5 10f7      djnz    01aeh            ; (-09h)
01b7 0d        dec     c
01b8 c2ae01    jp      nz,01aeh
01bb c33e01    jp      013eh
01be 010000    ld      bc,0000h
01c1 db80      in      a,(80h)
01c3 e601      and     01h
01c5 ca3e01    jp      z,013eh
01c8 3e07      ld      a,07h
01ca d300      out     (00h),a
01cc db80      in      a,(80h)
01ce e601      and     01h
01d0 cadc01    jp      z,01dch
01d3 10f7      djnz    01cch            ; (-09h)
01d5 0d        dec     c
01d6 c2cc01    jp      nz,01cch
01d9 c33e01    jp      013eh
01dc 010000    ld      bc,0000h
01df 16ff      ld      d,0ffh
01e1 db00      in      a,(00h)
01e3 5f        ld      e,a
01e4 e610      and     10h
01e6 ca3e01    jp      z,013eh
01e9 7b        ld      a,e
01ea e608      and     08h
01ec 200d      jr      nz,01fbh         ; (+0dh)
01ee 10f1      djnz    01e1h            ; (-0fh)
01f0 0d        dec     c
01f1 c2e101    jp      nz,01e1h
01f4 15        dec     d
01f5 c2e101    jp      nz,01e1h
01f8 c33e01    jp      013eh
01fb 010000    ld      bc,0000h
01fe db01      in      a,(01h)
0200 db00      in      a,(00h)
0202 e618      and     18h
0204 281b      jr      z,0221h          ; (+1bh)
0206 db01      in      a,(01h)
0208 db00      in      a,(00h)
020a e618      and     18h
020c 2813      jr      z,0221h          ; (+13h)
020e db01      in      a,(01h)
0210 db00      in      a,(00h)
0212 e618      and     18h
0214 280b      jr      z,0221h          ; (+0bh)
0216 db01      in      a,(01h)
0218 db00      in      a,(00h)
021a e618      and     18h
021c 2803      jr      z,0221h          ; (+03h)
021e c33e01    jp      013eh
0221 db00      in      a,(00h)
0223 e618      and     18h
0225 fe10      cp      10h
0227 2808      jr      z,0231h          ; (+08h)
0229 10f6      djnz    0221h            ; (-0ah)
022b 0d        dec     c
022c 20f3      jr      nz,0221h         ; (-0dh)
022e c33e01    jp      013eh
0231 d9        exx     
0232 0e00      ld      c,00h
0234 d9        exx     
0235 c33e01    jp      013eh
0238 f3        di      
0239 00        nop     
023a ed4d      reti    

023c 3e00      ld      a,00h
023e 57        ld      d,a
023f 4f        ld      c,a
0240 0638      ld      b,38h
0242 58        ld      e,b
0243 d9        exx     
0244 08        ex      af,af'
0245 db00      in      a,(00h)
0247 e680      and     80h
0249 c8        ret     z

024a 3ecf      ld      a,0cfh
024c d302      out     (02h),a
024e 3e38      ld      a,38h
0250 d302      out     (02h),a
0252 3e07      ld      a,07h
0254 d302      out     (02h),a
0256 3ec0      ld      a,0c0h
0258 d300      out     (00h),a
025a db00      in      a,(00h)
025c 2afe0f    ld      hl,(0ffeh)
025f 11fe0f    ld      de,0ffeh
0262 0600      ld      b,00h
0264 1b        dec     de
0265 1a        ld      a,(de)
0266 4f        ld      c,a
0267 af        xor     a
0268 ed42      sbc     hl,bc
026a 1b        dec     de
026b 7a        ld      a,d
026c b3        or      e
026d 2802      jr      z,0271h          ; (+02h)
026f 18f3      jr      0264h            ; (-0dh)
0271 7c        ld      a,h
0272 b5        or      l
0273 20d5      jr      nz,024ah         ; (-2bh)
0275 061e      ld      b,1eh
0277 214416    ld      hl,1644h
027a 2b        dec     hl
027b 7d        ld      a,l
027c b4        or      h
027d 20fb      jr      nz,027ah         ; (-05h)
027f 05        dec     b
0280 20f5      jr      nz,0277h         ; (-0bh)
0282 315000    ld      sp,0050h
0285 3ecf      ld      a,0cfh
0287 d303      out     (03h),a
0289 3eff      ld      a,0ffh
028b d303      out     (03h),a
028d 3e07      ld      a,07h
028f d302      out     (02h),a
0291 db01      in      a,(01h)
0293 47        ld      b,a
0294 3e4f      ld      a,4fh
0296 d303      out     (03h),a
0298 3e17      ld      a,17h
029a d303      out     (03h),a
029c 3e50      ld      a,50h
029e d303      out     (03h),a
02a0 3e50      ld      a,50h
02a2 d303      out     (03h),a
02a4 3e4f      ld      a,4fh
02a6 d303      out     (03h),a
02a8 3e87      ld      a,87h
02aa d303      out     (03h),a
02ac db01      in      a,(01h)
02ae ed4d      reti    

02b0 31b602    ld      sp,02b6h
02b3 c3dd3b    jp      3bddh
02b6 3152ff    ld      sp,0ff52h
02b9 d9        exx     
02ba 7a        ld      a,d
02bb e67f      and     7fh
02bd 57        ld      d,a
02be d9        exx     
02bf fb        ei      
02c0 00        nop     
02c1 00        nop     
02c2 f3        di      
02c3 c9        ret     

02c4 d9        exx     
02c5 7a        ld      a,d
02c6 e680      and     80h
02c8 d9        exx     
02c9 28eb      jr      z,02b6h          ; (-15h)
02cb d9        exx     
02cc 7b        ld      a,e
02cd d9        exx     
02ce e680      and     80h
02d0 2804      jr      z,02d6h          ; (+04h)
02d2 7a        ld      a,d
02d3 e67f      and     7fh
02d5 57        ld      d,a
02d6 d9        exx     
02d7 79        ld      a,c
02d8 e610      and     10h
02da 280f      jr      z,02ebh          ; (+0fh)
02dc 79        ld      a,c
02dd e6ef      and     0efh
02df 4f        ld      c,a
02e0 d9        exx     
02e1 7a        ld      a,d
02e2 b7        or      a
02e3 ca7e03    jp      z,037eh
02e6 0640      ld      b,40h
02e8 c38703    jp      0387h
02eb 7a        ld      a,d
02ec d9        exx     
02ed e630      and     30h
02ef fe30      cp      30h
02f1 201b      jr      nz,030eh         ; (+1bh)
02f3 7a        ld      a,d
02f4 e67f      and     7fh
02f6 57        ld      d,a
02f7 d9        exx     
02f8 7b        ld      a,e
02f9 d9        exx     
02fa e680      and     80h
02fc b2        or      d
02fd d9        exx     
02fe 5f        ld      e,a
02ff 78        ld      a,b
0300 d9        exx     
0301 e680      and     80h
0303 b2        or      d
0304 d9        exx     
0305 47        ld      b,a
0306 7a        ld      a,d
0307 e6cf      and     0cfh
0309 57        ld      d,a
030a d9        exx     
030b c3b612    jp      12b6h
030e 7a        ld      a,d
030f 316b16    ld      sp,166bh
0312 e67f      and     7fh
0314 fe1b      cp      1bh
0316 2016      jr      nz,032eh         ; (+16h)
0318 d9        exx     
0319 7a        ld      a,d
031a d9        exx     
031b e620      and     20h
031d 2803      jr      z,0322h          ; (+03h)
031f c3b612    jp      12b6h
0322 d9        exx     
0323 7a        ld      a,d
0324 f620      or      20h
0326 57        ld      d,a
0327 d9        exx     
0328 c3e213    jp      13e2h
032b ca3103    jp      z,0331h
032e d9        exx     
032f 7a        ld      a,d
0330 d9        exx     
0331 e620      and     20h
0333 ca1124    jp      z,2411h
0336 d9        exx     
0337 7a        ld      a,d
0338 e6df      and     0dfh
033a 57        ld      d,a
033b d9        exx     
033c 7a        ld      a,d
033d e67f      and     7fh
033f fe2d      cp      2dh
0341 2832      jr      z,0375h          ; (+32h)
0343 fe5a      cp      5ah
0345 2848      jr      z,038fh          ; (+48h)
0347 fe59      cp      59h
0349 284d      jr      z,0398h          ; (+4dh)
034b fe52      cp      52h
034d 0610      ld      b,10h
034f 2836      jr      z,0387h          ; (+36h)
0351 fe40      cp      40h
0353 cadd3b    jp      z,3bddh
0356 fe4e      cp      4eh
0358 caa133    jp      z,33a1h
035b fe4f      cp      4fh
035d caaa33    jp      z,33aah
0360 fe43      cp      43h
0362 cab333    jp      z,33b3h
0365 fe49      cp      49h
0367 cabe3b    jp      z,3bbeh
036a fe44      cp      44h
036c 1600      ld      d,00h
036e 0ef9      ld      c,0f9h
0370 ca2525    jp      z,2525h
0373 186d      jr      03e2h            ; (+6dh)
0375 d9        exx     
0376 79        ld      a,c
0377 f610      or      10h
0379 4f        ld      c,a
037a d9        exx     
037b c3b612    jp      12b6h
037e d9        exx     
037f 7a        ld      a,d
0380 e6bf      and     0bfh
0382 57        ld      d,a
0383 d9        exx     
0384 c3b612    jp      12b6h
0387 78        ld      a,b
0388 d9        exx     
0389 b2        or      d
038a 57        ld      d,a
038b d9        exx     
038c c3b612    jp      12b6h
038f d9        exx     
0390 79        ld      a,c
0391 f680      or      80h
0393 4f        ld      c,a
0394 d9        exx     
0395 c3b612    jp      12b6h
0398 d9        exx     
0399 79        ld      a,c
039a e67f      and     7fh
039c 4f        ld      c,a
039d d9        exx     
039e c3b612    jp      12b6h
03a1 d9        exx     
03a2 78        ld      a,b
03a3 f680      or      80h
03a5 47        ld      b,a
03a6 d9        exx     
03a7 c3b612    jp      12b6h
03aa d9        exx     
03ab 78        ld      a,b
03ac e67f      and     7fh
03ae 47        ld      b,a
03af d9        exx     
03b0 c3b612    jp      12b6h
03b3 d9        exx     
03b4 7a        ld      a,d
03b5 f630      or      30h
03b7 57        ld      d,a
03b8 d9        exx     
03b9 c3b612    jp      12b6h
03bc d9        exx     
03bd 7a        ld      a,d
03be e6ef      and     0efh
03c0 57        ld      d,a
03c1 d9        exx     
03c2 7a        ld      a,d
03c3 fe20      cp      20h
03c5 381b      jr      c,03e2h          ; (+1bh)
03c7 fe5f      cp      5fh
03c9 2817      jr      z,03e2h          ; (+17h)
03cb d9        exx     
03cc 7a        ld      a,d
03cd d9        exx     
03ce e640      and     40h
03d0 2810      jr      z,03e2h          ; (+10h)
03d2 1608      ld      d,08h
03d4 318916    ld      sp,1689h
03d7 c31124    jp      2411h
03da 165f      ld      d,5fh
03dc 319116    ld      sp,1691h
03df c31124    jp      2411h
03e2 3ec0      ld      a,0c0h
03e4 d300      out     (00h),a
03e6 d9        exx     
03e7 7a        ld      a,d
03e8 e6ef      and     0efh
03ea 57        ld      d,a
03eb 79        ld      a,c
03ec d9        exx     
03ed e640      and     40h
03ef c2a837    jp      nz,37a8h
03f2 d9        exx     
03f3 79        ld      a,c
03f4 d9        exx     
03f5 e620      and     20h
03f7 c2443c    jp      nz,3c44h
03fa d9        exx     
03fb 78        ld      a,b
03fc e680      and     80h
03fe 280d      jr      z,040dh          ; (+0dh)
0400 78        ld      a,b
0401 e67f      and     7fh
0403 fe05      cp      05h
0405 3006      jr      nc,040dh         ; (+06h)
0407 d9        exx     
0408 160c      ld      d,0ch
040a c3cb12    jp      12cbh
040d d9        exx     
040e c3b612    jp      12b6h
0411 d9        exx     
0412 79        ld      a,c
0413 e6f0      and     0f0h
0415 f602      or      02h
0417 4f        ld      c,a
0418 d9        exx     
0419 7a        ld      a,d
041a fe7f      cp      7fh
041c cab612    jp      z,12b6h
041f e680      and     80h
0421 280a      jr      z,042dh          ; (+0ah)
0423 d9        exx     
0424 7a        ld      a,d
0425 f610      or      10h
0427 57        ld      d,a
0428 d9        exx     
0429 7a        ld      a,d
042a e67f      and     7fh
042c 57        ld      d,a
042d 7a        ld      a,d
042e fe20      cp      20h
0430 dafd16    jp      c,16fdh
0433 2009      jr      nz,043eh         ; (+09h)
0435 d9        exx     
0436 7a        ld      a,d
0437 d9        exx     
0438 e640      and     40h
043a 2802      jr      z,043eh          ; (+02h)
043c 165f      ld      d,5fh
043e d9        exx     
043f 7a        ld      a,d
0440 d9        exx     
0441 e610      and     10h
0443 206b      jr      nz,04b0h         ; (+6bh)
0445 7a        ld      a,d
0446 fe40      cp      40h
0448 214617    ld      hl,1746h
044b 2862      jr      z,04afh          ; (+62h)
044d 215617    ld      hl,1756h
0450 fe7e      cp      7eh
0452 285b      jr      z,04afh          ; (+5bh)
0454 fe60      cp      60h
0456 2857      jr      z,04afh          ; (+57h)
0458 fe5e      cp      5eh
045a 2853      jr      z,04afh          ; (+53h)
045c fe5c      cp      5ch
045e 284f      jr      z,04afh          ; (+4fh)
0460 212617    ld      hl,1726h
0463 fe3c      cp      3ch
0465 2848      jr      z,04afh          ; (+48h)
0467 212e17    ld      hl,172eh
046a fe3e      cp      3eh
046c 2841      jr      z,04afh          ; (+41h)
046e 213617    ld      hl,1736h
0471 fe23      cp      23h
0473 283a      jr      z,04afh          ; (+3ah)
0475 1839      jr      04b0h            ; (+39h)
0477 0ee0      ld      c,0e0h
0479 315617    ld      sp,1756h
047c c32535    jp      3525h
047f 0ea0      ld      c,0a0h
0481 315617    ld      sp,1756h
0484 c32535    jp      3525h
0487 1608      ld      d,08h
0489 313e17    ld      sp,173eh
048c c31134    jp      3411h
048f 167c      ld      d,7ch
0491 316b16    ld      sp,166bh
0494 c31134    jp      3411h
0497 1608      ld      d,08h
0499 314e17    ld      sp,174eh
049c c31134    jp      3411h
049f 164f      ld      d,4fh
04a1 316b16    ld      sp,166bh
04a4 c31134    jp      3411h
04a7 1620      ld      d,20h
04a9 316b16    ld      sp,166bh
04ac c31134    jp      3411h
04af f9        ld      sp,hl
04b0 d9        exx     
04b1 7a        ld      a,d
04b2 d9        exx     
04b3 e610      and     10h
04b5 285d      jr      z,0514h          ; (+5dh)
04b7 7a        ld      a,d
04b8 d620      sub     20h
04ba 2100b0    ld      hl,0b000h
04bd 0630      ld      b,30h
04bf 4f        ld      c,a
04c0 09        add     hl,bc
04c1 09        add     hl,bc
04c2 09        add     hl,bc
04c3 01fddd    ld      bc,0ddfdh
04c6 d9        exx     
04c7 79        ld      a,c
04c8 d9        exx     
04c9 e680      and     80h
04cb 2803      jr      z,04d0h          ; (+03h)
04cd 01d06c    ld      bc,6cd0h
04d0 09        add     hl,bc
04d1 318517    ld      sp,1785h
04d4 1848      jr      051eh            ; (+48h)
04d6 7a        ld      a,d
04d7 d620      sub     20h
04d9 2100b0    ld      hl,0b000h
04dc 0630      ld      b,30h
04de 4f        ld      c,a
04df 09        add     hl,bc
04e0 09        add     hl,bc
04e1 09        add     hl,bc
04e2 01fedd    ld      bc,0ddfeh
04e5 d9        exx     
04e6 79        ld      a,c
04e7 d9        exx     
04e8 e680      and     80h
04ea 2803      jr      z,04efh          ; (+03h)
04ec 01d16c    ld      bc,6cd1h
04ef 09        add     hl,bc
04f0 31a417    ld      sp,17a4h
04f3 1829      jr      051eh            ; (+29h)
04f5 7a        ld      a,d
04f6 d620      sub     20h
04f8 2100b0    ld      hl,0b000h
04fb 0630      ld      b,30h
04fd 4f        ld      c,a
04fe 09        add     hl,bc
04ff 09        add     hl,bc
0500 09        add     hl,bc
0501 01ffdd    ld      bc,0ddffh
0504 d9        exx     
0505 79        ld      a,c
0506 d9        exx     
0507 e680      and     80h
0509 2803      jr      z,050eh          ; (+03h)
050b 01d26c    ld      bc,6cd2h
050e 09        add     hl,bc
050f 316b16    ld      sp,166bh
0512 180a      jr      051eh            ; (+0ah)
0514 7a        ld      a,d
0515 d620      sub     20h
0517 4f        ld      c,a
0518 0630      ld      b,30h
051a 216cec    ld      hl,0ec6ch
051d 09        add     hl,bc
051e 7e        ld      a,(hl)
051f fe00      cp      00h
0521 caf806    jp      z,06f8h
0524 4f        ld      c,a
0525 79        ld      a,c
0526 e640      and     40h
0528 2007      jr      nz,0531h         ; (+07h)
052a 79        ld      a,c
052b e680      and     80h
052d f644      or      44h
052f 1803      jr      0534h            ; (+03h)
0531 79        ld      a,c
0532 e6c0      and     0c0h
0534 d300      out     (00h),a
0536 79        ld      a,c
0537 e63f      and     3fh
0539 fe20      cp      20h
053b ca6517    jp      z,1765h
053e fe23      cp      23h
0540 ca6517    jp      z,1765h
0543 79        ld      a,c
0544 fe24      cp      24h
0546 ca6517    jp      z,1765h
0549 fec6      cp      0c6h
054b ca2137    jp      z,3721h
054e fef9      cp      0f9h
0550 ca7f27    jp      z,277fh
0553 fefd      cp      0fdh
0555 ca7f27    jp      z,277fh
0558 fefa      cp      0fah
055a ca7f27    jp      z,277fh
055d fefe      cp      0feh
055f ca7f27    jp      z,277fh
0562 feff      cp      0ffh
0564 ca7f27    jp      z,277fh
0567 fec3      cp      0c3h
0569 ca7f27    jp      z,277fh
056c fefb      cp      0fbh
056e ca7b05    jp      z,057bh
0571 fec2      cp      0c2h
0573 c27d15    jp      nz,157dh
0576 160d      ld      d,0dh
0578 c3fd16    jp      16fdh
057b 1609      ld      d,09h
057d d9        exx     
057e 7a        ld      a,d
057f f680      or      80h
0581 57        ld      d,a
0582 d9        exx     
0583 08        ex      af,af'
0584 3c        inc     a
0585 08        ex      af,af'
0586 79        ld      a,c
0587 e6c7      and     0c7h
0589 47        ld      b,a
058a 79        ld      a,c
058b e638      and     38h
058d 4f        ld      c,a
058e 1e02      ld      e,02h
0590 2e02      ld      l,02h
0592 2623      ld      h,23h
0594 db00      in      a,(00h)
0596 e638      and     38h
0598 b9        cp      c
0599 28f9      jr      z,0594h          ; (-07h)
059b db80      in      a,(80h)
059d e601      and     01h
059f 280f      jr      z,05b0h          ; (+0fh)
05a1 db80      in      a,(80h)
05a3 e601      and     01h
05a5 2809      jr      z,05b0h          ; (+09h)
05a7 2623      ld      h,23h
05a9 7d        ld      a,l
05aa fe01      cp      01h
05ac 200b      jr      nz,05b9h         ; (+0bh)
05ae 1808      jr      05b8h            ; (+08h)
05b0 7d        ld      a,l
05b1 fe02      cp      02h
05b3 2004      jr      nz,05b9h         ; (+04h)
05b5 25        dec     h
05b6 2001      jr      nz,05b9h         ; (+01h)
05b8 2d        dec     l
05b9 db00      in      a,(00h)
05bb e638      and     38h
05bd b9        cp      c
05be 20db      jr      nz,059bh         ; (-25h)
05c0 db00      in      a,(00h)
05c2 e638      and     38h
05c4 b9        cp      c
05c5 20d4      jr      nz,059bh         ; (-2ch)
05c7 78        ld      a,b
05c8 e6bf      and     0bfh
05ca d300      out     (00h),a
05cc db80      in      a,(80h)
05ce e601      and     01h
05d0 280f      jr      z,05e1h          ; (+0fh)
05d2 db80      in      a,(80h)
05d4 e601      and     01h
05d6 2809      jr      z,05e1h          ; (+09h)
05d8 2623      ld      h,23h
05da 7d        ld      a,l
05db fe01      cp      01h
05dd 200b      jr      nz,05eah         ; (+0bh)
05df 1808      jr      05e9h            ; (+08h)
05e1 7d        ld      a,l
05e2 fe02      cp      02h
05e4 2004      jr      nz,05eah         ; (+04h)
05e6 25        dec     h
05e7 2001      jr      nz,05eah         ; (+01h)
05e9 2d        dec     l
05ea db00      in      a,(00h)
05ec e638      and     38h
05ee b9        cp      c
05ef 28db      jr      z,05cch          ; (-25h)
05f1 78        ld      a,b
05f2 e640      and     40h
05f4 2007      jr      nz,05fdh         ; (+07h)
05f6 78        ld      a,b
05f7 e680      and     80h
05f9 f644      or      44h
05fb 1803      jr      0600h            ; (+03h)
05fd 78        ld      a,b
05fe e6c0      and     0c0h
0600 d300      out     (00h),a
0602 1d        dec     e
0603 2096      jr      nz,059bh         ; (-6ah)
0605 3ec0      ld      a,0c0h
0607 d300      out     (00h),a
0609 d9        exx     
060a 79        ld      a,c
060b e60f      and     0fh
060d d9        exx     
060e 5f        ld      e,a
060f db80      in      a,(80h)
0611 e601      and     01h
0613 280f      jr      z,0624h          ; (+0fh)
0615 db80      in      a,(80h)
0617 e601      and     01h
0619 2809      jr      z,0624h          ; (+09h)
061b 2623      ld      h,23h
061d 7d        ld      a,l
061e fe01      cp      01h
0620 200b      jr      nz,062dh         ; (+0bh)
0622 1808      jr      062ch            ; (+08h)
0624 7d        ld      a,l
0625 fe02      cp      02h
0627 2004      jr      nz,062dh         ; (+04h)
0629 25        dec     h
062a 2001      jr      nz,062dh         ; (+01h)
062c 2d        dec     l
062d db00      in      a,(00h)
062f e638      and     38h
0631 b9        cp      c
0632 20db      jr      nz,060fh         ; (-25h)
0634 db00      in      a,(00h)
0636 e638      and     38h
0638 b9        cp      c
0639 20d4      jr      nz,060fh         ; (-2ch)
063b 1d        dec     e
063c db80      in      a,(80h)
063e e601      and     01h
0640 280f      jr      z,0651h          ; (+0fh)
0642 db80      in      a,(80h)
0644 e601      and     01h
0646 2809      jr      z,0651h          ; (+09h)
0648 2623      ld      h,23h
064a 7d        ld      a,l
064b fe01      cp      01h
064d 200b      jr      nz,065ah         ; (+0bh)
064f 1808      jr      0659h            ; (+08h)
0651 7d        ld      a,l
0652 fe02      cp      02h
0654 2004      jr      nz,065ah         ; (+04h)
0656 25        dec     h
0657 2001      jr      nz,065ah         ; (+01h)
0659 2d        dec     l
065a 7b        ld      a,e
065b b7        or      a
065c 2809      jr      z,0667h          ; (+09h)
065e db00      in      a,(00h)
0660 e638      and     38h
0662 b9        cp      c
0663 28d7      jr      z,063ch          ; (-29h)
0665 18a8      jr      060fh            ; (-58h)
0667 d9        exx     
0668 7a        ld      a,d
0669 d9        exx     
066a e680      and     80h
066c cadb16    jp      z,16dbh
066f 01983a    ld      bc,3a98h
0672 db80      in      a,(80h)
0674 e601      and     01h
0676 280f      jr      z,0687h          ; (+0fh)
0678 db80      in      a,(80h)
067a e601      and     01h
067c 2809      jr      z,0687h          ; (+09h)
067e 2623      ld      h,23h
0680 7d        ld      a,l
0681 fe01      cp      01h
0683 200b      jr      nz,0690h         ; (+0bh)
0685 1808      jr      068fh            ; (+08h)
0687 7d        ld      a,l
0688 fe02      cp      02h
068a 2004      jr      nz,0690h         ; (+04h)
068c 25        dec     h
068d 2001      jr      nz,0690h         ; (+01h)
068f 2d        dec     l
0690 7d        ld      a,l
0691 b7        or      a
0692 2805      jr      z,0699h          ; (+05h)
0694 0b        dec     bc
0695 78        ld      a,b
0696 b1        or      c
0697 20d9      jr      nz,0672h         ; (-27h)
0699 d9        exx     
069a 7a        ld      a,d
069b e6f0      and     0f0h
069d 57        ld      d,a
069e d9        exx     
069f e610      and     10h
06a1 2055      jr      nz,06f8h         ; (+55h)
06a3 7a        ld      a,d
06a4 fe0d      cp      0dh
06a6 2804      jr      z,06ach          ; (+04h)
06a8 fe09      cp      09h
06aa 204c      jr      nz,06f8h         ; (+4ch)
06ac 2e02      ld      l,02h
06ae 2623      ld      h,23h
06b0 db80      in      a,(80h)
06b2 e601      and     01h
06b4 280f      jr      z,06c5h          ; (+0fh)
06b6 db80      in      a,(80h)
06b8 e601      and     01h
06ba 2809      jr      z,06c5h          ; (+09h)
06bc 2623      ld      h,23h
06be 7d        ld      a,l
06bf fe01      cp      01h
06c1 200b      jr      nz,06ceh         ; (+0bh)
06c3 1808      jr      06cdh            ; (+08h)
06c5 7d        ld      a,l
06c6 fe02      cp      02h
06c8 2004      jr      nz,06ceh         ; (+04h)
06ca 25        dec     h
06cb 2001      jr      nz,06ceh         ; (+01h)
06cd 2d        dec     l
06ce 7d        ld      a,l
06cf fe02      cp      02h
06d1 30dd      jr      nc,06b0h         ; (-23h)
06d3 21ae06    ld      hl,06aeh
06d6 2b        dec     hl
06d7 7d        ld      a,l
06d8 b4        or      h
06d9 20fb      jr      nz,06d6h         ; (-05h)
06db 7a        ld      a,d
06dc fe0d      cp      0dh
06de 2018      jr      nz,06f8h         ; (+18h)
06e0 08        ex      af,af'
06e1 3e00      ld      a,00h
06e3 08        ex      af,af'
06e4 d9        exx     
06e5 78        ld      a,b
06e6 e67f      and     7fh
06e8 3d        dec     a
06e9 200b      jr      nz,06f6h         ; (+0bh)
06eb 78        ld      a,b
06ec e680      and     80h
06ee 47        ld      b,a
06ef 7b        ld      a,e
06f0 e67f      and     7fh
06f2 b0        or      b
06f3 47        ld      b,a
06f4 1801      jr      06f7h            ; (+01h)
06f6 05        dec     b
06f7 d9        exx     
06f8 2151ed    ld      hl,0ed51h
06fb 39        add     hl,sp
06fc e9        jp      (hl)
06fd d9        exx     
06fe 7a        ld      a,d
06ff f680      or      80h
0701 57        ld      d,a
0702 d9        exx     
0703 7a        ld      a,d
0704 fe0c      cp      0ch
0706 2015      jr      nz,071dh         ; (+15h)
0708 31be19    ld      sp,19beh
070b 160d      ld      d,0dh
070d 18ee      jr      06fdh            ; (-12h)
070f d9        exx     
0710 78        ld      a,b
0711 e67f      and     7fh
0713 fe01      cp      01h
0715 d9        exx     
0716 319116    ld      sp,1691h
0719 28f0      jr      z,070bh          ; (-10h)
071b 18eb      jr      0708h            ; (-15h)
071d fe08      cp      08h
071f 2016      jr      nz,0737h         ; (+16h)
0721 1e0a      ld      e,0ah
0723 08        ex      af,af'
0724 4f        ld      c,a
0725 08        ex      af,af'
0726 79        ld      a,c
0727 b7        or      a
0728 28ce      jr      z,06f8h          ; (-32h)
072a 08        ex      af,af'
072b 3d        dec     a
072c 08        ex      af,af'
072d d9        exx     
072e 7a        ld      a,d
072f e67f      and     7fh
0731 57        ld      d,a
0732 d9        exx     
0733 0ec6      ld      c,0c6h
0735 1830      jr      0767h            ; (+30h)
0737 fe0d      cp      0dh
0739 201b      jr      nz,0756h         ; (+1bh)
073b d9        exx     
073c 7a        ld      a,d
073d e6bf      and     0bfh
073f 57        ld      d,a
0740 d9        exx     
0741 0ec2      ld      c,0c2h
0743 08        ex      af,af'
0744 5f        ld      e,a
0745 08        ex      af,af'
0746 7b        ld      a,e
0747 fe02      cp      02h
0749 d28625    jp      nc,2586h
074c d9        exx     
074d 7a        ld      a,d
074e e67f      and     7fh
0750 57        ld      d,a
0751 d9        exx     
0752 1e0f      ld      e,0fh
0754 1811      jr      0767h            ; (+11h)
0756 fe09      cp      09h
0758 0efb      ld      c,0fbh
075a 2007      jr      nz,0763h         ; (+07h)
075c 08        ex      af,af'
075d c608      add     a,08h
075f 08        ex      af,af'
0760 c38625    jp      2586h
0763 1893      jr      06f8h            ; (-6dh)
0765 1e07      ld      e,07h
0767 d9        exx     
0768 7a        ld      a,d
0769 e608      and     08h
076b 2009      jr      nz,0776h         ; (+09h)
076d 14        inc     d
076e 7a        ld      a,d
076f e67f      and     7fh
0771 57        ld      d,a
0772 d9        exx     
0773 c38625    jp      2586h
0776 79        ld      a,c
0777 e6f0      and     0f0h
0779 d9        exx     
077a b3        or      e
077b d9        exx     
077c 4f        ld      c,a
077d 18ef      jr      076eh            ; (-11h)
077f d9        exx     
0780 18ec      jr      076eh            ; (-14h)
0782 3ecf      ld      a,0cfh
0784 d302      out     (02h),a
0786 3e38      ld      a,38h
0788 d302      out     (02h),a
078a 3e07      ld      a,07h
078c d302      out     (02h),a
078e 3ec0      ld      a,0c0h
0790 d300      out     (00h),a
0792 db00      in      a,(00h)
0794 061e      ld      b,1eh
0796 214416    ld      hl,1644h
0799 2b        dec     hl
079a 7d        ld      a,l
079b b4        or      h
079c 20fb      jr      nz,0799h         ; (-05h)
079e 05        dec     b
079f 20f5      jr      nz,0796h         ; (-0bh)
07a1 d9        exx     
07a2 0e40      ld      c,40h
07a4 214308    ld      hl,0843h
07a7 d9        exx     
07a8 d9        exx     
07a9 7e        ld      a,(hl)
07aa 23        inc     hl
07ab d9        exx     
07ac 57        ld      d,a
07ad fe00      cp      00h
07af cac407    jp      z,07c4h
07b2 e680      and     80h
07b4 cacb02    jp      z,02cbh
07b7 d9        exx     
07b8 7a        ld      a,d
07b9 f610      or      10h
07bb 57        ld      d,a
07bc d9        exx     
07bd 7a        ld      a,d
07be e67f      and     7fh
07c0 57        ld      d,a
07c1 c3cb22    jp      22cbh
07c4 d302      out     (02h),a
07c6 3ecf      ld      a,0cfh
07c8 d302      out     (02h),a
07ca 3eb8      ld      a,0b8h
07cc d302      out     (02h),a
07ce 3e07      ld      a,07h
07d0 d302      out     (02h),a
07d2 3e40      ld      a,40h
07d4 d300      out     (00h),a
07d6 db00      in      a,(00h)
07d8 d9        exx     
07d9 0e00      ld      c,00h
07db d9        exx     
07dc db00      in      a,(00h)
07de e680      and     80h
07e0 2004      jr      nz,07e6h         ; (+04h)
07e2 d9        exx     
07e3 0e10      ld      c,10h
07e5 d9        exx     
07e6 3ecf      ld      a,0cfh
07e8 d302      out     (02h),a
07ea 3e38      ld      a,38h
07ec d302      out     (02h),a
07ee 3e07      ld      a,07h
07f0 d302      out     (02h),a
07f2 3ec0      ld      a,0c0h
07f4 d300      out     (00h),a
07f6 db00      in      a,(00h)
07f8 d9        exx     
07f9 79        ld      a,c
07fa d9        exx     
07fb e610      and     10h
07fd 0e00      ld      c,00h
07ff c20408    jp      nz,0804h
0802 0ec3      ld      c,0c3h
0804 31b91a    ld      sp,1ab9h
0807 c3610c    jp      0c61h
080a d9        exx     
080b 79        ld      a,c
080c d9        exx     
080d e610      and     10h
080f ca2208    jp      z,0822h
0812 061e      ld      b,1eh
0814 214416    ld      hl,1644h
0817 2b        dec     hl
0818 7d        ld      a,l
0819 b4        or      h
081a 20fb      jr      nz,0817h         ; (-05h)
081c 05        dec     b
081d 20f5      jr      nz,0814h         ; (-0bh)
081f c3a107    jp      07a1h
0822 060a      ld      b,0ah
0824 21ae06    ld      hl,06aeh
0827 2b        dec     hl
0828 7d        ld      a,l
0829 b4        or      h
082a 20fb      jr      nz,0827h         ; (-05h)
082c 05        dec     b
082d 20f5      jr      nz,0824h         ; (-0bh)
082f 3e40      ld      a,40h
0831 d300      out     (00h),a
0833 060a      ld      b,0ah
0835 21ae06    ld      hl,06aeh
0838 2b        dec     hl
0839 7d        ld      a,l
083a b4        or      h
083b 20fb      jr      nz,0838h         ; (-05h)
083d 05        dec     b
083e 20f5      jr      nz,0835h         ; (-0bh)
0840 c3c407    jp      07c4h
0843 0d        dec     c
0844 0d        dec     c
0845 2b        dec     hl
0846 2d        dec     l
0847 2d        dec     l
0848 2d        dec     l
0849 2d        dec     l
084a 2d        dec     l
084b 2d        dec     l
084c 2d        dec     l
084d 2d        dec     l
084e 2d        dec     l
084f 2d        dec     l
0850 2d        dec     l
0851 2d        dec     l
0852 2d        dec     l
0853 2d        dec     l
0854 2d        dec     l
0855 2d        dec     l
0856 2d        dec     l
0857 2d        dec     l
0858 2d        dec     l
0859 2d        dec     l
085a 2d        dec     l
085b 2d        dec     l
085c 2d        dec     l
085d 2d        dec     l
085e 2d        dec     l
085f 2d        dec     l
0860 2d        dec     l
0861 2d        dec     l
0862 2d        dec     l
0863 2d        dec     l
0864 2d        dec     l
0865 2d        dec     l
0866 2d        dec     l
0867 2d        dec     l
0868 2d        dec     l
0869 2b        dec     hl
086a 0d        dec     c
086b 7c        ld      a,h
086c 2020      jr      nz,088eh         ; (+20h)
086e 2020      jr      nz,0890h         ; (+20h)
0870 2020      jr      nz,0892h         ; (+20h)
0872 2020      jr      nz,0894h         ; (+20h)
0874 2020      jr      nz,0896h         ; (+20h)
0876 2020      jr      nz,0898h         ; (+20h)
0878 2020      jr      nz,089ah         ; (+20h)
087a 2020      jr      nz,089ch         ; (+20h)
087c 2020      jr      nz,089eh         ; (+20h)
087e 2020      jr      nz,08a0h         ; (+20h)
0880 2020      jr      nz,08a2h         ; (+20h)
0882 2020      jr      nz,08a4h         ; (+20h)
0884 2020      jr      nz,08a6h         ; (+20h)
0886 2020      jr      nz,08a8h         ; (+20h)
0888 2020      jr      nz,08aah         ; (+20h)
088a 2020      jr      nz,08ach         ; (+20h)
088c 2020      jr      nz,08aeh         ; (+20h)
088e 207c      jr      nz,090ch         ; (+7ch)
0890 0d        dec     c
0891 7c        ld      a,h
0892 2020      jr      nz,08b4h         ; (+20h)
0894 48        ld      c,b
0895 44        ld      b,h
0896 202d      jr      nz,08c5h         ; (+2dh)
0898 2053      jr      nz,08edh         ; (+53h)
089a 49        ld      c,c
089b 53        ld      d,e
089c 54        ld      d,h
089d 2e20      ld      l,20h
089f 45        ld      b,l
08a0 4c        ld      c,h
08a1 45        ld      b,l
08a2 54        ld      d,h
08a3 2e20      ld      l,20h
08a5 49        ld      c,c
08a6 4e        ld      c,(hl)
08a7 44        ld      b,h
08a8 2045      jr      nz,08efh         ; (+45h)
08aa 2043      jr      nz,08efh         ; (+43h)
08ac 4f        ld      c,a
08ad 4d        ld      c,l
08ae 204c      jr      nz,08fch         ; (+4ch)
08b0 54        ld      d,h
08b1 44        ld      b,h
08b2 41        ld      b,c
08b3 2020      jr      nz,08d5h         ; (+20h)
08b5 7c        ld      a,h
08b6 0d        dec     c
08b7 7c        ld      a,h
08b8 2020      jr      nz,08dah         ; (+20h)
08ba 2020      jr      nz,08dch         ; (+20h)
08bc 2020      jr      nz,08deh         ; (+20h)
08be 2020      jr      nz,08e0h         ; (+20h)
08c0 2020      jr      nz,08e2h         ; (+20h)
08c2 2020      jr      nz,08e4h         ; (+20h)
08c4 2020      jr      nz,08e6h         ; (+20h)
08c6 2020      jr      nz,08e8h         ; (+20h)
08c8 2020      jr      nz,08eah         ; (+20h)
08ca 2020      jr      nz,08ech         ; (+20h)
08cc 2020      jr      nz,08eeh         ; (+20h)
08ce 2020      jr      nz,08f0h         ; (+20h)
08d0 2020      jr      nz,08f2h         ; (+20h)
08d2 2020      jr      nz,08f4h         ; (+20h)
08d4 2020      jr      nz,08f6h         ; (+20h)
08d6 2020      jr      nz,08f8h         ; (+20h)
08d8 2020      jr      nz,08fah         ; (+20h)
08da 207c      jr      nz,0958h         ; (+7ch)
08dc 0d        dec     c
08dd 7c        ld      a,h
08de 2020      jr      nz,0900h         ; (+20h)
08e0 2020      jr      nz,0902h         ; (+20h)
08e2 2020      jr      nz,0904h         ; (+20h)
08e4 2020      jr      nz,0906h         ; (+20h)
08e6 2020      jr      nz,0908h         ; (+20h)
08e8 2020      jr      nz,090ah         ; (+20h)
08ea 49        ld      c,c
08eb 4e        ld      c,(hl)
08ec 54        ld      d,h
08ed 45        ld      b,l
08ee 52        ld      d,d
08ef 46        ld      b,(hl)
08f0 41        ld      b,c
08f1 58        ld      e,b
08f2 2032      jr      nz,0926h         ; (+32h)
08f4 3020      jr      nc,0916h         ; (+20h)
08f6 2020      jr      nz,0918h         ; (+20h)
08f8 2020      jr      nz,091ah         ; (+20h)
08fa 2020      jr      nz,091ch         ; (+20h)
08fc 2020      jr      nz,091eh         ; (+20h)
08fe 2020      jr      nz,0920h         ; (+20h)
0900 207c      jr      nz,097eh         ; (+7ch)
0902 0d        dec     c
0903 7c        ld      a,h
0904 2020      jr      nz,0926h         ; (+20h)
0906 2020      jr      nz,0928h         ; (+20h)
0908 2020      jr      nz,092ah         ; (+20h)
090a 2020      jr      nz,092ch         ; (+20h)
090c 2020      jr      nz,092eh         ; (+20h)
090e 52        ld      d,d
090f 45        ld      b,l
0910 56        ld      d,(hl)
0911 2048      jr      nz,095bh         ; (+48h)
0913 41        ld      b,c
0914 52        ld      d,d
0915 44        ld      b,h
0916 57        ld      d,a
0917 41        ld      b,c
0918 52        ld      d,d
0919 45        ld      b,l
091a 2030      jr      nz,094ch         ; (+30h)
091c 312020    ld      sp,2020h
091f 2020      jr      nz,0941h         ; (+20h)
0921 2020      jr      nz,0943h         ; (+20h)
0923 2020      jr      nz,0945h         ; (+20h)
0925 2020      jr      nz,0947h         ; (+20h)
0927 7c        ld      a,h
0928 0d        dec     c
0929 7c        ld      a,h
092a 2020      jr      nz,094ch         ; (+20h)
092c 2020      jr      nz,094eh         ; (+20h)
092e 2020      jr      nz,0950h         ; (+20h)
0930 2052      jr      nz,0984h         ; (+52h)
0932 45        ld      b,l
0933 56        ld      d,(hl)
0934 2053      jr      nz,0989h         ; (+53h)
0936 4f        ld      c,a
0937 46        ld      b,(hl)
0938 54        ld      d,h
0939 57        ld      d,a
093a 41        ld      b,c
093b 52        ld      d,d
093c 45        ld      b,l
093d 2020      jr      nz,095fh         ; (+20h)
093f 3832      jr      c,0973h          ; (+32h)
0941 323033    ld      (3330h),a
0944 3031      jr      nc,0977h         ; (+31h)
0946 2020      jr      nz,0968h         ; (+20h)
0948 2020      jr      nz,096ah         ; (+20h)
094a 2020      jr      nz,096ch         ; (+20h)
094c 207c      jr      nz,09cah         ; (+7ch)
094e 0d        dec     c
094f 7c        ld      a,h
0950 2020      jr      nz,0972h         ; (+20h)
0952 2020      jr      nz,0974h         ; (+20h)
0954 2020      jr      nz,0976h         ; (+20h)
0956 2020      jr      nz,0978h         ; (+20h)
0958 2020      jr      nz,097ah         ; (+20h)
095a 2020      jr      nz,097ch         ; (+20h)
095c 2020      jr      nz,097eh         ; (+20h)
095e 2020      jr      nz,0980h         ; (+20h)
0960 2020      jr      nz,0982h         ; (+20h)
0962 2020      jr      nz,0984h         ; (+20h)
0964 2020      jr      nz,0986h         ; (+20h)
0966 2020      jr      nz,0988h         ; (+20h)
0968 2020      jr      nz,098ah         ; (+20h)
096a 2020      jr      nz,098ch         ; (+20h)
096c 2020      jr      nz,098eh         ; (+20h)
096e 2020      jr      nz,0990h         ; (+20h)
0970 2020      jr      nz,0992h         ; (+20h)
0972 207c      jr      nz,09f0h         ; (+7ch)
0974 0d        dec     c
0975 7c        ld      a,h
0976 2020      jr      nz,0998h         ; (+20h)
0978 2020      jr      nz,099ah         ; (+20h)
097a 2020      jr      nz,099ch         ; (+20h)
097c 2020      jr      nz,099eh         ; (+20h)
097e 2020      jr      nz,09a0h         ; (+20h)
0980 2056      jr      nz,09d8h         ; (+56h)
0982 65        ld      h,l
0983 72        ld      (hl),d
0984 73        ld      (hl),e
0985 61        ld      h,c
0986 6f        ld      l,a
0987 2041      jr      nz,09cah         ; (+41h)
0989 42        ld      b,d
098a 4e        ld      c,(hl)
098b 54        ld      d,h
098c 2020      jr      nz,09aeh         ; (+20h)
098e 2020      jr      nz,09b0h         ; (+20h)
0990 2020      jr      nz,09b2h         ; (+20h)
0992 2020      jr      nz,09b4h         ; (+20h)
0994 2020      jr      nz,09b6h         ; (+20h)
0996 2020      jr      nz,09b8h         ; (+20h)
0998 207c      jr      nz,0a16h         ; (+7ch)
099a 0d        dec     c
099b 7c        ld      a,h
099c 2020      jr      nz,09beh         ; (+20h)
099e 2020      jr      nz,09c0h         ; (+20h)
09a0 2020      jr      nz,09c2h         ; (+20h)
09a2 2020      jr      nz,09c4h         ; (+20h)
09a4 2020      jr      nz,09c6h         ; (+20h)
09a6 2020      jr      nz,09c8h         ; (+20h)
09a8 2020      jr      nz,09cah         ; (+20h)
09aa 2020      jr      nz,09cch         ; (+20h)
09ac 2020      jr      nz,09ceh         ; (+20h)
09ae 2020      jr      nz,09d0h         ; (+20h)
09b0 2020      jr      nz,09d2h         ; (+20h)
09b2 2020      jr      nz,09d4h         ; (+20h)
09b4 2020      jr      nz,09d6h         ; (+20h)
09b6 2020      jr      nz,09d8h         ; (+20h)
09b8 2020      jr      nz,09dah         ; (+20h)
09ba 2020      jr      nz,09dch         ; (+20h)
09bc 2020      jr      nz,09deh         ; (+20h)
09be 207c      jr      nz,0a3ch         ; (+7ch)
09c0 0d        dec     c
09c1 2b        dec     hl
09c2 2d        dec     l
09c3 2d        dec     l
09c4 2d        dec     l
09c5 2d        dec     l
09c6 2d        dec     l
09c7 2d        dec     l
09c8 2d        dec     l
09c9 2d        dec     l
09ca 2d        dec     l
09cb 2d        dec     l
09cc 2d        dec     l
09cd 2d        dec     l
09ce 2d        dec     l
09cf 2d        dec     l
09d0 2d        dec     l
09d1 2d        dec     l
09d2 2d        dec     l
09d3 2d        dec     l
09d4 2d        dec     l
09d5 2d        dec     l
09d6 2d        dec     l
09d7 2d        dec     l
09d8 2d        dec     l
09d9 2d        dec     l
09da 2d        dec     l
09db 2d        dec     l
09dc 2d        dec     l
09dd 2d        dec     l
09de 2d        dec     l
09df 2d        dec     l
09e0 2d        dec     l
09e1 2d        dec     l
09e2 2d        dec     l
09e3 2d        dec     l
09e4 2d        dec     l
09e5 2b        dec     hl
09e6 0d        dec     c
09e7 0d        dec     c
09e8 0a        ld      a,(bc)
09e9 41        ld      b,c
09ea 55        ld      d,l
09eb 54        ld      d,h
09ec 4f        ld      c,a
09ed 2054      jr      nz,0a43h         ; (+54h)
09ef 45        ld      b,l
09f0 53        ld      d,e
09f1 54        ld      d,h
09f2 45        ld      b,l
09f3 0d        dec     c
09f4 37        scf     
09f5 323738    ld      (3837h),a
09f8 37        scf     
09f9 34        inc     (hl)
09fa 37        scf     
09fb 35        dec     (hl)
09fc 37        scf     
09fd 39        add     hl,sp
09fe 37        scf     
09ff 313736    ld      sp,3637h
0a02 37        scf     
0a03 33        inc     sp
0a04 37        scf     
0a05 33        inc     sp
0a06 37        scf     
0a07 3637      ld      (hl),37h
0a09 313739    ld      sp,3937h
0a0c 37        scf     
0a0d 35        dec     (hl)
0a0e 37        scf     
0a0f 34        inc     (hl)
0a10 37        scf     
0a11 3837      jr      c,0a4ah          ; (+37h)
0a13 32370d    ld      (0d37h),a
0a16 37        scf     
0a17 323738    ld      (3837h),a
0a1a 37        scf     
0a1b 34        inc     (hl)
0a1c 37        scf     
0a1d 35        dec     (hl)
0a1e 37        scf     
0a1f 39        add     hl,sp
0a20 37        scf     
0a21 313736    ld      sp,3637h
0a24 37        scf     
0a25 33        inc     sp
0a26 37        scf     
0a27 33        inc     sp
0a28 37        scf     
0a29 3637      ld      (hl),37h
0a2b 313739    ld      sp,3937h
0a2e 37        scf     
0a2f 35        dec     (hl)
0a30 37        scf     
0a31 34        inc     (hl)
0a32 37        scf     
0a33 3837      jr      c,0a6ch          ; (+37h)
0a35 32370d    ld      (0d37h),a
0a38 37        scf     
0a39 323738    ld      (3837h),a
0a3c 37        scf     
0a3d 34        inc     (hl)
0a3e 37        scf     
0a3f 35        dec     (hl)
0a40 37        scf     
0a41 39        add     hl,sp
0a42 37        scf     
0a43 313736    ld      sp,3637h
0a46 37        scf     
0a47 33        inc     sp
0a48 37        scf     
0a49 33        inc     sp
0a4a 37        scf     
0a4b 3637      ld      (hl),37h
0a4d 313739    ld      sp,3937h
0a50 37        scf     
0a51 35        dec     (hl)
0a52 37        scf     
0a53 34        inc     (hl)
0a54 37        scf     
0a55 3837      jr      c,0a8eh          ; (+37h)
0a57 32370d    ld      (0d37h),a
0a5a 37        scf     
0a5b 33        inc     sp
0a5c 37        scf     
0a5d 3637      ld      (hl),37h
0a5f 313739    ld      sp,3937h
0a62 37        scf     
0a63 35        dec     (hl)
0a64 37        scf     
0a65 34        inc     (hl)
0a66 37        scf     
0a67 3837      jr      c,0aa0h          ; (+37h)
0a69 323732    ld      (3237h),a
0a6c 37        scf     
0a6d 3837      jr      c,0aa6h          ; (+37h)
0a6f 34        inc     (hl)
0a70 37        scf     
0a71 35        dec     (hl)
0a72 37        scf     
0a73 39        add     hl,sp
0a74 37        scf     
0a75 313736    ld      sp,3637h
0a78 37        scf     
0a79 33        inc     sp
0a7a 37        scf     
0a7b 0d        dec     c
0a7c 37        scf     
0a7d 33        inc     sp
0a7e 37        scf     
0a7f 3637      ld      (hl),37h
0a81 313739    ld      sp,3937h
0a84 37        scf     
0a85 35        dec     (hl)
0a86 37        scf     
0a87 34        inc     (hl)
0a88 37        scf     
0a89 3837      jr      c,0ac2h          ; (+37h)
0a8b 323732    ld      (3237h),a
0a8e 37        scf     
0a8f 3837      jr      c,0ac8h          ; (+37h)
0a91 34        inc     (hl)
0a92 37        scf     
0a93 35        dec     (hl)
0a94 37        scf     
0a95 39        add     hl,sp
0a96 37        scf     
0a97 313736    ld      sp,3637h
0a9a 37        scf     
0a9b 33        inc     sp
0a9c 37        scf     
0a9d 0d        dec     c
0a9e 37        scf     
0a9f 33        inc     sp
0aa0 37        scf     
0aa1 3637      ld      (hl),37h
0aa3 313739    ld      sp,3937h
0aa6 37        scf     
0aa7 35        dec     (hl)
0aa8 37        scf     
0aa9 34        inc     (hl)
0aaa 37        scf     
0aab 3837      jr      c,0ae4h          ; (+37h)
0aad 323732    ld      (3237h),a
0ab0 37        scf     
0ab1 3837      jr      c,0aeah          ; (+37h)
0ab3 34        inc     (hl)
0ab4 37        scf     
0ab5 35        dec     (hl)
0ab6 37        scf     
0ab7 39        add     hl,sp
0ab8 37        scf     
0ab9 313736    ld      sp,3637h
0abc 37        scf     
0abd 33        inc     sp
0abe 37        scf     
0abf 0d        dec     c
0ac0 42        ld      b,d
0ac1 4b        ld      c,e
0ac2 42        ld      b,d
0ac3 58        ld      e,b
0ac4 42        ld      b,d
0ac5 24        inc     h
0ac6 42        ld      b,d
0ac7 59        ld      e,c
0ac8 42        ld      b,d
0ac9 57        ld      d,a
0aca 42        ld      b,d
0acb 48        ld      c,b
0acc 42        ld      b,d
0acd 47        ld      b,a
0ace 42        ld      b,d
0acf 55        ld      d,l
0ad0 42        ld      b,d
0ad1 51        ld      d,c
0ad2 42        ld      b,d
0ad3 4d        ld      c,l
0ad4 42        ld      b,d
0ad5 44        ld      b,h
0ad6 42        ld      b,d
0ad7 4c        ld      c,h
0ad8 42        ld      b,d
0ad9 50        ld      d,b
0ada 42        ld      b,d
0adb 4e        ld      c,(hl)
0adc 42        ld      b,d
0add 43        ld      b,e
0ade 42        ld      b,d
0adf 54        ld      d,h
0ae0 42        ld      b,d
0ae1 52        ld      d,d
0ae2 42        ld      b,d
0ae3 49        ld      c,c
0ae4 53        ld      d,e
0ae5 45        ld      b,l
0ae6 53        ld      d,e
0ae7 49        ld      c,c
0ae8 42        ld      b,d
0ae9 0d        dec     c
0aea 42        ld      b,d
0aeb 4b        ld      c,e
0aec 42        ld      b,d
0aed 58        ld      e,b
0aee 42        ld      b,d
0aef 24        inc     h
0af0 42        ld      b,d
0af1 59        ld      e,c
0af2 42        ld      b,d
0af3 57        ld      d,a
0af4 42        ld      b,d
0af5 48        ld      c,b
0af6 42        ld      b,d
0af7 47        ld      b,a
0af8 42        ld      b,d
0af9 55        ld      d,l
0afa 42        ld      b,d
0afb 51        ld      d,c
0afc 42        ld      b,d
0afd 4d        ld      c,l
0afe 42        ld      b,d
0aff 44        ld      b,h
0b00 42        ld      b,d
0b01 4c        ld      c,h
0b02 42        ld      b,d
0b03 50        ld      d,b
0b04 42        ld      b,d
0b05 4e        ld      c,(hl)
0b06 42        ld      b,d
0b07 43        ld      b,e
0b08 42        ld      b,d
0b09 54        ld      d,h
0b0a 42        ld      b,d
0b0b 52        ld      d,d
0b0c 42        ld      b,d
0b0d 49        ld      c,c
0b0e 53        ld      d,e
0b0f 45        ld      b,l
0b10 53        ld      d,e
0b11 49        ld      c,c
0b12 42        ld      b,d
0b13 0d        dec     c
0b14 42        ld      b,d
0b15 4b        ld      c,e
0b16 42        ld      b,d
0b17 58        ld      e,b
0b18 42        ld      b,d
0b19 24        inc     h
0b1a 42        ld      b,d
0b1b 59        ld      e,c
0b1c 42        ld      b,d
0b1d 57        ld      d,a
0b1e 42        ld      b,d
0b1f 48        ld      c,b
0b20 42        ld      b,d
0b21 47        ld      b,a
0b22 42        ld      b,d
0b23 55        ld      d,l
0b24 42        ld      b,d
0b25 51        ld      d,c
0b26 42        ld      b,d
0b27 4d        ld      c,l
0b28 42        ld      b,d
0b29 44        ld      b,h
0b2a 42        ld      b,d
0b2b 4c        ld      c,h
0b2c 42        ld      b,d
0b2d 50        ld      d,b
0b2e 42        ld      b,d
0b2f 4e        ld      c,(hl)
0b30 42        ld      b,d
0b31 43        ld      b,e
0b32 42        ld      b,d
0b33 54        ld      d,h
0b34 42        ld      b,d
0b35 52        ld      d,d
0b36 42        ld      b,d
0b37 49        ld      c,c
0b38 53        ld      d,e
0b39 45        ld      b,l
0b3a 53        ld      d,e
0b3b 49        ld      c,c
0b3c 42        ld      b,d
0b3d 0d        dec     c
0b3e 42        ld      b,d
0b3f 4b        ld      c,e
0b40 42        ld      b,d
0b41 58        ld      e,b
0b42 42        ld      b,d
0b43 24        inc     h
0b44 42        ld      b,d
0b45 59        ld      e,c
0b46 42        ld      b,d
0b47 57        ld      d,a
0b48 42        ld      b,d
0b49 48        ld      c,b
0b4a 42        ld      b,d
0b4b 47        ld      b,a
0b4c 42        ld      b,d
0b4d 55        ld      d,l
0b4e 42        ld      b,d
0b4f 51        ld      d,c
0b50 42        ld      b,d
0b51 4d        ld      c,l
0b52 42        ld      b,d
0b53 44        ld      b,h
0b54 42        ld      b,d
0b55 4c        ld      c,h
0b56 42        ld      b,d
0b57 50        ld      d,b
0b58 42        ld      b,d
0b59 4e        ld      c,(hl)
0b5a 42        ld      b,d
0b5b 43        ld      b,e
0b5c 42        ld      b,d
0b5d 54        ld      d,h
0b5e 42        ld      b,d
0b5f 52        ld      d,d
0b60 42        ld      b,d
0b61 49        ld      c,c
0b62 53        ld      d,e
0b63 45        ld      b,l
0b64 53        ld      d,e
0b65 49        ld      c,c
0b66 42        ld      b,d
0b67 0d        dec     c
0b68 42        ld      b,d
0b69 4b        ld      c,e
0b6a 42        ld      b,d
0b6b 58        ld      e,b
0b6c 42        ld      b,d
0b6d 24        inc     h
0b6e 42        ld      b,d
0b6f 59        ld      e,c
0b70 42        ld      b,d
0b71 57        ld      d,a
0b72 42        ld      b,d
0b73 48        ld      c,b
0b74 42        ld      b,d
0b75 47        ld      b,a
0b76 42        ld      b,d
0b77 55        ld      d,l
0b78 42        ld      b,d
0b79 51        ld      d,c
0b7a 42        ld      b,d
0b7b 4d        ld      c,l
0b7c 42        ld      b,d
0b7d 44        ld      b,h
0b7e 42        ld      b,d
0b7f 4c        ld      c,h
0b80 42        ld      b,d
0b81 50        ld      d,b
0b82 42        ld      b,d
0b83 4e        ld      c,(hl)
0b84 42        ld      b,d
0b85 43        ld      b,e
0b86 42        ld      b,d
0b87 54        ld      d,h
0b88 42        ld      b,d
0b89 52        ld      d,d
0b8a 42        ld      b,d
0b8b 49        ld      c,c
0b8c 53        ld      d,e
0b8d 45        ld      b,l
0b8e 53        ld      d,e
0b8f 49        ld      c,c
0b90 42        ld      b,d
0b91 0d        dec     c
0b92 42        ld      b,d
0b93 4b        ld      c,e
0b94 42        ld      b,d
0b95 58        ld      e,b
0b96 42        ld      b,d
0b97 24        inc     h
0b98 42        ld      b,d
0b99 59        ld      e,c
0b9a 42        ld      b,d
0b9b 57        ld      d,a
0b9c 42        ld      b,d
0b9d 48        ld      c,b
0b9e 42        ld      b,d
0b9f 47        ld      b,a
0ba0 42        ld      b,d
0ba1 55        ld      d,l
0ba2 42        ld      b,d
0ba3 51        ld      d,c
0ba4 42        ld      b,d
0ba5 4d        ld      c,l
0ba6 42        ld      b,d
0ba7 44        ld      b,h
0ba8 42        ld      b,d
0ba9 4c        ld      c,h
0baa 42        ld      b,d
0bab 50        ld      d,b
0bac 42        ld      b,d
0bad 4e        ld      c,(hl)
0bae 42        ld      b,d
0baf 43        ld      b,e
0bb0 42        ld      b,d
0bb1 54        ld      d,h
0bb2 42        ld      b,d
0bb3 52        ld      d,d
0bb4 42        ld      b,d
0bb5 49        ld      c,c
0bb6 53        ld      d,e
0bb7 45        ld      b,l
0bb8 53        ld      d,e
0bb9 49        ld      c,c
0bba 42        ld      b,d
0bbb 0d        dec     c
0bbc 0d        dec     c
0bbd 00        nop     
0bbe d9        exx     
0bbf 21c6eb    ld      hl,0ebc6h
0bc2 d9        exx     
0bc3 c3443c    jp      3c44h
0bc6 c2fbfd    jp      nz,0fdfbh
0bc9 fb        ei      
0bca fdfb      ei      
0bcc fdfb      ei      
0bce fdfb      ei      
0bd0 fdfb      ei      
0bd2 fdfb      ei      
0bd4 fdfb      ei      
0bd6 fdfb      ei      
0bd8 fdfb      ei      
0bda fdc2000e  jp      nz,0e00h
0bde c2160d    jp      nz,0d16h
0be1 31961e    ld      sp,1e96h
0be4 c3610c    jp      0c61h
0be7 0efa      ld      c,0fah
0be9 319e1e    ld      sp,1e9eh
0bec c3610c    jp      0c61h
0bef d9        exx     
0bf0 215a00    ld      hl,005ah
0bf3 d9        exx     
0bf4 3ec6      ld      a,0c6h
0bf6 e6c7      and     0c7h
0bf8 47        ld      b,a
0bf9 3ec6      ld      a,0c6h
0bfb e638      and     38h
0bfd 4f        ld      c,a
0bfe db00      in      a,(00h)
0c00 e638      and     38h
0c02 b9        cp      c
0c03 20f9      jr      nz,0bfeh         ; (-07h)
0c05 db00      in      a,(00h)
0c07 e638      and     38h
0c09 b9        cp      c
0c0a 20f2      jr      nz,0bfeh         ; (-0eh)
0c0c 78        ld      a,b
0c0d e6bf      and     0bfh
0c0f d300      out     (00h),a
0c11 db00      in      a,(00h)
0c13 e638      and     38h
0c15 b9        cp      c
0c16 28f9      jr      z,0c11h          ; (-07h)
0c18 78        ld      a,b
0c19 e6c0      and     0c0h
0c1b d300      out     (00h),a
0c1d d9        exx     
0c1e 2b        dec     hl
0c1f 7d        ld      a,l
0c20 b4        or      h
0c21 d9        exx     
0c22 20da      jr      nz,0bfeh         ; (-26h)
0c24 d9        exx     
0c25 212bec    ld      hl,0ec2bh
0c28 d9        exx     
0c29 1819      jr      0c44h            ; (+19h)
0c2b fefb      cp      0fbh
0c2d fdfafbfd  jp      m,0fdfbh
0c31 fafbfd    jp      m,0fdfbh
0c34 fafbfd    jp      m,0fdfbh
0c37 fafbfd    jp      m,0fdfbh
0c3a fafbfd    jp      m,0fdfbh
0c3d fafbfd    jp      m,0fdfbh
0c40 faffc2    jp      m,0c2ffh
0c43 00        nop     
0c44 319116    ld      sp,1691h
0c47 d9        exx     
0c48 79        ld      a,c
0c49 f620      or      20h
0c4b 4f        ld      c,a
0c4c 7e        ld      a,(hl)
0c4d 23        inc     hl
0c4e d9        exx     
0c4f 4f        ld      c,a
0c50 fe00      cp      00h
0c52 ca583c    jp      z,3c58h
0c55 c3613c    jp      3c61h
0c58 d9        exx     
0c59 4f        ld      c,a
0c5a e6df      and     0dfh
0c5c 4f        ld      c,a
0c5d d9        exx     
0c5e c3e213    jp      13e2h
0c61 d9        exx     
0c62 79        ld      a,c
0c63 e6f0      and     0f0h
0c65 f602      or      02h
0c67 4f        ld      c,a
0c68 d9        exx     
0c69 c32515    jp      1525h
0c6c c1        pop     bc
0c6d 0e5a      ld      c,5ah
0c6f 64        ld      h,h
0c70 e2e476    jp      po,76e4h
0c73 72        ld      (hl),d
0c74 56        ld      d,(hl)
0c75 52        ld      d,d
0c76 2a11f1    ld      hl,(0f111h)
0c79 d1        pop     de
0c7a d5        push    de
0c7b 6e        ld      l,(hl)
0c7c d2deda    jp      nc,0dadeh
0c7f eeea      xor     0eah
0c81 ceca      adc     a,0cah
0c83 f6f2      or      0f2h
0c85 d651      sub     51h
0c87 55        ld      d,l
0c88 2064      jr      nz,0ceeh         ; (+64h)
0c8a 60        ld      h,b
0c8b 71        ld      (hl),c
0c8c 5e        ld      e,(hl)
0c8d 5b        ld      e,e
0c8e 4d        ld      c,l
0c8f 6d        ld      l,l
0c90 6b        ld      l,e
0c91 6c        ld      l,h
0c92 6f        ld      l,a
0c93 4b        ld      c,e
0c94 4f        ld      c,a
0c95 70        ld      (hl),b
0c96 73        ld      (hl),e
0c97 77        ld      (hl),a
0c98 53        ld      d,e
0c99 75        ld      (hl),l
0c9a 49        ld      c,c
0c9b 54        ld      d,h
0c9c 50        ld      d,b
0c9d 5c        ld      e,h
0c9e 68        ld      l,b
0c9f 5f        ld      e,a
0ca0 4c        ld      c,h
0ca1 74        ld      (hl),h
0ca2 69        ld      l,c
0ca3 58        ld      e,b
0ca4 59        ld      e,c
0ca5 48        ld      c,b
0ca6 5d        ld      e,l
0ca7 56        ld      d,(hl)
0ca8 60        ld      h,b
0ca9 52        ld      d,d
0caa 23        inc     hl
0cab 4a        ld      c,d
0cac 60        ld      h,b
0cad dbcd      in      a,(0cdh)
0caf edeb      db      0edh, 0ebh       ; Undocumented 8 T-State NOP
0cb1 ecefcb    call    pe,0cbefh
0cb4 cf        rst     08h
0cb5 f0        ret     p

0cb6 f3        di      
0cb7 f7        rst     30h
0cb8 d3f5      out     (0f5h),a
0cba c9        ret     

0cbb d4d0dc    call    nc,0dcd0h
0cbe e8        ret     pe

0cbf df        rst     18h
0cc0 ccf4e9    call    z,0e9f4h
0cc3 d8        ret     c

0cc4 d9        exx     
0cc5 c8        ret     z

0cc6 dd5636    ld      d,(ix+36h)
0cc9 52        ld      d,d
0cca e3        ex      (sp),hl
0ccb 00        nop     
0ccc 3eaf      ld      a,0afh
0cce b7        or      a
0ccf c9        ret     

0cd0 c1        pop     bc
0cd1 00        nop     
0cd2 00        nop     
0cd3 60        ld      h,b
0cd4 5b        ld      e,e
0cd5 00        nop     
0cd6 e0        ret     po

0cd7 5b        ld      e,e
0cd8 00        nop     
0cd9 63        ld      h,e
0cda 5b        ld      e,e
0cdb 00        nop     
0cdc e3        ex      (sp),hl
0cdd 5b        ld      e,e
0cde 00        nop     
0cdf 24        inc     h
0ce0 5b        ld      e,e
0ce1 00        nop     
0ce2 57        ld      d,a
0ce3 00        nop     
0ce4 00        nop     
0ce5 60        ld      h,b
0ce6 6c        ld      l,h
0ce7 00        nop     
0ce8 e0        ret     po

0ce9 6c        ld      l,h
0cea 00        nop     
0ceb 63        ld      h,e
0cec 6c        ld      l,h
0ced 00        nop     
0cee 24        inc     h
0cef 6c        ld      l,h
0cf0 00        nop     
0cf1 60        ld      h,b
0cf2 70        ld      (hl),b
0cf3 00        nop     
0cf4 e0        ret     po

0cf5 70        ld      (hl),b
0cf6 00        nop     
0cf7 63        ld      h,e
0cf8 70        ld      (hl),b
0cf9 00        nop     
0cfa 24        inc     h
0cfb 70        ld      (hl),b
0cfc 00        nop     
0cfd e3        ex      (sp),hl
0cfe 49        ld      c,c
0cff 00        nop     
0d00 60        ld      h,b
0d01 54        ld      d,h
0d02 00        nop     
0d03 e0        ret     po

0d04 54        ld      d,h
0d05 00        nop     
0d06 63        ld      h,e
0d07 54        ld      d,h
0d08 00        nop     
0d09 e3        ex      (sp),hl
0d0a 54        ld      d,h
0d0b 00        nop     
0d0c 24        inc     h
0d0d 54        ld      d,h
0d0e 00        nop     
0d0f 54        ld      d,h
0d10 00        nop     
0d11 00        nop     
0d12 60        ld      h,b
0d13 74        ld      (hl),h
0d14 00        nop     
0d15 e0        ret     po

0d16 74        ld      (hl),h
0d17 00        nop     
0d18 63        ld      h,e
0d19 74        ld      (hl),h
0d1a 00        nop     
0d1b 24        inc     h
0d1c 74        ld      (hl),h
0d1d 00        nop     
0d1e 24        inc     h
0d1f 48        ld      c,b
0d20 00        nop     
0d21 24        inc     h
0d22 c1        pop     bc
0d23 00        nop     
0d24 4e        ld      c,(hl)
0d25 00        nop     
0d26 00        nop     
0d27 e0        ret     po

0d28 c1        pop     bc
0d29 00        nop     
0d2a 6a        ld      l,d
0d2b 00        nop     
0d2c 00        nop     
0d2d d40000    call    nc,0000h
0d30 0e00      ld      c,00h
0d32 00        nop     
0d33 20db      jr      nz,0d10h         ; (-25h)
0d35 00        nop     
0d36 a0        and     b
0d37 db00      in      a,(00h)
0d39 23        inc     hl
0d3a db00      in      a,(00h)
0d3c a3        and     e
0d3d db00      in      a,(00h)
0d3f 24        inc     h
0d40 db00      in      a,(00h)
0d42 d7        rst     10h
0d43 00        nop     
0d44 00        nop     
0d45 20ec      jr      nz,0d33h         ; (-14h)
0d47 00        nop     
0d48 a0        and     b
0d49 ec0023    call    pe,2300h
0d4c ec0024    call    pe,2400h
0d4f ec0020    call    pe,2000h
0d52 f0        ret     p

0d53 00        nop     
0d54 a0        and     b
0d55 f0        ret     p

0d56 00        nop     
0d57 23        inc     hl
0d58 f0        ret     p

0d59 00        nop     
0d5a 24        inc     h
0d5b f0        ret     p

0d5c 00        nop     
0d5d a3        and     e
0d5e c9        ret     

0d5f 00        nop     
0d60 20d4      jr      nz,0d36h         ; (-2ch)
0d62 00        nop     
0d63 a0        and     b
0d64 d40023    call    nc,2300h
0d67 d400a3    call    nc,0a300h
0d6a d40024    call    nc,2400h
0d6d d400d4    call    nc,0d400h
0d70 00        nop     
0d71 00        nop     
0d72 20f4      jr      nz,0d68h         ; (-0ch)
0d74 00        nop     
0d75 a0        and     b
0d76 f40020    call    p,2000h
0d79 f40024    call    p,2400h
0d7c f40024    call    p,2400h
0d7f c8        ret     z

0d80 00        nop     
0d81 4d        ld      c,l
0d82 00        nop     
0d83 00        nop     
0d84 5e        ld      e,(hl)
0d85 00        nop     
0d86 00        nop     
0d87 62        ld      h,d
0d88 00        nop     
0d89 00        nop     
0d8a 71        ld      (hl),c
0d8b 00        nop     
0d8c 00        nop     
0d8d 11c64a    ld      de,4ac6h
0d90 a0        and     b
0d91 00        nop     
0d92 00        nop     
0d93 e0        ret     po

0d94 00        nop     
0d95 00        nop     
0d96 2000      jr      nz,0d98h         ; (+00h)
0d98 00        nop     
0d99 60        ld      h,b
0d9a 00        nop     
0d9b 00        nop     
0d9c 23        inc     hl
0d9d 00        nop     
0d9e 00        nop     
0d9f 63        ld      h,e
0da0 00        nop     
0da1 00        nop     
0da2 a3        and     e
0da3 00        nop     
0da4 00        nop     
0da5 e3        ex      (sp),hl
0da6 00        nop     
0da7 00        nop     
0da8 24        inc     h
0da9 00        nop     
0daa 00        nop     
0dab 63        ld      h,e
0dac 3600      ld      (hl),00h
0dae 2e00      ld      l,00h
0db0 00        nop     
0db1 a2        and     d
0db2 00        nop     
0db3 00        nop     
0db4 a4        and     h
0db5 00        nop     
0db6 00        nop     
0db7 e3        ex      (sp),hl
0db8 1a        ld      a,(de)
0db9 00        nop     
0dba 48        ld      c,b
0dbb c6d1      add     a,0d1h
0dbd 48        ld      c,b
0dbe c664      add     a,64h
0dc0 a3        and     e
0dc1 64        ld      h,h
0dc2 00        nop     
0dc3 64        ld      h,h
0dc4 c66e      add     a,6eh
0dc6 91        sub     c
0dc7 c636      add     a,36h
0dc9 54        ld      d,h
0dca c6d1      add     a,0d1h
0dcc d4c6d1    call    nc,0d1c6h
0dcf 54        ld      d,h
0dd0 c66e      add     a,6eh
0dd2 54        ld      d,h
0dd3 c6d9      add     a,0d9h
0dd5 d8        ret     c

0dd6 00        nop     
0dd7 00        nop     
0dd8 d9        exx     
0dd9 00        nop     
0dda 00        nop     
0ddb c8        ret     z

0ddc 00        nop     
0ddd 00        nop     
0dde dd00      nop     
0de0 00        nop     
0de1 56        ld      d,(hl)
0de2 00        nop     
0de3 00        nop     
0de4 3600      ld      (hl),00h
0de6 00        nop     
0de7 52        ld      d,d
0de8 00        nop     
0de9 00        nop     
0dea a3        and     e
0deb c1        pop     bc
0dec 00        nop     
0ded 00        nop     
0dee 00        nop     
0def 00        nop     
0df0 f3        di      
0df1 f1        pop     af
0df2 db01      in      a,(01h)
0df4 57        ld      d,a
0df5 d9        exx     
0df6 7a        ld      a,d
0df7 f680      or      80h
0df9 57        ld      d,a
0dfa d9        exx     
0dfb ed4d      reti    

0dfd c1        pop     bc
0dfe 00        nop     
0dff 00        nop     
0e00 3600      ld      (hl),00h
0e02 00        nop     
0e03 36c6      ld      (hl),0c6h
0e05 ed4e      im      0                ; Undocumented
0e07 00        nop     
0e08 00        nop     
0e09 54        ld      d,h
0e0a c659      add     a,59h
0e0c 48        ld      c,b
0e0d c6d1      add     a,0d1h
0e0f 3600      ld      (hl),00h
0e11 00        nop     
0e12 6a        ld      l,d
0e13 00        nop     
0e14 00        nop     
0e15 24        inc     h
0e16 c1        pop     bc
0e17 00        nop     
0e18 ed00      db      0edh, 00h        ; Undocumented 8 T-State NOP
0e1a 00        nop     
0e1b 1e00      ld      e,00h
0e1d 00        nop     
0e1e 20e0      jr      nz,0e00h         ; (-20h)
0e20 c1        pop     bc
0e21 d1        pop     de
0e22 00        nop     
0e23 00        nop     
0e24 d1        pop     de
0e25 00        nop     
0e26 00        nop     
0e27 68        ld      l,b
0e28 00        nop     
0e29 00        nop     
0e2a d1        pop     de
0e2b 00        nop     
0e2c 00        nop     
0e2d 62        ld      h,d
0e2e 00        nop     
0e2f 00        nop     
0e30 11c64a    ld      de,4ac6h
0e33 a2        and     d
0e34 00        nop     
0e35 00        nop     
0e36 a4        and     h
0e37 00        nop     
0e38 00        nop     
0e39 60        ld      h,b
0e3a c1        pop     bc
0e3b 00        nop     
0e3c 2e00      ld      l,00h
0e3e 00        nop     
0e3f e3        ex      (sp),hl
0e40 5a        ld      e,d
0e41 00        nop     
0e42 20a0      jr      nz,0de4h         ; (-60h)
0e44 c1        pop     bc
0e45 f1        pop     af
0e46 00        nop     
0e47 00        nop     
0e48 de00      sbc     a,00h
0e4a 00        nop     
0e4b 62        ld      h,d
0e4c 00        nop     
0e4d 00        nop     
0e4e a0        and     b
0e4f 60        ld      h,b
0e50 c1        pop     bc
0e51 c1        pop     bc
0e52 00        nop     
0e53 00        nop     
0e54 c1        pop     bc
0e55 00        nop     
0e56 00        nop     
0e57 c1        pop     bc
0e58 00        nop     
0e59 00        nop     
0e5a 71        ld      (hl),c
0e5b 00        nop     
0e5c 00        nop     
0e5d 60        ld      h,b
0e5e 5b        ld      e,e
0e5f 00        nop     
0e60 e0        ret     po

0e61 5b        ld      e,e
0e62 00        nop     
0e63 63        ld      h,e
0e64 5b        ld      e,e
0e65 00        nop     
0e66 e3        ex      (sp),hl
0e67 5b        ld      e,e
0e68 00        nop     
0e69 24        inc     h
0e6a 5b        ld      e,e
0e6b 00        nop     
0e6c 22c65b    ld      (5bc6h),hl
0e6f 5b        ld      e,e
0e70 00        nop     
0e71 00        nop     
0e72 57        ld      d,a
0e73 00        nop     
0e74 00        nop     
0e75 60        ld      h,b
0e76 6c        ld      l,h
0e77 00        nop     
0e78 e0        ret     po

0e79 6c        ld      l,h
0e7a 00        nop     
0e7b 63        ld      h,e
0e7c 6c        ld      l,h
0e7d 00        nop     
0e7e 24        inc     h
0e7f 6c        ld      l,h
0e80 00        nop     
0e81 60        ld      h,b
0e82 70        ld      (hl),b
0e83 00        nop     
0e84 e0        ret     po

0e85 70        ld      (hl),b
0e86 00        nop     
0e87 63        ld      h,e
0e88 70        ld      (hl),b
0e89 00        nop     
0e8a 24        inc     h
0e8b 70        ld      (hl),b
0e8c 00        nop     
0e8d 6b        ld      l,e
0e8e c6d1      add     a,0d1h
0e90 e3        ex      (sp),hl
0e91 49        ld      c,c
0e92 00        nop     
0e93 60        ld      h,b
0e94 54        ld      d,h
0e95 00        nop     
0e96 e0        ret     po

0e97 54        ld      d,h
0e98 00        nop     
0e99 63        ld      h,e
0e9a 54        ld      d,h
0e9b 00        nop     
0e9c e3        ex      (sp),hl
0e9d 54        ld      d,h
0e9e 00        nop     
0e9f 24        inc     h
0ea0 54        ld      d,h
0ea1 00        nop     
0ea2 c1        pop     bc
0ea3 00        nop     
0ea4 00        nop     
0ea5 6e        ld      l,(hl)
0ea6 c692      add     a,92h
0ea8 60        ld      h,b
0ea9 74        ld      (hl),h
0eaa 00        nop     
0eab e0        ret     po

0eac 74        ld      (hl),h
0ead 00        nop     
0eae 63        ld      h,e
0eaf 74        ld      (hl),h
0eb0 00        nop     
0eb1 24        inc     h
0eb2 74        ld      (hl),h
0eb3 00        nop     
0eb4 e0        ret     po

0eb5 48        ld      c,b
0eb6 00        nop     
0eb7 50        ld      d,b
0eb8 00        nop     
0eb9 00        nop     
0eba 4d        ld      c,l
0ebb 00        nop     
0ebc 00        nop     
0ebd 20db      jr      nz,0e9ah         ; (-25h)
0ebf 00        nop     
0ec0 a0        and     b
0ec1 db00      in      a,(00h)
0ec3 23        inc     hl
0ec4 db00      in      a,(00h)
0ec6 a3        and     e
0ec7 db00      in      a,(00h)
0ec9 24        inc     h
0eca db00      in      a,(00h)
0ecc 22c6db    ld      (0dbc6h),hl
0ecf db00      in      a,(00h)
0ed1 00        nop     
0ed2 d7        rst     10h
0ed3 00        nop     
0ed4 00        nop     
0ed5 20ec      jr      nz,0ec3h         ; (-14h)
0ed7 00        nop     
0ed8 a0        and     b
0ed9 ec0023    call    pe,2300h
0edc ec0024    call    pe,2400h
0edf ec0020    call    pe,2000h
0ee2 f0        ret     p

0ee3 00        nop     
0ee4 a0        and     b
0ee5 f0        ret     p

0ee6 00        nop     
0ee7 23        inc     hl
0ee8 f0        ret     p

0ee9 00        nop     
0eea 24        inc     h
0eeb f0        ret     p

0eec 00        nop     
0eed eb        ex      de,hl
0eee c6d1      add     a,0d1h
0ef0 a3        and     e
0ef1 c9        ret     

0ef2 00        nop     
0ef3 20d4      jr      nz,0ec9h         ; (-2ch)
0ef5 00        nop     
0ef6 a0        and     b
0ef7 d40023    call    nc,2300h
0efa d400a3    call    nc,0a300h
0efd d40024    call    nc,2400h
0f00 d400c1    call    nc,0c100h
0f03 00        nop     
0f04 00        nop     
0f05 6e        ld      l,(hl)
0f06 c694      add     a,94h
0f08 20f4      jr      nz,0efeh         ; (-0ch)
0f0a 00        nop     
0f0b a0        and     b
0f0c f40023    call    p,2300h
0f0f f40024    call    p,2400h
0f12 f40020    call    p,2000h
0f15 c8        ret     z

0f16 00        nop     
0f17 d0        ret     nc

0f18 00        nop     
0f19 00        nop     
0f1a 24        inc     h
0f1b c8        ret     z

0f1c 00        nop     
0f1d ff        rst     38h
0f1e ff        rst     38h
0f1f ff        rst     38h
0f20 ff        rst     38h
0f21 ff        rst     38h
0f22 ff        rst     38h
0f23 ff        rst     38h
0f24 ff        rst     38h
0f25 ff        rst     38h
0f26 ff        rst     38h
0f27 ff        rst     38h
0f28 ff        rst     38h
0f29 ff        rst     38h
0f2a ff        rst     38h
0f2b ff        rst     38h
0f2c ff        rst     38h
0f2d ff        rst     38h
0f2e ff        rst     38h
0f2f ff        rst     38h
0f30 ff        rst     38h
0f31 ff        rst     38h
0f32 ff        rst     38h
0f33 ff        rst     38h
0f34 ff        rst     38h
0f35 ff        rst     38h
0f36 ff        rst     38h
0f37 ff        rst     38h
0f38 ff        rst     38h
0f39 ff        rst     38h
0f3a ff        rst     38h
0f3b ff        rst     38h
0f3c ff        rst     38h
0f3d ff        rst     38h
0f3e ff        rst     38h
0f3f ff        rst     38h
0f40 ff        rst     38h
0f41 ff        rst     38h
0f42 ff        rst     38h
0f43 ff        rst     38h
0f44 ff        rst     38h
0f45 ff        rst     38h
0f46 ff        rst     38h
0f47 ff        rst     38h
0f48 ff        rst     38h
0f49 ff        rst     38h
0f4a ff        rst     38h
0f4b ff        rst     38h
0f4c ff        rst     38h
0f4d ff        rst     38h
0f4e ff        rst     38h
0f4f ff        rst     38h
0f50 f0        ret     p

0f51 ad        xor     l
0f52 c4b20d    call    nz,0db2h
0f55 a0        and     b
0f56 0a        ld      a,(bc)
0f57 c0        ret     nz

0f58 2d        dec     l
0f59 b0        or      b
0f5a 3c        inc     a
0f5b a2        and     d
0f5c 82        add     a,d
0f5d f7        rst     30h
0f5e 24        inc     h
0f5f ec0020    call    pe,2000h
0f62 f0        ret     p

0f63 00        nop     
0f64 a0        and     b
0f65 f0        ret     p

0f66 00        nop     
0f67 23        inc     hl
0f68 f0        ret     p

0f69 00        nop     
0f6a 24        inc     h
0f6b f0        ret     p

0f6c 00        nop     
0f6d eb        ex      de,hl
0f6e c6d1      add     a,0d1h
0f70 a3        and     e
0f71 c9        ret     

0f72 00        nop     
0f73 20d4      jr      nz,0f49h         ; (-2ch)
0f75 00        nop     
0f76 a0        and     b
0f77 d40023    call    nc,2300h
0f7a d400a3    call    nc,0a300h
0f7d d40024    call    nc,2400h
0f80 00        nop     
0f81 00        nop     
0f82 00        nop     
0f83 00        nop     
0f84 00        nop     
0f85 00        nop     
0f86 00        nop     
0f87 00        nop     
0f88 00        nop     
0f89 00        nop     
0f8a 00        nop     
0f8b 00        nop     
0f8c 00        nop     
0f8d 00        nop     
0f8e 00        nop     
0f8f 00        nop     
0f90 00        nop     
0f91 00        nop     
0f92 00        nop     
0f93 00        nop     
0f94 00        nop     
0f95 00        nop     
0f96 00        nop     
0f97 00        nop     
0f98 00        nop     
0f99 00        nop     
0f9a 00        nop     
0f9b 00        nop     
0f9c 00        nop     
0f9d 00        nop     
0f9e 00        nop     
0f9f 00        nop     
0fa0 00        nop     
0fa1 00        nop     
0fa2 00        nop     
0fa3 00        nop     
0fa4 00        nop     
0fa5 00        nop     
0fa6 00        nop     
0fa7 00        nop     
0fa8 00        nop     
0fa9 09        add     hl,bc
0faa 4e        ld      c,(hl)
0fab c8        ret     z

0fac 8a        adc     a,d
0fad 4c        ld      c,h
0fae 208a      jr      nz,0f3ah         ; (-76h)
0fb0 8c        adc     a,h
0fb1 8a        adc     a,d
0fb2 c8        ret     z

0fb3 49        ld      c,c
0fb4 47        ld      b,a
0fb5 49        ld      c,c
0fb6 61        ld      h,c
0fb7 8d        adc     a,l
0fb8 0e0b      ld      c,0bh
0fba 0a        ld      a,(bc)
0fbb 200e      jr      nz,0fcbh         ; (+0eh)
0fbd 8d        adc     a,l
0fbe 88        adc     a,b
0fbf 208a      jr      nz,0f4bh         ; (-76h)
0fc1 200b      jr      nz,0fceh         ; (+0bh)
0fc3 8f        adc     a,a
0fc4 8e        adc     a,(hl)
0fc5 208c      jr      nz,0f53h         ; (-74h)
0fc7 c8        ret     z

0fc8 88        adc     a,b
0fc9 0a        ld      a,(bc)
0fca 0e8d      ld      c,8dh
0fcc c8        ret     z

0fcd 8a        adc     a,d
0fce 49        ld      c,c
0fcf 89        adc     a,c
0fd0 0a        ld      a,(bc)
0fd1 4c        ld      c,h
0fd2 2061      jr      nz,1035h         ; (+61h)
0fd4 60        ld      h,b
0fd5 49        ld      c,c
0fd6 8a        adc     a,d
0fd7 c9        ret     

0fd8 200c      jr      nz,0fe6h         ; (+0ch)
0fda 0a        ld      a,(bc)
0fdb 49        ld      c,c
0fdc 88        adc     a,b
0fdd cb0a      rrc     d
0fdf 49        ld      c,c
0fe0 8a        adc     a,d
0fe1 2020      jr      nz,1003h         ; (+20h)
0fe3 a7        and     a
0fe4 2049      jr      nz,102fh         ; (+49h)
0fe6 8a        adc     a,d
0fe7 c9        ret     

0fe8 204b      jr      nz,1035h         ; (+4bh)
0fea 8f        adc     a,a
0feb 89        adc     a,c
0fec c8        ret     z

0fed cb0a      rrc     d
0fef 49        ld      c,c
0ff0 8a        adc     a,d
0ff1 200a      jr      nz,0ffdh         ; (+0ah)
0ff3 cac88f    jp      z,8fc8h
0ff6 20c8      jr      nz,0fc0h         ; (-38h)
0ff8 8a        adc     a,d
0ff9 4b        ld      c,e
0ffa c8        ret     z

0ffb 8a        adc     a,d
0ffc 57        ld      d,a
0ffd 0f        rrca    
0ffe 2c        inc     l
0fff e600      and     00h
