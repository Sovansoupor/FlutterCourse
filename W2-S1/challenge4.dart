class Distance{ 
  final double meters;

  //named constructor to create meters from diff units 
  Distance.m(double _meters) : meters = _meters;

  Distance.cms(double centimeter) : meters = centimeter/100;

  Distance.kms(double kilometer) : meters = kilometer*1000;

  //getter to retrieve distance in diff units 
  double get kms => meters / 1000;
  double get m => meters;
  double get cms => meters * 100;

  //operator overloading
  Distance operator + (Distance other ){
    return Distance.m(this.meters + other.meters);
  }
}

void main()
{
  Distance d1 = Distance.m(1000);
  Distance d2 = Distance.kms(3.4);

  Distance result = d1 + d2;

  print(result.kms);
}