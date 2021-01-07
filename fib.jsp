<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fibonacci Series</title>

    <style>
        body{
            padding: 20px 30px;
            background-color: rgb(255, 193, 78);
            color: white;
            font-family: Arial, Helvetica, sans-serif;
        }
        h1{
            text-decoration: underline;
        }
        div{
            width: 80%;
            margin-top: 50px;
            padding: 20px;
            border: 2px solid white;
            font-size: 20px;
        }
        button{
            margin-top: 20px;
            background-color: tomato;
            color: white;
            border: none;
            padding: 7px 20px;
            font-size: 15px;
            border-radius: 5px;
        }
    </style>

</head>

<body>
    <center>
    <h1>FIBONACCI SERIES GENERATOR</h1>
    <div>
        <form action="fib.jsp">
            Enter the Limit: <input type="text" name="limit">
            <br>
            <button type="submit">Print</button>
        </form>
    </div>

    <div>
        <%
        int n = Integer.parseInt(request.getParameter("limit"));
        %>
        <h4>The Fibonacci Series upto <%= n %> is:</h4>
        <div 
        style="
        margin-top:10px;
        border:none;
        background-color:tomato;
        border-radius:5px;
        font-size:25px;">
        <%
        int a=0;
        int b=1;
        int c=a+b;
        out.print(c + ", ");
        while(c < n)
        {
             out.print(c + ", ");
             a = b;
             b = c;
             c = a + b;
        }
         %>
         </div>
    </div>
</center>
</body>

</html>