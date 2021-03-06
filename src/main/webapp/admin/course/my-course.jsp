<%@ page import="persistent.pojo.course.Course" %>
<%@ page import="persistent.pojo.user.User" %>
<%@ page import="service.course.CourseService" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Aim-Trick
  Date: 2018/11/13
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="template-inner">
    <h1 class="page-header">我的课程</h1>


    <div class="row" id="courseGallery">

        <%
            CourseService cs = new CourseService();
            User user = (User) session.getAttribute("CNC");
            List<Course> list = cs.searchCourses((int) user.getId(), 1);
            for (Course c : list) {
                out.print("<div class='col-xs-6 col-sm-3'>");
                out.print("<a herf=''><img src='data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw'\n" +
                        "width='200' height='200' alt=''></a>");
                out.print("<h4>" + c.getName() + "</h4>");
                out.print("<span class='text-muted'>" + c.getStatus() + "</span>");
                out.print("</div>");
            }
        %>

    </div>

    <nav aria-label="Page navigation">
        <ul class="pagination center-block clearfix">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</form>
<script>

</script>
