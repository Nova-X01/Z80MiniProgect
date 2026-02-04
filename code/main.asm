    ORG $0000



; LCD no 8 - bit mode, enable 4 - bit mode D4 - D7

start:
    LD A, 15
delay_1ms: ; delay 1ms
    LD B, 153
delay_loop:
    DJNZ delay_loop
    dec A
    JR NZ, delay_1ms

    ; RESET LCD 3x
    LD A, 0x03
    OUT (0x00), A
    ld A, 0x23
    OUT (0x00), A
    ld A, 0x03
    OUT (0x00), A
    LD A, 5
delay_2ms: ; delay 1ms
    LD B, 153
delay_1loop:
    DJNZ delay_1loop
    dec A
    JR NZ, delay_2ms

    LD A, 0x03
    OUT (0x00), A
    LD A, 0x23
    OUT (0x00), A
    LD A, 0x03
    OUT (0x00), A
delay_3ms: ; delay 1ms
    LD B, 153
delay_3loop:
    DJNZ delay_3loop

    LD A, 0x03
    OUT (0x00), A
    LD A, 0x23
    OUT (0x00), A
    LD A, 0x03
    OUT (0x00), A
delay_4ms: ; delay 1ms
    LD B, 153
delay_4loop:
    DJNZ delay_4loop

; 4-byte mode LCD1306A

    ld A, 0x02
    OUT (0x00), A
    ld A, 0x22
    OUT (0x00), A
    ld A, 0x02
    OUT (0x00), A

    LD A, 5
delay_11ms: ; delay 1ms
    LD B, 153
delay_11loop:
    DJNZ delay_11loop
    dec A
    JR NZ, delay_11ms

; Function SET 0x28
    LD A, 0x02
    OUT (0x00), A
    ld A, 0x22
    OUT (0x00), A
    ld A, 0x02
    OUT (0x00), A

    LD A, 0x08
    OUT (0x00), A
    ld A, 0x28
    OUT (0x00), A
    ld A, 0x08
    OUT (0x00), A

delay_5ms: ; delay 1ms
    LD B, 153
delay_5loop:
    DJNZ delay_5loop

; Display ON
    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 0x0C
    OUT (0x00), A
    ld A, 0x2C
    OUT (0x00), A
    ld A, 0x0C
    OUT (0x00), A

delay_6ms: ; delay 1ms
    LD B, 153
delay_6loop:
    DJNZ delay_6loop

; clear display
    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 0x01
    OUT (0x00), A
    ld A, 0x21
    OUT (0x00), A
    ld A, 0x01
    OUT (0x00), A

    LD A, 5
delay_12ms: ; delay 1ms
    LD B, 153
delay_12loop:
    DJNZ delay_12loop
    dec A
    JR NZ, delay_12ms

; Entru set mode
    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 0x06
    OUT (0x00), A
    ld A, 0x26
    OUT (0x00), A
    ld A, 0x06
    OUT (0x00), A

delay_7ms: ; delay 1ms
    LD B, 153
delay_7loop:
    DJNZ delay_7loop

; LCD data H

    LD A, 0x14
    OUT (0x00), A
    ld A, 0x34
    OUT (0x00), A
    ld A, 0x14
    OUT (0x00), A

    LD A, 0x18
    OUT (0x00), A
    ld A, 0x38
    OUT (0x00), A
    ld A, 0x18
    OUT (0x00), A

delay_8ms: ; delay 1ms
    LD B, 153
delay_8loop:
    DJNZ delay_8loop

    LD A, 0x14
    OUT (0x00), A
    ld A, 0x34
    OUT (0x00), A
    ld A, 0x14
    OUT (0x00), A

    LD A, 0x15
    OUT (0x00), A
    ld A, 0x35
    OUT (0x00), A
    ld A, 0x15
    OUT (0x00), A

delay_9ms: ; delay 1ms
    LD B, 153
delay_9loop:
    DJNZ delay_9loop

    LD A, 0x14
    OUT (0x00), A
    ld A, 0x34
    OUT (0x00), A
    ld A, 0x14
    OUT (0x00), A

    LD A, 0x1C
    OUT (0x00), A
    ld A, 0x3C
    OUT (0x00), A
    ld A, 0x1C
    OUT (0x00), A

delay_91ms: ; delay 1ms
    LD B, 153
delay_91loop:
    DJNZ delay_91loop

    LD A, 0x14
    OUT (0x00), A
    ld A, 0x34
    OUT (0x00), A
    ld A, 0x14
    OUT (0x00), A

    LD A, 0x1C
    OUT (0x00), A
    ld A, 0x3C
    OUT (0x00), A
    ld A, 0x1C
    OUT (0x00), A

delay_92ms: ; delay 1ms
    LD B, 153
delay_92loop:
    DJNZ delay_92loop


    LD A, 0x14
    OUT (0x00), A
    ld A, 0x34
    OUT (0x00), A
    ld A, 0x14
    OUT (0x00), A

    LD A, 0x1F
    OUT (0x00), A
    ld A, 0x3F
    OUT (0x00), A
    ld A, 0x1F
    OUT (0x00), A

delay_93ms: ; delay 1ms
    LD B, 153
delay_93loop:
    DJNZ delay_93loop



    LD A, 0x0C
    OUT (0x00), A
    ld A, 0x2C
    OUT (0x00), A
    ld A, 0x0C
    OUT (0x00), A

    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 5
delay_13ms: ; delay 1ms
    LD B, 153
delay_13loop:
    DJNZ delay_13loop
    dec A
    JR NZ, delay_13ms
    ld C, 6
button_rst:
    LD A, 0x13
    OUT (0x00), A
    ld A, 0x33
    OUT (0x00), A
    ld A, 0x13
    OUT (0x00), A

    LD A, 0x10
    OUT (0x00), A
    ld A, 0x30
    OUT (0x00), A
    ld A, 0x10
    OUT (0x00), A

    

delay_95ms: ; delay 1ms
    LD B, 153
delay_95loop:
    DJNZ delay_95loop

    dec C
    JR NZ, button_rst
  
loop:
    IN A, (0x01)
    BIT 0, A
    JR Z, end

    LD A, 0x0C
    OUT (0x00), A
    ld A, 0x2C
    OUT (0x00), A
    ld A, 0x0C
    OUT (0x00), A

    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 5
delay_18ms: ; delay 1ms
    LD B, 153
delay_18loop:
    DJNZ delay_18loop
    dec A
    JR NZ, delay_18ms

    LD A, 0x13
    OUT (0x00), A
    ld A, 0x33
    OUT (0x00), A
    ld A, 0x13
    OUT (0x00), A

    LD A, 0x11
    OUT (0x00), A
    ld A, 0x31
    OUT (0x00), A
    ld A, 0x11
    OUT (0x00), A
delay_97ms: ; delay 1ms
    LD B, 153
delay_97loop:
    DJNZ delay_97loop
    JP loop

    
end:
    LD A, 0x0C
    OUT (0x00), A
    ld A, 0x2C
    OUT (0x00), A
    ld A, 0x0C
    OUT (0x00), A

    LD A, 0x00
    OUT (0x00), A
    ld A, 0x20
    OUT (0x00), A
    ld A, 0x00
    OUT (0x00), A

    LD A, 5
delay_19ms: ; delay 1ms
    LD B, 153
delay_19loop:
    DJNZ delay_19loop
    dec A
    JR NZ, delay_19ms

    LD A, 0x13
    OUT (0x00), A
    ld A, 0x33
    OUT (0x00), A
    ld A, 0x13
    OUT (0x00), A

    LD A, 0x10
    OUT (0x00), A
    ld A, 0x30
    OUT (0x00), A
    ld A, 0x10
    OUT (0x00), A
delay_99ms: ; delay 1ms
    LD B, 153
delay_99loop:
    DJNZ delay_99loop



    JP loop



; pause
