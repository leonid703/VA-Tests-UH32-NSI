﻿#language: ru

@tree

Функционал: 01. Инициализация системы

Как Аналитик я хочу
наполнить базу НСИ
чтобы использовать её в сценарных тестах

Сценарий: 01.01 Создание пользователя системы [Администратор]

	И я подключаю TestClient "УХ - НСИ" логин "" пароль "" 

	* Создаем пользователя с правами Администратор
	
		* Создаем пользователя 
		
			И В командном интерфейсе я выбираю 'Администрирование' 'Настройки пользователей и прав'
			Тогда открылось окно 'Настройки пользователей и прав'
			И я нажимаю на кнопку 'Пользователи'
			Тогда открылось окно 'Пользователи'
			И я нажимаю на кнопку с именем 'СоздатьПользователя'
			Тогда открылось окно 'Пользователь (создание)'
			И в поле 'Полное имя' я ввожу текст 'Администратор'
		
		* Создаем физическое лицо	
			
			И я нажимаю кнопку выбора у поля "Физическое лицо"
			Тогда открылось окно 'Физические лица'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Физическое лицо (создание)'
			И в поле с именем 'ФИО' я ввожу текст 'Старк Бран'
			И я перехожу к следующему реквизиту
			И в поле с именем 'ФизлицоДатаРождения' я ввожу текст '01.01.2000'
			И я перехожу к следующему реквизиту
			И из выпадающего списка с именем "ФизлицоПол" я выбираю точное значение 'Мужской'
			И я перехожу к следующему реквизиту
			И я нажимаю на кнопку с именем 'КомандаЗаписать'
			И я нажимаю на кнопку с именем 'КомандаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Физическое лицо (создание) *' в течение 20 секунд
			Тогда открылось окно 'Физические лица'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Пользователь *'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			Когда открылось окно 'Запись пользователя информационной базы'
			И я нажимаю на кнопку 'Да'
			Тогда открылось окно 'Обсуждения (система взаимодействий)'
			И я изменяю флаг 'Больше не задавать этот вопрос'
			И я нажимаю на кнопку 'Нет'
			Тогда открылось окно 'Администратор (Пользователь)'
			И я нажимаю на кнопку 'Записать и закрыть'
			И я жду закрытия окна 'Администратор (Пользователь)' в течение 20 секунд
			Тогда открылось окно 'Пользователи'
			И в таблице "ПользователиСписок" я выбираю текущую строку

		И я закрываю TestClient "УХ - НСИ"

Сценарий: 01.02 Разрешаем открытие внешних обработок

	И я подключаю TestClient "УХ - НСИ" логин "Администратор" пароль ""

	* Не запрещаем открытие внешних обработок

		Когда открылось окно 'Предупреждение безопасности'
		И я нажимаю на кнопку с именем 'НеЗапрещать'

		Когда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button1'

	И я закрываю TestClient "УХ - НСИ"			

Сценарий: 01.03 Включение подсистем

	И я подключаю TestClient "УХ - НСИ" логин "Администратор" пароль "" 

	* Включаем подсистему "Корпоративные закупки"
		
		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Корпоративные закупки'
		Тогда открылось окно 'Корпоративные закупки'
		И я устанавливаю флаг 'Использовать корпоративные закупки'
		И я устанавливаю флаг 'Использовать дополнительные реквизиты и сведения'
		И Я закрываю окно 'Корпоративные закупки'
		
		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Корпоративные закупки'
		Тогда открылось окно 'Корпоративные закупки'
		
		И я устанавливаю флаг с именем 'ИспользоватьХарактеристикиНоменклатуры'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'Да'
		Тогда открылось окно 'Корпоративные закупки'
		
		И Я закрываю окно 'Корпоративные закупки'

	* Включаем подсистему "Механизмы управления НСИ"

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Общие настройки'
		Тогда открылось окно 'Общие настройки'
		И я устанавливаю флаг с именем 'ИспользоватьУправлениеНСИ'

	* Включаем подсистему "Управление активами"
	
		И я устанавливаю флаг с именем 'ИспользуетсяУправлениеАктивами'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Общие настройки" *' в течение 20 секунд

	И я закрываю TestClient "УХ - НСИ"

		