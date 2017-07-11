<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加客户</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>

</head>
<script type="text/javascript">
    function validatePhone() {
        alert("校验手机号码");
    }
</script>
<body>
<h3 align="center">添加客户</h3>
<form action="${pageContext.request.contextPath}/customer/save" method="post" >
    <table align="center" width="40%">
        <tr>
            <td><strong>客户名称</strong></td>
            <td>
                <input type="text" name="name"/>
            </td>
            <td align="left">
                <label id="nameError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td><strong>客户性别</strong></td>
            <td>
                <input type="radio" name="sex" value="male" id="male" checked="checked"/>
                <label for="male">男</label>
                <input type="radio" name="sex" value="female" id="female"/>
                <label for="female">女</label>
            </td>
            <td>
                <label id="genderError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td><strong>手机</strong></td>
            <td>
                <input type="text" name="phone" id="phone" onblur="validatePhone()"/>
            </td>
            <td>
                <label id="phoneError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td><strong>邮箱</strong></td>
            <td>
                <input type="text" name="email" id="email"/>
            </td>
            <td>
                <label id="emailError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td><strong>备注</strong></td>
            <td>
                <textarea rows="5" cols="30" name="memo"></textarea>
            </td>
            <td>
                <label id="memoError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input style="padding: 20px" type="submit" name="submit"/>
                <input style="padding: 20px" type="reset" name="reset"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
