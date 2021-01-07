<%
String s=request.getParameter("n1");
String rev=new StringBuilder(s).reverse().toString();
if(s.equals(rev))
{
out.println("Palindrome");
}
else
{
	out.println("Not");
}
%>




