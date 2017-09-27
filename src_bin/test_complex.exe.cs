//
// Just test complex numbers
//

using System;
using hooshi;


public class Test_complex_c
{
    public static int Main()
	{
	    Complex_number_s a = new Complex_number_s(1,2);
	    Complex_number_s b = new Complex_number_s(1,2);
	    Complex_number_s c = a * b;
	    Console.Write( "({0}) x ({1}) = ({2})\n",a,b,c );

	    return 0;
	}
}

