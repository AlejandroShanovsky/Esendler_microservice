<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Home</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#fff" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/12.3.1/classic/ckeditor.js"></script>
</head>
<body>
<style>
    .header {
        position: fixed;
        top: 0;
        left: 140px;
        width: calc(100vw - 140px);
        display: flex;
        background-color: #34383c;
    }

    .header__container {
        height: 60px;
        width: 100%;
        display: flex;
        justify-content: flex-end;
        align-items: center;
    }

    .header-main-container {
        width: 100%;
        height: 60px;
        background-color: #34383c;
        display: flex;
    }

    .header-logo {
        height: 60px;
        width: 8%;
        background-color: #1e2226;
        display: flex;
    }

    .logo-img {
        margin: auto;
    }

    .menu-container {
        width: 90%;
    }

    .search {
        width: 200px;
    }

    .search .form-group {
        margin-bottom: 0 !important;
    }

    .search input {
        background-color: #4B5056;
        border: 1px solid #4b5056 !important;
        border-radius: 4px;
        color: #f2f2f2;
        transition: all 300ms;
    }

    .search input:hover, .search input:focus {
        background-color: #1e2226;
        border: 1px solid #1e2226 !important;
        color: #f2f2f2;
    }

    .search-btn {
        margin-top: 7px;
        position: absolute;
        top: 0;
        right: 0px;
        width: 42px;
        height: 42px;
        border: none;
        background: #91c46b;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
    }

    .search-btn:before {
        font-family: FontAwesome;
        font-size: 16px;
        color: #F9F0DA;
    }

    .profile {
        display: flex;
        align-items: center;
        color: #f7f7f7;
        margin-left: 15px;
        background-color: #1e2226;
        height: 100%;
        padding: 0 15px;
        transition: all 300ms;
    }

    .profile:hover {
        cursor: pointer;
        opacity: 0.9;
    }

    .profile i {
        color: #f7f7f7;
        margin-left: 10px;
    }

    .navigation {
        display: flex;
        flex-direction: column;
        width: 140px;
        height: 100vh;
        background-color: #91c46b;
        position: fixed;
        left: 0;
        top: 0;
    }

    .logo {
        width: 100%;
        height: 60px;
        padding: 5px;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #1e2226;
    }

    .logo__icon {
        display: block;
        width: 100%;
        height: auto;
        max-height: 50px;
        object-fit: contain;
    }

    .menu {
        display: flex;
        flex-direction: column;
        list-style: none;
        width: 100%;
        padding: 0;
    }

    .menu__item {
        color: #34383c;
        width: 100%;
    }

    .menu__item-link {
        width: 100%;
        display: flex;
        padding: 0 10px;
        height: 40px;
        color: #34383c;
        line-height: 40px;
        text-align: center;
        text-decoration: none;
        transition: all 300ms;
    }

    .menu__item-link:hover {
        background-color: #34383c;
        color: #f7f7f7;
        text-decoration: none;
    }

    .menu__item-link.active {
        position: relative;
    }

    .menu__item-link.active:before {
        content: "";
        width: 0px;
        height: 0px;
        border-style: solid;
        border-width: 7px 8px 7px 0;
        border-color: transparent #f2f2f2 transparent transparent;
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        margin: auto 0;
    }

    .content {
        margin-left: 140px;
        margin-top: 60px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        overflow-x: hidden;
        overflow-y: auto;
        padding: 15px;
        width: calc(100vw - 140px);
        height: calc(100vh - 60px);
        background-color: #f2f2f2;
    }

    .content .content__title {
        padding: 0 15px;
        margin-bottom: 30px;
        display: flex;
        width: 100%;
        align-items: center;
        color: #34383c;
    }

    .content .content__row {
        display: flex;
        margin: 0 -15px;
        margin-bottom: 50px;
        flex-wrap: wrap;
    }

    .content .content__item {
        min-width: 300px;
        padding: 15px;
    }

    .has-search .form-control {
        padding-left: 2.375rem;
    }

    .has-search .form-control-feedback {
        position: absolute;
        z-index: 2;
        display: block;
        width: 2.375rem;
        height: 2.375rem;
        line-height: 2.375rem;
        text-align: center;
        pointer-events: none;
        color: #aaa;
    }

    .iframe {
        position: absolute;
        top: 0;
    }

    .form-control {
        box-shadow: none !important;
    }

    .mail-target {
        padding: 5px 30px 5px 15px;
        border-radius: 4px;
        border: 1px solid #34383c;
        margin: 40px 0;
        width: 100%;
        background-color: #FFF;
    }

    .mail-editor {
        width: 100%;
    }

    .ck-reset {
        width: 100% !important;
    }

    .ck-editor__editable_inline {
        min-height: 400px;
    }
</style>
<!-- BEGIN content -->
<div class="header">
    <div class="header__container">
        <div class="search">
            <div class="form-group has-search">
                <span class="fa fa-search form-control-feedback"></span>
                <input type="text" class="form-control" placeholder="Поиск...">
            </div>
        </div>
        <div class="profile"> User Name <i class="fas fa-sign-out-alt"></i>
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
    <button type="button" class="btn btn-success">Отправить</button>
    <input class="mail-target" type="text" value="" data-role="tagsinput" />
    <textarea class="mail-editor" name="content" id="editor"></textarea>
    <script>
        ClassicEditor.create(document.querySelector('#editor')).catch(error =>
        {
            console.error(error);
        });

    </script>
    <div class="content__row">
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
<!-- END content -->
<!-- BEGIN scripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<%--<script type="text/javascript" src="js/app.js"></script>--%>
<!-- END scripts -->
</body>
</html>