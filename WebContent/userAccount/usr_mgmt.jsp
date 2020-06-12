<%@page pageEncoding="UTF-8" %>
<%@include file="../layout/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="container">
        <div class="d-flex row justify-content-center mt-5">
            <div class="d-flex ml-2 ">
                <form class="form-inline" action="UserSearch.action">
                  <div class="dropdown">
                    <select name="disp1" class="form-control" id="exampleFormControlSelect1">
                      <option value=1>会員</option>
                      <option value=2>職員</option>
                      <option value=3>超過ユーザー</option>
                    </select>
                </div>
                <div class="dropdown ml-2">
                  <select name="disp2" class="form-control" id="exampleFormControlSelect1">
                    <option value=1>会員名</option>
                    <option value=2>書籍名</option>
                    <option value=3>登録日</option>
                  </select>
              　</div>
                    <input name="keyword" style="width:40vw; height:40px; border:1px solid green" class="form-control mr-sm-2" type="text" placeholder="書籍の検索" id="datepicker" >
                    <button type="submit" class="btn btn-primary ml-2">検索</button>
                </form>
            </div>
            <div>
                <button class="btn btn-dark ml-2" data-toggle="modal" data-target="#employee">職員登録</button>
            </div>
            <div>
                <script>
                    $('#datepicker').datepicker({
                        uiLibrary: 'bootstrap4'
                    });
                </script>
            </div>
        </div>
        <div class="table mt-5">
            <table class="table table-bordered table-hover">
                <thead>
                  <tr>
                    <th>会員登録日</th>
                    <th>会員ID</th>
                    <th>氏名</th>
                    <th>生年月日</th>
                    <th>メール</th>
                    <th>電話番号</th>
                    <th>パスワード</th>
                    <th>会員状況</th>
                    <th>権限</th>
                    <th>性別</th>
                    <th>住所</th>
                    <th>メニュー</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${list}">
                  <tr>
                    <td>${usr.user_created}</td>
                    <td>${usr.user_id}</td>
                    <td>${usr.user_name}</td>
                    <td>${usr.user_birth}</td>
                    <td>${usr.user_mail}</td>
                    <td>${usr.user_tel}</td>
                    <td>${usr.user_pass}</td>
                    <td>${usr.valid_user}</td>
                    <td>${usr.user_auth}</td>
                    <td>${usr.sex}</td>
                    <td>${usr.address}</td>
                    <td>
                      <button class="btn btn-success"><i class="fas fa-edit" data-toggle="modal" data-target="#employee_edit"></i></button>
                      <button onclick="window.alert('削除されました');" class="btn btn-danger ml-2"><i class="fas fa-trash"></i></button>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
        </div>
        <!-- 職員登録 -->
        <div class="modal fade" id="employee">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title font-weight-bold">職員登録</h4>
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
                            <button type="submit" class="btn btn-primary btn-sm">登録</button>
                        </div>
                    </form>
                </div>
              </div>
            </div>
        </div>
        <!-- 管理者の情報変更 -->
        <div class="modal fade" id="employee_edit">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title font-weight-bold">ユーザー情報変更</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="/action_page.php">
                        <div class="form-group">
                          <label>ユーザー名:</label>
                          <input type="text" class="form-control" id="userid" placeholder="会員IDを入力してください" name="userid">
                        </div>
                        <div class="form-group">
                          <label>パスワード:</label>
                          <input type="password" class="form-control" id="pwd" placeholder="パスワードを入力してください" name="pswd">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm">更新</button>
                      </form>
                </div>
              </div>
            </div>
          </div>

    </div>
<%@include file="../layout/footer.jsp" %>
