/**
 * Test file for defining LScript syntax grammar.
 * Johan Steen, http://www.artstorm.net/
 */


// -----------------------------------------------------------------------------
// Comment
// -----------------------------------------------------------------------------
/*
	This is a block comment
*/
// This is a line comment
variable = "something";			// This is a end of the line comment


// -----------------------------------------------------------------------------
// Constant
// -----------------------------------------------------------------------------
// Numeric Constants
10
1.2
-20
100, 200,300
.5
100.500
10*10
<1.0, 2, 3.2>
// Language Constants. nil should always be lowercase.
true TRUE
false FALSE
nil


// -----------------------------------------------------------------------------
// String
// -----------------------------------------------------------------------------
// Double quoted String
str = "Hello";
// String with regular expression
str = regexp("/(\w+)/");
// Character representations
"Let's put a tab \t and a newline \n in a string."
// Character Escapes
"This is \"something\" we are escaping"

// -----------------------------------------------------------------------------
// Entity
// -----------------------------------------------------------------------------
// functions
myfunction 
{
}
my_function_2
{}
My_Function   
{
}
new_function: mupp, muppets
{
	local_mupp = mupp + mupp;
	return false;
}
function {
}
function: hey, yey {
}
my_function();
new_function("mupp", le_mupp);
new_function ("mupp", le_mupp);

// -----------------------------------------------------------------------------
// Invalid
// -----------------------------------------------------------------------------
// Invalid variable
3mupp;
// Invalid function
3mupp
{}


// Keyword
// -----------------------------------------------------------------------------

// Flow Control keywords
if(true==true){
}else{}
if(variable != variable || mupp < variable && variable >= mupp) {}
switch(something) {
	case "1":
		break;
	default:
}
for(i=0;i<10;i++) {}
foreach(x,a)
while(!true){
	continue;
}
isittrue= test ? true_result : false_result;
f = File(file,"r") || error("Cannot open file '",file,"'");

// Textual and character operators
+%*/-
! != == <> <= =>
+=
|| &&

// Meta
// -----------------------------------------------------------------------------


// Storage
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// Support
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------
// Variable
// -----------------------------------------------------------------------------
a_variable;
ctlCAMAntialiasing, ctlCAMReconstruction, ctlCAMSamplingPattern;
var ctlVMList, ctlInterpolate;
var tolerance = 0.02;
a_variable = "something";

if (a_variable == true){ info(a_variable); }
a_variable = a_variable + " new";