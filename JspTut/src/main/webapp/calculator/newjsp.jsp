<%-- 
    Document   : newjsp
    Created on : Jan 24, 2016, 1:44:42 PM
    Author     : Chase
--%>

<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.stream.IntStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <jsp:scriptlet>
                List<Integer> list = new ArrayList();
                IntStream natural = IntStream.iterate(0, i -> i+1);
                list = natural.limit(10).boxed().collect(Collectors.toList());
                int[][] array = new int[3][3];
                for(int i = 1; i < 3; i++){
                    for(int j = 0; j < 3; j++){
                        array[i][j] = list.iterator().next();
                    }
                }
                
            </jsp:scriptlet>

    </body>
</html>
