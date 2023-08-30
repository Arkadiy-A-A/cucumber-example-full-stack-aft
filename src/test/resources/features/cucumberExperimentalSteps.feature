# language: ru

@all
@authorization
Функция: Авторизация


  Предыстория:
    * открыта страница по адресу "https://ibs.ru/"


  @correct
  @TestIt=47235
  Сценарий: Успешная авторизация - сценарий 1
    * выполнено нажатие на "Авторизоваться"
    * поле "Логин" видимо
    * поле "Логин" заполняется значением "Test"
    * значение поля "Логин" содержит значение "Test"
    * поле "Пароль" видимо
    * поле "Пароль" заполняется значением "Password"
    * значение поля "Пароль" равно "********"
    * выполнено нажатие на "Войти"


  @correct
  Сценарий: Успешная авторизация - сценарий 2
    * выполнено нажатие на "Авторизоваться"
    * следующие поля видимы:
      | field  |
      | Логин  |
      | Пароль |
    * заполняются поля:
      | field  | value    |
      | Логин  | Test     |
      | Пароль | Password |
    * значения полей:
      | field  | operator          | value    |
      | Логин  | содержит значение | Test     |
      | Пароль | равно             | ******** |
    * выполнено нажатие на "Войти"


  @fail
  Структура сценария: Некорректная аутентификация
    * выполнено нажатие на "Авторизоваться"
    * следующие поля видимы:
      | field  |
      | Логин  |
      | Пароль |
    * заполняются поля:
      | field  | value      |
      | Логин  | <login>    |
      | Пароль | <password> |
    * значения полей:
      | field  | operator          | value     |
      | Логин  | содержит значение | Test      |
      | Пароль | равно             | ********* |
    * выполнено нажатие на "Войти"
    * элемент "<result>" присутствует

    Примеры:
      | login | password  | result                          |
      | Test2 | Password2 | Не удалось авторизоваться       |
      | Test3 | Password3 | Пользователь заблокорован       |
      | Test4 | Password4 | Несуществующий логин или пароль |