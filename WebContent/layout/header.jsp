<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500&display=swap" rel="stylesheet">
  <script src="jquery-3.5.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
  <title>LibraryManagementSystem
  </title>
    <style>
        body{
            font-family: 'Noto Serif JP', sans-serif;
            overflow: hidden;

        }
        .center{
            position: absolute;
            left:50%;
            top:50%;
            transform:translate(-50%,-50%);
        }

    </style>
</head>

<body>
    <div id="body" class="row justify-content-between nav-bar pt-3 text-light bg-dark">
        <div></div>
        <div>
            <h2 class="text-center ml-5">福岡市立凸凹図書館</h2>
        </div>
        <div class="row align-items-end mr-4">
            <p class="btn btn-primary mr-2" data-toggle="modal" data-target="#myModal">ログイン</p>
            <p class="btn btn-success" data-toggle="modal" data-target="#myModal1">新規登録</p>
        </div>
    </div>

    <!-- ログインモデル -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title font-weight-bold">ログイン</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form action="/action_page.php">
                    <div class="form-group">
                      <label>ユーザーID:</label>
                      <input type="text" class="form-control" id="userid" placeholder="会員IDを入力してください" name="userid">
                    </div>
                    <div class="form-group">
                      <label>パスワード:</label>
                      <input type="password" class="form-control" id="pwd" placeholder="パスワードを入力してください" name="pswd">
                    </div>
                    <div class="form-group form-check">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> Remember me
                      </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm">ログイン</button>
                  </form>
            </div>
          </div>
        </div>
      </div>
      <!-- 新規登録モデル -->
      <div class="modal fade" id="myModal1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title font-weight-bold">新規登録</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form action="/action_page.php">
                    <div class="d-inline-flex">
                        <div class="form-group float">
                            <label>会員名:</label>
                            <input type="text" class="form-control" id="email" placeholder="名前を入力してください" name="name">
                        </div>
                        <div class="form-group ml-2">
                            <label>メール:</label>
                            <input type="text" class="form-control" id="pwd" placeholder="メールを入力してください" name="mail">
                        </div>
                    </div>
                    <div class="d-inline-flex">
                        <div class="form-group">
                            <label>電話番号:</label>
                            <input type="text" class="form-control" id="email" placeholder="電話番号を入力してください" name="tel">
                        </div>
                        <div class="form-group ml-2">
                            <label>住所:</label>
                            <input type="text" class="form-control" id="pwd" placeholder="住所を入力してください" name="address">
                        </div>
                    </div>
                    <div class="d-inline-flex">
                        <div class="form-group">
                            <label>生年月日:</label>
                            <input type="dob" class="form-control" id="email" placeholder="生年月日を入力してください" name="dob">
                        </div>
                        <div class="form-group ml-2">
                            <label>パスワード:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="パスワードを入力してください" name="pswd">
                        </div>
                    </div>
                    <div class="d-inline-flex">
                        <div class="form-check-inline">
                            <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="male">男性
                            </label>
                        </div>
                        <div class="form-check-inline ml-2">
                            <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="female">女性
                            </label>
                        </div>
                    </div>
                    <div class="mt-2">
                        <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                    </div>
                </form>
            </div>
          </div>
        </div>
      </div>
