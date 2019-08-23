<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Home</title>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=Edge" />--%>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#fff" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
    <link rel="stylesheet" href="/css/main_service.css"<%-- type="text/css"--%>>
    <script src="https://cdn.ckeditor.com/ckeditor5/12.3.1/classic/ckeditor.js"></script>
    <%--<link href="/css/main.css" rel="stylesheet">--%>
</head>
<body>
<div class="header">
    <div class="header__container">
        <div class="search">
            <div class="form-group has-search">
                <span class="fa fa-search form-control-feedback"></span>
                <input type="text" class="form-control" placeholder="Поиск...">
            </div>
        </div>
        <%--<div class="profile"> User Name <i class="fas fa-sign-out-alt"></i>--%>
        <div class="profile"> ${user.nickName} <i class="fas fa-sign-out-alt"></i>
        </div>
    </div>
</div>
<div class="navigation">
    <div class="logo">
        <img class="logo__icon" src="/image/logo.png">
    </div>
    <ul class="menu">
        <li class="menu__item"><a href="#" class="menu__item-link active">Написать</a> </li>
        <li class="menu__item"><a href="#" class="menu__item-link">Отправленные</a> </li>
        <li class="menu__item"><a href="#" class="menu__item-link">Шаблоны</a> </li>
        <%--<li class="menu__item"><a href="#" class="menu__item-link">Якорь 4</a> </li>--%>
    </ul>
</div>
<div class="content">
    <form:form action="/admin/cabinet/send_mail" modelAttribute="emailReq" enctype="multipart/form-data">
    <button type="submit" class="btn btn-success">Отправить</button>
    <input name="recipient" class="mail-target" type="text" value="" data-role="tagsinput" />
    <textarea name="content" class="mail-editor" id="editor"></textarea>
    <script>
        ClassicEditor.create(document.querySelector('#editor')).catch(function (error){
            console.error(error);
        });

    </script>
    </form:form>
    <div class="content__row">
        <div class="content__item">
            <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                <option selected>Шаблоны...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
        <div class="content__item">
            <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                <option selected>Choose...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
        <div class="content__item">
            <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                <option selected>Choose...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
