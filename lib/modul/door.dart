class Door{
  late double height;
  
  late double width;
  //
  late double heightInsude;
  //
  late double widthtInsude;
  //
  late double kab;
    
 
  Door({required double height,required double width}){
    this.height=height+4;
    this.width=width+7;
    this.heightInsude=height-2.5;
    this.widthtInsude=width-3.6;
    this.kab=width-10.5;
  }
//
  double AccountGlass(){
 return ((width -14.6 ) *(heightInsude - 142))*0.01 ;
  }
   double AccountJoin(){
 return (heightInsude*4) +(kab*12)*0.01 ;
  }
    double AccountFrashe(){
 return (width*2) +(height*4)*0.01 ;
  }
  double AccountFeaber(){
 return ((width -14.6 ) *(65)*2)*0.01;
  }
   double accountWidth(){
    double total;
    total= ((width+(height*2))*416)*0.01+
   (((widthtInsude*2)+(heightInsude*2))*583)*0.01  
   +(kab*2*530)*0.01;
    return( total);
  }
}