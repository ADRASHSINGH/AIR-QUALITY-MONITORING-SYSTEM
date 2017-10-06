int x; //  declaring a variable


void setup() {
  // put your setup code here, to run once:
   
   
   pinMode(A0,INPUT);   //taking input of gas sensor on A0 pin
   
   Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
           
    x=analogRead(A0);  // reading input which appears on pin A0
    Serial.println(x); //printing value of sensor on serial monitor
    delay(2000);        // delay of 2 mili second
}
  
  
