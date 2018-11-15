<%--
  Created by IntelliJ IDEA.
  User: Aim-Trick
  Date: 2018/11/13
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">课程名称</label>
        <input type="text" class="form-control" id="exampleInputEmail1" name="name">
    </div>
    <div class="form-group">
        <label for="overview">课程简介</label>
        <textarea name="overview" cols="30" rows="10" class="form-control" id="overview"></textarea>
    </div>
    <div class="form-group">
        <%--课程目录--%>
        <%--<label for="">课程目录</label>--%>

    </div>
    <div class="form-group">
        <label for="type">课程分类</label>
        <%--选框--%>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" name="type" id="type">
                请选择类别
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li>
                    <a href="#">计算机</a>
                </li>
                <li>
                    <a href="#">财经</a>
                </li>
                <li>
                    <a href="#">心理学</a>
                </li>
                <li>
                    <a href="#">外语</a>
                </li>
                <li>
                    <a href="#">文学</a>
                </li>
                <li>
                    <a href="#">设计</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="form-group">
        <%--课程图片--%>
        <label for="imageview">上传课件海报</label>
        <input type="file" id="imageview" name="imageview">
    </div>
    <div class="checkbox">
        <%--服务条款--%>
        <label>
            <input type="checkbox"> 我已阅读并接受<a href="#">使用条约</a>
        </label>
    </div>
    <button type="submit" class="btn btn-default" name="submit-btn" id="submit-btn">创建课程</button>
</form>