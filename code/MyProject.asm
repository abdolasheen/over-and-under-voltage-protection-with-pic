
_key_clicked:

;MyProject.c,16 :: 		int key_clicked(){
;MyProject.c,18 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;MyProject.c,19 :: 		do{
L_key_clicked0:
;MyProject.c,20 :: 		kp =  keypad_key_press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      key_clicked_kp_L0+0
	CLRF       key_clicked_kp_L0+1
;MyProject.c,23 :: 		switch (kp){
	GOTO       L_key_clicked3
;MyProject.c,24 :: 		case 1:
L_key_clicked5:
;MyProject.c,25 :: 		kp = 7;
	MOVLW      7
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,26 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,27 :: 		case 2:
L_key_clicked6:
;MyProject.c,28 :: 		kp = 8;
	MOVLW      8
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,29 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,30 :: 		case 3:
L_key_clicked7:
;MyProject.c,31 :: 		kp = 9;
	MOVLW      9
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,32 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,33 :: 		case 5:
L_key_clicked8:
;MyProject.c,34 :: 		kp = 4;
	MOVLW      4
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,35 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,36 :: 		case 6:
L_key_clicked9:
;MyProject.c,37 :: 		kp = 5;
	MOVLW      5
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,38 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,39 :: 		case 7:
L_key_clicked10:
;MyProject.c,40 :: 		kp = 6;
	MOVLW      6
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,41 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,42 :: 		case 9:
L_key_clicked11:
;MyProject.c,43 :: 		kp = 1;
	MOVLW      1
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,44 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,45 :: 		case 10:
L_key_clicked12:
;MyProject.c,46 :: 		kp =2;
	MOVLW      2
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,47 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,48 :: 		case 11:
L_key_clicked13:
;MyProject.c,49 :: 		kp = 3;
	MOVLW      3
	MOVWF      key_clicked_kp_L0+0
	MOVLW      0
	MOVWF      key_clicked_kp_L0+1
;MyProject.c,50 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,51 :: 		case 14:
L_key_clicked14:
;MyProject.c,52 :: 		kp = 0;
	CLRF       key_clicked_kp_L0+0
	CLRF       key_clicked_kp_L0+1
;MyProject.c,53 :: 		break;
	GOTO       L_key_clicked4
;MyProject.c,55 :: 		}
L_key_clicked3:
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked28
	MOVLW      1
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked28:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked5
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked29
	MOVLW      2
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked29:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked6
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked30
	MOVLW      3
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked30:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked7
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked31
	MOVLW      5
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked31:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked8
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked32
	MOVLW      6
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked32:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked9
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked33
	MOVLW      7
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked33:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked10
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked34
	MOVLW      9
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked34:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked11
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked35
	MOVLW      10
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked35:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked12
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked36
	MOVLW      11
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked36:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked13
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked37
	MOVLW      14
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked37:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked14
L_key_clicked4:
;MyProject.c,56 :: 		}while(kp==0);
	MOVLW      0
	XORWF      key_clicked_kp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__key_clicked38
	MOVLW      0
	XORWF      key_clicked_kp_L0+0, 0
L__key_clicked38:
	BTFSC      STATUS+0, 2
	GOTO       L_key_clicked0
;MyProject.c,58 :: 		return kp;
	MOVF       key_clicked_kp_L0+0, 0
	MOVWF      R0+0
	MOVF       key_clicked_kp_L0+1, 0
	MOVWF      R0+1
;MyProject.c,61 :: 		}
L_end_key_clicked:
	RETURN
; end of _key_clicked

_adc_value:

;MyProject.c,62 :: 		float adc_value( void ){
;MyProject.c,64 :: 		ADC_Init();
	CALL       _ADC_Init+0
;MyProject.c,65 :: 		digital_value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _Word2Double+0
;MyProject.c,66 :: 		volt=digital_value*5.0/1024.0;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      137
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
;MyProject.c,67 :: 		return volt;
;MyProject.c,68 :: 		}
L_end_adc_value:
	RETURN
; end of _adc_value

_main:

;MyProject.c,70 :: 		void main() {
;MyProject.c,75 :: 		trisc.B0=0;
	BCF        TRISC+0, 0
;MyProject.c,76 :: 		portc.B0=1;
	BSF        PORTC+0, 0
;MyProject.c,77 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,78 :: 		ADC_Init();
	CALL       _ADC_Init+0
;MyProject.c,79 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,80 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,82 :: 		while(1){
L_main15:
;MyProject.c,83 :: 		ad =adc_value();
	CALL       _adc_value+0
	MOVF       R0+0, 0
	MOVWF      main_ad_L0+0
	MOVF       R0+1, 0
	MOVWF      main_ad_L0+1
	MOVF       R0+2, 0
	MOVWF      main_ad_L0+2
	MOVF       R0+3, 0
	MOVWF      main_ad_L0+3
;MyProject.c,84 :: 		Lcd_Out(1,1,"please enter max");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,85 :: 		key_clicked();
	CALL       _key_clicked+0
;MyProject.c,86 :: 		key = key_clicked();
	CALL       _key_clicked+0
;MyProject.c,87 :: 		IntToStr(key , str);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      main_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,88 :: 		ltrim(str);
	MOVLW      main_str_L0+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
;MyProject.c,89 :: 		Lcd_Out(2,8,str);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_str_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,90 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;MyProject.c,91 :: 		max = key_clicked();
	CALL       _key_clicked+0
	MOVF       R0+0, 0
	MOVWF      main_max_L0+0
	MOVF       R0+1, 0
	MOVWF      main_max_L0+1
;MyProject.c,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,93 :: 		Lcd_Out(1,1,"please enter min");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,94 :: 		key_clicked();
	CALL       _key_clicked+0
;MyProject.c,95 :: 		key = key_clicked();
	CALL       _key_clicked+0
;MyProject.c,96 :: 		IntToStr(key , str);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      main_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,97 :: 		ltrim(str);
	MOVLW      main_str_L0+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
;MyProject.c,98 :: 		Lcd_Out(2,8,str);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_str_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,99 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;MyProject.c,100 :: 		min = key_clicked();
	CALL       _key_clicked+0
	MOVF       R0+0, 0
	MOVWF      main_min_L0+0
	MOVF       R0+1, 0
	MOVWF      main_min_L0+1
;MyProject.c,103 :: 		if(ad >= max){
	MOVF       main_max_L0+0, 0
	MOVWF      R0+0
	MOVF       main_max_L0+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       main_ad_L0+0, 0
	MOVWF      R0+0
	MOVF       main_ad_L0+1, 0
	MOVWF      R0+1
	MOVF       main_ad_L0+2, 0
	MOVWF      R0+2
	MOVF       main_ad_L0+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main19
;MyProject.c,104 :: 		portc.b0 =0;
	BCF        PORTC+0, 0
;MyProject.c,105 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,106 :: 		Lcd_Out(1,1,"over voltage");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,107 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
;MyProject.c,109 :: 		}else if (ad <= min){
	GOTO       L_main21
L_main19:
	MOVF       main_min_L0+0, 0
	MOVWF      R0+0
	MOVF       main_min_L0+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       main_ad_L0+0, 0
	MOVWF      R4+0
	MOVF       main_ad_L0+1, 0
	MOVWF      R4+1
	MOVF       main_ad_L0+2, 0
	MOVWF      R4+2
	MOVF       main_ad_L0+3, 0
	MOVWF      R4+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main22
;MyProject.c,110 :: 		portc.b0 =0;
	BCF        PORTC+0, 0
;MyProject.c,111 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,112 :: 		Lcd_Out(1,1,"under voltage");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,113 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;MyProject.c,115 :: 		}else{
	GOTO       L_main24
L_main22:
;MyProject.c,116 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,117 :: 		Lcd_Out(1,1,"normal operation ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,118 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
	NOP
;MyProject.c,119 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,120 :: 		Lcd_Out(1,1,"change the potintometer");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,121 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
;MyProject.c,123 :: 		};
L_main24:
L_main21:
;MyProject.c,134 :: 		}
	GOTO       L_main15
;MyProject.c,139 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
