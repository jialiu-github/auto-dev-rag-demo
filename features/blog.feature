Feature: 新建博客
  作为一位博客作者
  我想在InnoRev网站上新建博客
  以便于我可以发布我的文章

  Scenario: 新建博客成功
    Given 用户已经登录，并且填写了正确的博客信息
    When 用户点击“新建博客”按钮
    Then 系统创建一个新的博客，并返回博客的id

  Scenario: 博客标题过长
    Given 用户已经登录，并且填写了超过50个字符的博客标题
    When 用户点击“新建博客”按钮
    Then 系统返回“博客标题过长”的错误信息

  Scenario: 博客正文为空
    Given 用户已经登录，并且没有填写博客正文
    When 用户点击“新建博客”按钮
    Then 系统返回“博客正文不能为空”的错误信息

  Scenario: 系统错误
    Given 系统发生错误
    When 用户点击“新建博客”按钮
    Then 系统返回“系统错误，请稍后再试”的错误信息