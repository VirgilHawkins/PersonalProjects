<%-- 
    Document   : jspTut
    Created on : Jan 15, 2016, 10:21:36 PM
    Author     : Chase
--%>

<jsp:directive.page import="java.util.Properties" />
<jsp:directive.page import="java.util.TimeZone"/>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<jsp:directive.page autoFlush="true" buffer="2000kb"/>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPTut</title>
    </head>
    <body>
        <h1>Hello World! Lesson 1</h1>
        The time is <%= new java.util.Date()%>
        <h1>Lesson 2</h1>
        <%
            // This is a scriptlet.  Notice that the "date"
            // variable we declare here is available in the
            // embedded expression later on.
            System.out.println("Evaluating date now");
            java.util.Date date = new java.util.Date();
            String tale = "yes that is right";
        %>
        The time is <%= date + " " + tale%>

        <h2>Now using out varible from JSPWriter</h2>
        <p>Hello!  The time is now
            <%
                // This scriptlet generates HTML output
                out.println(String.valueOf(date));
                out.println(String.valueOf("<p>Cool ain't it?!</p>"));
                out.println("<p> My machine's address is");
                out.println(request.getRemoteHost());
                out.println("</p>");
            %></p><h3>Lesson 2 exercise</h3>
        <p>Hello! The time is now <%
            java.util.Date dateToBeFormatted = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("hh:mm a z");
            formatter.setTimeZone(TimeZone.getDefault());
            out.println("<strong>" + formatter.format(dateToBeFormatted) + "</strong>");
            %></p>


        <h1>Lesson 3 - Mixing Scriptlets and HTML Exercise!</h1>
        <TABLE BORDER=2>

            <%
                Properties props = System.getProperties();
                Enumeration e = props.propertyNames();
                while (e.hasMoreElements()) {
                    String key = (String) e.nextElement();
            %>
            <TR>
                <TD><%= key%></TD>
                <TD><%= props.getProperty(key)%></TD>
            </TR>
            <%
                }
            %>
        </TABLE>
        <h1>Lesson 4 - JSP Directives</h1>
        the main page included
        <jsp:directive.include file="index.html" />

        <h1>Lesson 5 - JSP Declarations</h1>
        <%!
            Date theDate = new Date();
            HashSet set = new HashSet();

            String getDate() {
            Date dateToBeFormatted = new Date();
            set.add(dateToBeFormatted);
            SimpleDateFormat formatter = new SimpleDateFormat("hh:mm:ss a z");
            formatter.setTimeZone(TimeZone.getDefault());
            return formatter.format(dateToBeFormatted);
            }
        %>
        Hello!  The time is now <strong><%= getDate()%></strong>
        
      <h1>Lesson 6 - JSP Tags</h1>
      <jsp:forward page="testHello.jsp"/>

    </body>
</html>
