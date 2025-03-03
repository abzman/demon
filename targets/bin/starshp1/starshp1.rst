                              1 ;****************************************************************
                              2 ; This file is auto-generated by ddmake from starshp1.toml
                              3 ; *** DO NOT EDIT ***
                              4 ;****************************************************************
                              5 
                              6 ; Start of chip memory mapping
                     F800     7 STRTADD = 0xf800
                              8 
                              9 ; 2K ROM
                     0800    10 ROMSIZE = 0x0800
                             11 
                             12 ; Start of ram, needs 7 bytes starting here
                             13 ; On the 6502, you can usually you can count on there being RAM in page 0
                     0000    14 RAMSTRT = 0x0000
                             15 
                             16 ; Start of stack, needs some memory below this address
                             17 ; On the 6502, this is in page 1, so this actually represents
                             18 ; address 0x0100+SSTACK
                     00FF    19 SSTACK = 0x00ff
                             20 
                             21 ; delay factor
                     0180    22 BIGDEL = 0x0180
                             23 
                             24         .include "../core/dd.def"
                              1 
                     0000     2 ROMEND  .equ    STRTADD+ROMSIZE
                              3 
                              4 
                             25         .include "../core/6502.def"
                              1 ; Same for all 6502s
                     FFFA     2 VECTORS .equ    0xfffa      ; location of Vector table
                             26         .include "../io/romio.def"
                              1 ; For Demon Debugger Hardware - Rev D 
                              2 
                     FFA0     3 IOREGR   .equ   STRTADD+0x07a0    ;reserved region for IO READ
                     FFC0     4 IOREGW   .equ   STRTADD+0x07c0    ;reserved region for IO WRITE
                              5 
                     FFA0     6 IOADD    .equ   IOREGR            ;start of region
                     FFE0     7 IOEND    .equ   STRTADD+0x07e0    ;end of region
                             27 
                             28 ;------- region1  -----------------------------------------------
                             29 
                             30         .bank   region1 (base=STRTADD, size=IOADD-STRTADD)
                             31         .area   region1 (ABS, BANK=region1)
                             32 
                             33 ;
                             34 ;       START CODE
                             35 ;
   F800                      36 START:
   F800 78            [ 2]   37         sei              ; Disable interrupts - we don't handle them
   F801 A2 FF         [ 2]   38         ldx     #SSTACK  ; set up the stack
   F803 9A            [ 2]   39         txs
   F804 D8            [ 2]   40         cld              ; No Decimal
                             41 ;       YOUR CODE CAN GO HERE
   F805 4C 08 F8      [ 3]   42         jmp     INIT
                             43 
                             44         .include "../core/6502_main.asm"
                              1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              2 ; RAM Variables 
                              3 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              4 
                     0000     5 OUTBUF  .equ    RAMSTRT         ;buffer for output states
                     0001     6 B       .equ    RAMSTRT+0x01    ;general purpose
                     0002     7 C       .equ    RAMSTRT+0x02    ;general purpose
                     0003     8 CMDBUF0 .equ    RAMSTRT+0x03    ;command buffer
                     0004     9 CMDBUF1 .equ    RAMSTRT+0x04    ;command buffer
                     0005    10 CMDBUF2 .equ    RAMSTRT+0x05    ;command buffer
                     0006    11 CMDBUF3 .equ    RAMSTRT+0x06    ;command buffer
                             12 
                             13 ; I2C ADDRESSING
                     0011    14 I2CRADR .equ    0x11        ; I2C read address  - I2C address 0x08
                     0010    15 I2CWADR .equ    0x10        ; I2C write address - I2C address 0x08
                             16 
   F808                      17 INIT:
   F808 A9 00         [ 2]   18         lda     #0x00
   F80A 85 00         [ 3]   19         sta     OUTBUF
                             20 
                             21 ; Main routine
   F80C                      22 MAIN:
   F80C 20 09 F9      [ 6]   23         jsr     EVERY
   F80F 20 C6 F8      [ 6]   24         jsr     POLL
   F812 B0 F8         [ 4]   25         bcs     MAIN
   F814 A9 01         [ 2]   26         lda     #BIGDEL>>8
   F816 85 01         [ 3]   27         sta     B
   F818 A9 80         [ 2]   28         lda     #BIGDEL%256
   F81A 85 02         [ 3]   29         sta     C
   F81C                      30 MLOOP:
   F81C A5 02         [ 3]   31         lda     C
   F81E F0 05         [ 4]   32         beq     DECBOTH
   F820 C6 02         [ 5]   33         dec     C
   F822 4C 1C F8      [ 3]   34         jmp     MLOOP
   F825                      35 DECBOTH:
   F825 A5 01         [ 3]   36         lda     B
   F827 F0 E3         [ 4]   37         beq     MAIN
   F829 C6 02         [ 5]   38         dec     C
   F82B C6 01         [ 5]   39         dec     B
   F82D 4C 1C F8      [ 3]   40         jmp     MLOOP
                             41 
                             42 ; Delay for half a bit time
   F830 60            [ 6]   43 I2CDLY: rts             ; TBD - this is plenty?
                             44 
                             45 ; I2C Start Condition
   F831                      46 I2CSTART:
   F831 20 77 F9      [ 6]   47         jsr    CLRSDA      
   F834 20 5E F9      [ 6]   48         jsr    CLRSCL
   F837 60            [ 6]   49         rts
                             50 
                             51 ; I2C Stop Condition
                             52 ; Uses HL
                             53 ; Destroys A
   F838                      54 I2CSTOP:
   F838 20 77 F9      [ 6]   55         jsr    CLRSDA
   F83B 20 50 F9      [ 6]   56         jsr    SETSCL
   F83E 20 69 F9      [ 6]   57         jsr    SETSDA
   F841 60            [ 6]   58         rts
                             59         
   F842                      60 I2CRBIT:
   F842 20 69 F9      [ 6]   61         jsr     SETSDA
   F845 20 50 F9      [ 6]   62         jsr     SETSCL
   F848 20 85 F9      [ 6]   63         jsr     READSDA ; sets/clears carry flag
   F84B 20 5E F9      [ 6]   64         jsr     CLRSCL
   F84E 60            [ 6]   65         rts             ; carry flag still good here
                             66 
   F84F                      67 I2CWBIT:
   F84F 90 06         [ 4]   68         bcc     DOCLR
   F851 20 69 F9      [ 6]   69         jsr     SETSDA
   F854 4C 5A F8      [ 3]   70         jmp     AHEAD
   F857                      71 DOCLR:
   F857 20 77 F9      [ 6]   72         jsr     CLRSDA
   F85A                      73 AHEAD:
   F85A 20 50 F9      [ 6]   74         jsr     SETSCL
   F85D 20 5E F9      [ 6]   75         jsr     CLRSCL
   F860 60            [ 6]   76         rts
                             77         
   F861                      78 I2CWBYTE:
   F861 48            [ 3]   79         pha
   F862 A9 08         [ 2]   80         lda     #0x08
   F864 85 01         [ 3]   81         sta     B
   F866 68            [ 4]   82         pla
   F867                      83 ILOOP:
   F867 2A            [ 2]   84         rol
   F868 48            [ 3]   85         pha
   F869 20 4F F8      [ 6]   86         jsr     I2CWBIT
   F86C 68            [ 4]   87         pla
   F86D C6 01         [ 5]   88         dec     B
   F86F D0 F6         [ 4]   89         bne     ILOOP
   F871 20 42 F8      [ 6]   90         jsr     I2CRBIT
   F874 60            [ 6]   91         rts
                             92         
   F875                      93 I2CRBYTE:
   F875 A9 08         [ 2]   94         lda     #0x08
   F877 85 01         [ 3]   95         sta     B
   F879 A9 00         [ 2]   96         lda     #0x00
   F87B 85 02         [ 3]   97         sta     C
   F87D                      98 LOOP3:
   F87D 20 42 F8      [ 6]   99         jsr     I2CRBIT     ; get bit in carry flag
   F880 26 02         [ 5]  100         rol     C           ; rotate carry into bit0 of C register
   F882 C6 01         [ 5]  101         dec     B
   F884 D0 F7         [ 4]  102         bne     LOOP3
   F886 18            [ 2]  103         clc                 ; clear carry flag              
   F887 20 4F F8      [ 6]  104         jsr     I2CWBIT
   F88A A5 02         [ 3]  105         lda     C
   F88C 60            [ 6]  106         rts
                            107 
   F88D                     108 I2CRREQ:
   F88D 20 31 F8      [ 6]  109         jsr     I2CSTART
   F890 A9 11         [ 2]  110         lda         #I2CRADR
   F892 20 61 F8      [ 6]  111         jsr     I2CWBYTE
   F895 B0 17         [ 4]  112         bcs     SKIP
   F897 20 75 F8      [ 6]  113         jsr     I2CRBYTE
   F89A 85 03         [ 3]  114         sta     CMDBUF0
   F89C 20 75 F8      [ 6]  115         jsr     I2CRBYTE
   F89F 85 04         [ 3]  116         sta     CMDBUF1
   F8A1 20 75 F8      [ 6]  117         jsr     I2CRBYTE
   F8A4 85 05         [ 3]  118         sta     CMDBUF2
   F8A6 20 75 F8      [ 6]  119         jsr     I2CRBYTE
   F8A9 85 06         [ 3]  120         sta     CMDBUF3
   F8AB 4C C2 F8      [ 3]  121         jmp     ENDI2C
                            122     
   F8AE                     123 SKIP:                       ; If no device present, fake an idle response
   F8AE A9 2E         [ 2]  124         lda     #0x2e  ; '.'
   F8B0 85 03         [ 3]  125         sta     CMDBUF0
   F8B2 4C C2 F8      [ 3]  126         jmp     ENDI2C
                            127 
   F8B5                     128 I2CSRESP:
   F8B5 48            [ 3]  129         pha
   F8B6 20 31 F8      [ 6]  130         jsr     I2CSTART
   F8B9 A9 10         [ 2]  131         lda     #I2CWADR
   F8BB 20 61 F8      [ 6]  132         jsr     I2CWBYTE
   F8BE 68            [ 4]  133         pla
   F8BF 20 61 F8      [ 6]  134         jsr     I2CWBYTE
   F8C2                     135 ENDI2C:
   F8C2 20 38 F8      [ 6]  136         jsr     I2CSTOP
   F8C5 60            [ 6]  137         rts
                            138 
   F8C6                     139 POLL:
   F8C6 20 8D F8      [ 6]  140         jsr     I2CRREQ
   F8C9 A5 03         [ 3]  141         lda     CMDBUF0
   F8CB C9 52         [ 2]  142         cmp     #0x52           ; 'R' - Read memory
   F8CD F0 0A         [ 4]  143         beq     MREAD
   F8CF C9 57         [ 2]  144         cmp     #0x57           ; 'W' - Write memory
   F8D1 F0 10         [ 4]  145         beq     MWRITE
   F8D3 C9 43         [ 2]  146         cmp     #0x43           ; 'C' - Call subroutine
   F8D5 F0 26         [ 4]  147         beq     REMCALL
   F8D7 18            [ 2]  148         clc
   F8D8 60            [ 6]  149         rts
                            150 
   F8D9                     151 MREAD:
   F8D9 20 EF F8      [ 6]  152         jsr     LOADBC
   F8DC A0 00         [ 2]  153         ldy     #0x00
   F8DE B1 01         [ 6]  154         lda     [B],Y
   F8E0 4C F8 F8      [ 3]  155         jmp     SRESP
   F8E3                     156 MWRITE:
   F8E3 20 EF F8      [ 6]  157         jsr     LOADBC
   F8E6 A5 06         [ 3]  158         lda     CMDBUF3
   F8E8 91 01         [ 6]  159         sta     [B],Y
   F8EA A9 57         [ 2]  160         lda     #0x57   ;'W'
   F8EC 4C F8 F8      [ 3]  161         jmp     SRESP
   F8EF                     162 LOADBC:
   F8EF A5 05         [ 3]  163         lda     CMDBUF2
   F8F1 85 01         [ 3]  164         sta     B
   F8F3 A5 04         [ 3]  165         lda     CMDBUF1
   F8F5 85 02         [ 3]  166         sta     C
   F8F7 60            [ 6]  167         rts
                            168         
   F8F8                     169 SRESP:
   F8F8 20 B5 F8      [ 6]  170         jsr    I2CSRESP
   F8FB                     171 RHERE:
   F8FB 38            [ 2]  172         sec
   F8FC 60            [ 6]  173         rts
   F8FD                     174 REMCALL:
   F8FD A9 F7         [ 2]  175         lda     #>(START-1)
   F8FF 48            [ 3]  176         pha
   F900 A9 FF         [ 2]  177         lda     #<(START-1)
   F902 48            [ 3]  178         pha
   F903 20 EF F8      [ 6]  179         jsr     LOADBC
   F906 6C 01 00      [ 5]  180         jmp     [B]
                            181         
                            182 ;;;;;;;;;;
                            183 
                            184 
                             45 ;
                             46 ;       EVERY CODE
                             47 ;
   F909                      48 EVERY:
                             49         ; reset the starshp1 watchdog
   F909 A9 01         [ 2]   50         lda     #0x01
   F90B 8D 06 DC      [ 4]   51         sta     0xdc06
   F90E A9 FE         [ 2]   52         lda     #0xfe
   F910 8D 00 CC      [ 4]   53         sta     0xcc00
   F913 8D 00 CC      [ 4]   54         sta     0xcc00
   F916 8D 00 CC      [ 4]   55         sta     0xcc00
   F919 8D 00 CC      [ 4]   56         sta     0xcc00
   F91C 8D 00 CC      [ 4]   57         sta     0xcc00
   F91F 8D 00 CC      [ 4]   58         sta     0xcc00
   F922 8D 00 CC      [ 4]   59         sta     0xcc00
   F925 8D 00 CC      [ 4]   60         sta     0xcc00
   F928 8D 00 CC      [ 4]   61         sta     0xcc00
   F92B 8D 00 CC      [ 4]   62         sta     0xcc00
   F92E 8D 00 CC      [ 4]   63         sta     0xcc00
   F931 8D 00 CC      [ 4]   64         sta     0xcc00
   F934 8D 00 CC      [ 4]   65         sta     0xcc00
   F937 8D 00 CC      [ 4]   66         sta     0xcc00
   F93A 8D 00 CC      [ 4]   67         sta     0xcc00
   F93D 8D 00 CC      [ 4]   68         sta     0xcc00
   F940 8D 00 CC      [ 4]   69         sta     0xcc00
   F943 8D 00 CC      [ 4]   70         sta     0xcc00
   F946 8D 00 CC      [ 4]   71         sta     0xcc00
   F949 8D 00 CC      [ 4]   72         sta     0xcc00
   F94C 8D 06 DC      [ 4]   73         sta     0xdc06
   F94F 60            [ 6]   74         rts
                             75 
                             76 
                             77         .include "../io/6502_romio.asm"
   F950 A5 00         [ 3]    1 SETSCL: lda     OUTBUF
   F952 09 01         [ 2]    2         ora     #0x01
   F954 85 00         [ 3]    3         sta     OUTBUF
   F956 AA            [ 2]    4         tax
   F957 BD C0 FF      [ 5]    5         lda     IOREGW,X
   F95A 20 30 F8      [ 6]    6         jsr     I2CDLY
   F95D 60            [ 6]    7         rts
                              8 
   F95E A5 00         [ 3]    9 CLRSCL: lda     OUTBUF
   F960 29 1E         [ 2]   10         and     #0x1e
   F962 85 00         [ 3]   11         sta     OUTBUF
   F964 AA            [ 2]   12         tax
   F965 BD C0 FF      [ 5]   13         lda     IOREGW,X
   F968 60            [ 6]   14         rts
                             15 
   F969 A5 00         [ 3]   16 SETSDA: lda     OUTBUF
   F96B 29 1D         [ 2]   17         and     #0x1d
   F96D 85 00         [ 3]   18         sta     OUTBUF
   F96F AA            [ 2]   19         tax
   F970 BD C0 FF      [ 5]   20         lda     IOREGW,X
   F973 20 30 F8      [ 6]   21         jsr     I2CDLY
   F976 60            [ 6]   22         rts
                             23 
   F977 A5 00         [ 3]   24 CLRSDA: lda     OUTBUF
   F979 09 02         [ 2]   25         ora     #0x02
   F97B 85 00         [ 3]   26         sta     OUTBUF
   F97D AA            [ 2]   27         tax
   F97E BD C0 FF      [ 5]   28         lda     IOREGW,X
   F981 20 30 F8      [ 6]   29         jsr     I2CDLY
   F984 60            [ 6]   30         rts
                             31 
   F985                      32 READSDA:
   F985 A6 00         [ 3]   33         ldx     OUTBUF
   F987 BD A0 FF      [ 5]   34         lda     IOREGR,X
   F98A 6A            [ 2]   35         ror
   F98B 60            [ 6]   36         rts
                             37                              
                             78 ;
                             79 ;       NMI HANDLER
                             80 ;
   F98C                      81 NMI:
   F98C 40            [ 6]   82         rti
                             83 
                             84 
                             85 ;------- region2  -----------------------------------------------
                             86 
                             87         .bank   region2 (base=IOADD, size=IOEND-IOADD)
                             88         .area   region2 (ABS, BANK=region2)
                             89 
                             90         .include "../io/romio_table.asm"
                              1 
                              2 ; 
                              3 ; For Demon Debugger Hardware - Rev D 
                              4 ;
                              5 ; In earlier hardware designs, I tried to capture the address bus bits on a 
                              6 ; read cycle, to use to write to the Arduino.  But it turns out it is impossible
                              7 ; to know exactly when to sample these address bits across all platforms, designs, and 
                              8 ; clock speeds
                              9 ;
                             10 ; The solution I came up with was to make sure the data bus contains the same information
                             11 ; as the lower address bus during these read cycles, so that I can sample the data bus just like the 
                             12 ; CPU would.
                             13 ;
                             14 ; This block of memory, starting at 0x07c0, is filled with consecutive integers.
                             15 ; When the CPU reads from a location, the data bus matches the lower bits of the address bus.  
                             16 ; And the data bus read by the CPU is also written to the Arduino.
                             17 ; 
                             18 ; Note: Currently, only the bottom two bits are used, but reserving the memory
                             19 ; this way insures that up to 5 bits could be used 
                             20 ; 
                             21         ; ROMIO READ Area - reserved
   FFA0 FF FF FF FF FF FF    22         .DB     0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        FF FF FF FF FF FF
        FF FF FF FF
   FFB0 FF FF FF FF FF FF    23         .DB     0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        FF FF FF FF FF FF
        FF FF FF FF
                             24 
                             25         ; ROMIO WRITE Area - data is used
   FFC0 00 01 02 03 04 05    26         .DB     0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
        06 07 08 09 0A 0B
        0C 0D 0E 0F
   FFD0 10 11 12 13 14 15    27         .DB     0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f
        16 17 18 19 1A 1B
        1C 1D 1E 1F
                             28 
                             91 
                             92 ;------- region3  -----------------------------------------------
                             93 
                             94         .bank   region3 (base=VECTORS, size=ROMSIZE-VECTORS)
                             95         .area   region3 (ABS, BANK=region3)
                             96 
                             97         .include "../core/6502_vectors.asm"
   FFFA 8C F9                 1         .dw     NMI
   FFFC 00 F8                 2         .dw     START
   FFFE 00 F8                 3         .dw     START
                             98 
