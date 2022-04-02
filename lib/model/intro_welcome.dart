

class IntroWelcome{
  String ? image;
  String ? title;
  String ? discription;

  IntroWelcome({this.image,this.title,this.discription});

}
List <IntroWelcome> contents = [
  IntroWelcome(

    title: 'For the School',
    image:'assets/images/forschool.png',
    discription: "No more 'where's my school bus' - Reduce inbound calls by automatically sharing real-time bus location and ETAs with parents and alerting them if buses are running late.",

  ),
  IntroWelcome(

    title: 'For the Parents',
    image:'assets/images/forparents.png',
    discription: "Stay calm and connected and securely track your child's bus location with real-time ETAs and automatic notifications.",
  ),
  IntroWelcome(

    title: 'For ticket booking',
    image:'assets/images/forticket.png',
    discription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu velit neque, placerat netus pharetra.',

  )

];