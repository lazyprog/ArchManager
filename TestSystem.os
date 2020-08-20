
МассивПараметров = Новый Массив;
МассивПараметров.Добавить("Доступно");
МассивПараметров.Добавить("ИмяФС");
МассивПараметров.Добавить("ТипДиска");
МассивПараметров.Добавить("Готов");
МассивПараметров.Добавить("Имя");
МассивПараметров.Добавить("КорневойКаталог");
МассивПараметров.Добавить("ОбщийОбъемСвободногоМеста");
МассивПараметров.Добавить("РазмерДиска");
МассивПараметров.Добавить("МеткаТома");



СИ = Новый СистемнаяИнформация();
Диски = СИ.ИменаЛогическихДисков; 
Для каждого Элем из Диски Цикл
	
	ИнформацияОДиске = Новый ИнформацияОДиске(Элем);
	Если ИнформацияОДиске.РазмерДиска=0 Тогда
		Продолжить;
	КонецЕсли;

	Сообщить("************************");
	Сообщить("Drive "+ИнформацияОДиске.Имя);
	Для Каждого ЭлемПарам из МассивПараметров Цикл
		Сообщить(ЭлемПарам+": "+ИнформацияОДиске[ЭлемПарам]);
	КонецЦикла

КонецЦикла

