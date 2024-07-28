class WindowBig{
  late double height;
  
  late double width;
  //
  late double msce;
  //
  late double shancl;
  //
  late double kab;
//
  late double mngl_width;
  //
  late double mngl_height;
  
 WindowBig({
  required double height,
  required double width,
 }){
  this.height=height+7;
  this.width=width+7;
  this.kab=((width-20.4)/2);
  this.msce=height-4;
  this.shancl=height-4;
  this.mngl_height=height-4;
  this.mngl_width=(((width-20.4)/2) +12) ;

 }
  double AccountMngl(){
 return mngl_width *mngl_height*0.01 ;
  }
   double AccountGlass(){
 return ((kab +1.5 ) *(msce - 10.3))*2*0.01 ;
  }
   double AccountJoin(){
 return ((kab*8) *(msce*8))*2*0.01;
  }
    double AccountFrashe(){
 return (width*8) +(height*8)*0.01 ;
  }
  double accountWidth(){
    double total;
    total= (width*720)*0.01+(((height*2)+width)*584)*0.01+
    (((kab*4)+(shancl*2))*530)*0.01+(msce*2*465)*0.01+
    (((mngl_height*2)+(mngl_width*2))*250)*0.01;
    return( total);
  }
  
}
