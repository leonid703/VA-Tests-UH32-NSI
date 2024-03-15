﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild
 
Функционал: Экспортные сценарии

Как бизнес-аналитик я хочу
упростить создание спрвочников и документов
чтобы упростить поддержку сценарных тестов

Сценарий: Я создаю НоваяОрганизация "ТекНаименование", ИНН = "ТекИНН", КПП = "ТекКПП", ОГРН = "ТекОГРН", дата регистрации = "ТекДатаРегистрации"

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Организационные единицы'
		Тогда открылось окно 'Организационные единицы'
		
		И я нажимаю на кнопку с именем 'СоздатьНовуюОрганизацию'
		Тогда открылось окно 'Тип организации'
		И я нажимаю на кнопку с именем 'ВыбратьРФ'
		Тогда открылось окно 'Вид организации'
		И я нажимаю на кнопку с именем 'ВыбратьЮЛ'
		Тогда открылось окно 'Юридическое лицо'
		И я нажимаю на кнопку с именем 'СистемаНалогообложенияОбщаяЮЛ'
		
		И в поле с именем 'НаименованиеСокращенное' я ввожу текст '[ТекНаименование]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ИНН' я ввожу текст '[ТекИНН]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'КПП' я ввожу текст '[ТекКПП]'
		И я перехожу к следующему реквизиту
		И в поле 'ОГРН' я ввожу текст '[ТекОГРН]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ДатаРегистрации' я ввожу текст '[ТекДатаРегистрации]'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Записать'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '[ТекНаименование] *' в течение 20 секунд

		И я закрываю все окна клиентского приложения

Сценарий: Я создаю НоваяОрганизация223 "ТекНаименование", ИНН = "ТекИНН", КПП = "ТекКПП", ОГРН = "ТекОГРН", дата регистрации = "ТекДатаРегистрации"

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Организационные единицы'
		Тогда открылось окно 'Организационные единицы'
		
		И я нажимаю на кнопку с именем 'СоздатьНовуюОрганизацию'
		Тогда открылось окно 'Тип организации'
		И я нажимаю на кнопку с именем 'ВыбратьРФ'
		Тогда открылось окно 'Вид организации'
		И я нажимаю на кнопку с именем 'ВыбратьЮЛ'
		Тогда открылось окно 'Юридическое лицо'
		И я нажимаю на кнопку с именем 'СистемаНалогообложенияОбщаяЮЛ'
		
		И в поле с именем 'НаименованиеСокращенное' я ввожу текст '[ТекНаименование]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ИНН' я ввожу текст '[ТекИНН]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'КПП' я ввожу текст '[ТекКПП]'
		И я перехожу к следующему реквизиту
		И в поле 'ОГРН' я ввожу текст '[ТекОГРН]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ДатаРегистрации' я ввожу текст '[ТекДатаРегистрации]'
		И я перехожу к следующему реквизиту
		И я устанавливаю флаг 'Учет закупок по 223-ФЗ'
		И из выпадающего списка "Сумма малых закупок" я выбираю точное значение '500 000'
		И я нажимаю на кнопку 'Записать'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна '[ТекНаименование] *' в течение 20 секунд

		И я закрываю все окна клиентского приложения

Сценарий: Я создаю НоваяОрганизацияИП "ТекФамилия", Имя = "ТекИмя", ИНН = "ТекИНН", ОГРНИП = "ТекОГРНИП", дата регистрации = "ТекДатаРегистрации"

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Организационные единицы'
		Тогда открылось окно 'Организационные единицы'

		И я нажимаю на кнопку с именем 'СоздатьНовуюОрганизацию'
		Тогда открылось окно 'Тип организации'
		И я нажимаю на кнопку с именем 'ВыбратьРФ'
		Тогда открылось окно 'Вид организации'
		И я нажимаю на кнопку с именем 'ВыбратьИП'
		Тогда открылось окно 'Индивидуальный предприниматель'
		И я нажимаю на кнопку с именем 'СистемаНалогообложенияНалогНаПрофессиональныйДоходИП'
		
		И из выпадающего списка с именем "СтатусФизическогоЛица" я выбираю точное значение 'Самозанятый'
		И из выпадающего списка с именем "СтатусФизическогоЛица" я выбираю точное значение 'Индивидуальный предприниматель'
		
		И в поле 'Фамилия' я ввожу текст '[ТекФамилия]'
		И в поле 'Имя' я ввожу текст '[ТекИмя]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ИНН' я ввожу текст '[ТекИНН]'
		И я перехожу к следующему реквизиту
		И в поле 'ОГРНИП' я ввожу текст '[ТекОГРНИП]'
		И я перехожу к следующему реквизиту
		И в поле с именем 'ДатаРегистрации' я ввожу текст '[ТекДатаРегистрации]'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Записать'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Организационная единица*' в течение 20 секунд

		И я закрываю все окна клиентского приложения

Сценарий: Я создаю НовоеЦФО "ТекНаименование", Группа = "ТекГруппа"

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Организационные единицы'
		Тогда открылось окно 'Организационные единицы'
		
		И я нажимаю на кнопку с именем 'СоздатьНовуюОрганизацию'
		Тогда открылось окно 'Тип организации'
		И я нажимаю на кнопку с именем 'ВыбратьЦФО'
		Тогда открылось окно 'Организационная единица (создание)'
		И в поле с именем 'НаименованиеСокращенное' я ввожу текст '[ТекНаименование]'
		И я перехожу к следующему реквизиту

		И я разворачиваю группу "Параметры регламента по умолчанию"
		И я нажимаю кнопку выбора у поля "Консолидирующая организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' | 
			| '[ТекГруппа]' | 
		И в таблице "Список" я выбираю текущую строку
		
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Организационная единица *' в течение 20 секунд

		И я закрываю все окна клиентского приложения