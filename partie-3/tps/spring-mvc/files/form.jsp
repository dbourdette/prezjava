<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
        <link rel="stylesheet" href="/css/style.css" type="text/css" media="screen" charset="utf-8">
   </head>
   <body>
           <div id="header">
               <span class="title"><a href="/">Mon blog</a></span>
           </div>

           <div id="form">
               <form:form commandName="post" action="/admin/post" method="post">
                   <p>
                       date
                       <form:errors path="date" />
                   </p>
                   <p><form:input path="date" /></p>
                   <p>
                       titre
                       <form:errors path="title" />
                   </p>
                   <p><form:input path="title" size="100" /></p>
                   <p>
                       slug
                       <form:errors path="slug" />
                   </p>
                   <p><form:input path="slug" size="100" /></p>
                   <p>
                       tags
                       <form:errors path="tags" />
                   </p>
                   <p><form:input path="tags" size="40" /></p>
                   <p>
                       texte
                       <form:errors path="text" />
                   </p>
                   <p><form:textarea path="text" cols="80" rows="10" /></p>
                   <input type="submit" />
               </form:form>
           </div>

           <div id="right">
               <div class="tagcloud">
                   <span class="title">Les tags</span>
                   <ul>
                       <li>tag 1</li>
                       <li>tag 2</li>
                   </ul>
               </div>

               <div class="latest">
                   <span class="title">Les billets récents</span>
                   <ul>
                       <li>Un post</li>
                       <li>Un post</li>
                   </ul>
               </div>
           </div>
   </body>
</html>