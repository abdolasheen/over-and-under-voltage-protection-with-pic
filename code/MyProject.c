//lcd intialize
sbit LCD_RS at RD2_bit; 
sbit LCD_EN at RD3_bit; 
sbit LCD_D4 at RD4_bit; 
sbit LCD_D5 at RD5_bit; 
sbit LCD_D6 at RD6_bit; 
sbit LCD_D7 at RD7_bit;
sbit LCD_RS_Direction at TRISD2_bit; 
sbit LCD_EN_Direction at TRISD3_bit; 
sbit LCD_D4_Direction at TRISD4_bit; 
sbit LCD_D5_Direction at TRISD5_bit; 
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;
//keypad initialize
char keypadPort at PORTB;
//first function to return the pressed key as an int
int key_clicked(){
   int kp ;
    Keypad_Init();
   do{
   kp =  keypad_key_press();


   switch (kp){
     case 1:
        kp = 7;
        break;
     case 2:
        kp = 8;
        break;
     case 3:
        kp = 9;
        break;
     case 5:
        kp = 4;
        break;
     case 6:
        kp = 5;
        break;
     case 7:
        kp = 6;
        break;
     case 9:
        kp = 1;
        break;
     case 10:
        kp =2;
        break;
     case 11:
        kp = 3;
        break;
     case 14:
        kp = 0;
        break;

   }
     }while(kp==0); //to keep checking if there is no key cliked

   return kp;


   }
//seconed function to convert the analog value to digital and return it as float analog volt value
float adc_value( void ){
 float digital_value ,volt;
 ADC_Init();
 digital_value = ADC_Read(0);
 volt=digital_value*5.0/1024.0;
 return volt;
}

void main() {
        int key;
        float ad;
        int max,min;
        char str[10];
        trisc.B0=0;// output port connected with test led
        portc.B0=1;
        Lcd_Init(); 
        ADC_Init();
        Lcd_Cmd(_LCD_CURSOR_OFF);
        Lcd_Cmd(_LCD_CLEAR);

while(1){
       ad =adc_value();// return the anlog potintometer value in a variale ad :)
       Lcd_Out(1,1,"please enter max");
       key_clicked();
       key = key_clicked();
       IntToStr(key , str);//to display  it on keypad
       ltrim(str);
       Lcd_Out(2,8,str);
       delay_ms(1000);//wait until i can see what i have written
       max = key_clicked();
       Lcd_Cmd(_LCD_CLEAR);
       Lcd_Out(1,1,"please enter min");
       key_clicked();
       key = key_clicked();
       IntToStr(key , str);
       ltrim(str);
       Lcd_Out(2,8,str);
       delay_ms(1000);
       min = key_clicked();


       if(ad >= max){
          portc.b0 =0;
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out(1,1,"over voltage");
          delay_ms(2000);

       }else if (ad <= min){
         portc.b0 =0;
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1,1,"under voltage");
         delay_ms(1000);

       }else{
         Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out(1,1,"normal operation ");
          delay_ms(1000);
          Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1,1,"change the potintometer");
         delay_ms(2000);

       };
 /*note
 i know this app have some bugs and this is your mission to take alook  at the code and try to fix the error cauz i am done with it :(
 */
       

}

}