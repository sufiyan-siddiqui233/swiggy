class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick your food from our menu \n',
      image: 'images/s1.jpg',
      title: 'select from Our\n    Best Menu'),
  UnboardingContent(
      description:
          'You can Pay cash on Delivery and \n Card Payment is also available',
      image: 'images/easypayment.png',
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description: 'Deliver your food at your\n doorstep',
      image: 'images/delivery.jpeg',
      title: 'Quick delivery')
];
