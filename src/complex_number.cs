//
// Struct for representing a complex number
//
namespace hooshi
{
    
    public struct Complex_number_s
    {
	//
	// Fields
	//
	private double _imag;
	private double _real;

	//
	// Queries
	//
	public  double imag{set{_imag=value;} get{return _imag;}}
	public  double real{set{_real=value;} get{return _real;}}
    

	//
	// Constructor
	//    
	public Complex_number_s
	(double real_in,
	 double imag_in)
	    {
		_real=real_in;
		_imag=imag_in;
	    }
    
	//
	// Operations
	//
	public static Complex_number_s multiply
	(Complex_number_s c1,
	 Complex_number_s c2)
	    {
		Complex_number_s ans= new Complex_number_s(0,0);
		ans.real = c1.real*c2.real-c1.imag*c2.imag;
		ans.imag = c1.real*c2.imag-c1.imag*c2.real;
		return ans;
	    }

	public System.String info_string()
	    {
		return System.String.Format("{0}+i{1}",this.real,this.imag);
	    }

	//
	// Operation overload
	//
	public static Complex_number_s operator*
	(Complex_number_s c1,
	 Complex_number_s c2)
	    {
		return multiply(c1,c2);
	    }

	public override System.String ToString()
	    {
		return info_string();
	    }

    }

}
