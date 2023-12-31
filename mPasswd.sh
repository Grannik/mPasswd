#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 25);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=25;fi
 if [[ $aa -gt 25 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=25;fi
 if [[ $j1 -gt 25 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 24 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=38; a++ ))
  do
   echo -e "\e[${a};1H\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m"
  done
 echo -en "\e[1;1H\033[0m\033[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
 echo -en "\e[3;3H\e[1m *** passwd ***\e[0m";
 echo -en "\e[4;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[5;3H\e[2m Change user password\e[0m";
 echo -en "\e[6;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[16;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[17;3H                                                                    \e[36m OPTIONS\e[0m";
 echo -en "\e[18;3H\e[2m К команде passwd применяются следующие параметры:\e[0m";
 echo -en "\e[34;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[36;1H\e[47;30m├\e[0m─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[39;1H\033[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
}
  E0(){ echo -en "\e[7;3H Установка                                                          \e[32m INSTALL \e[0m";}
  E1(){ echo -en "\e[8;3H Kраткий обзор                                                     \e[32m SYNOPSIS \e[0m";}
  E2(){ echo -en "\e[9;3H Описание                                                       \e[32m DESCRIPTION \e[0m";}
  E3(){ echo -en "\e[10;3H Password Changes                                                            ";}
  E4(){ echo -en "\e[11;3H Советы по паролям пользователей                                             ";}
  E5(){ echo -en "\e[12;3H Предостережения                                                    \e[32m CAVEATS \e[0m";}
  E6(){ echo -en "\e[13;3H                                                                      \e[32m FILES \e[0m";}
  E7(){ echo -en "\e[14;3H                                                                \e[32m EXIT VALUES \e[0m";}
  E8(){ echo -en "\e[15;3H                                                                   \e[32m SEE ALSO \e[0m";}
  E9(){ echo -en "\e[19;3H Вывода статуса всех пользователей                                 \e[32m -a --all \e[0m";}
 E10(){ echo -en "\e[20;3H Удалить пароль пользователя                                    \e[32m -d --delete \e[0m";}
 E11(){ echo -en "\e[21;3H Немедленно сделать пароль устаревшим                           \e[32m -e --expire \e[0m";}
 E12(){ echo -en "\e[22;3H Display help message and exit                                    \e[32m -h --help \e[0m";}
 E13(){ echo -en "\e[23;3H Блокировка учётной записи после заданного числа дней\e[32m -i --inactive INACTIVE \e[0m";}
 E14(){ echo -en "\e[24;3H Укажите, что смену пароля следует выполнять для токенов   \e[32m -k --keep-tokens \e[0m";}
 E15(){ echo -en "\e[25;3H Заблокировать указанную учётную запись                           \e[32m -l --lock \e[0m";}
 E16(){ echo -en "\e[26;3H Задать минимальное количество дней меж сменой пароля \e[32m -m --mindays MIN_DAYS \e[0m";}
 E17(){ echo -en "\e[27;3H Не выводить сообщений при работе                                \e[32m -q --quiet \e[0m";}
 E18(){ echo -en "\e[28;3H Изменить пароль в РЕПОЗИТОРИИ                   \e[32m -r --repository REPOSITORY \e[0m";}
 E19(){ echo -en "\e[29;3H Примените изменения в каталоге CHROOT_DIR            \e[32m -R, --root CHROOT_DIR \e[0m";}
 E20(){ echo -en "\e[30;3H Display account status information                             \e[32m -S --status \e[0m";}
 E21(){ echo -en "\e[31;3H Разблокировать указанную учётную запись                        \e[32m -u --unlock \e[0m";}
 E22(){ echo -en "\e[32;3H Установить число предупреждения, перед смена пароля\e[32m -w --warndays WARN_DAYS \e[0m";}
 E23(){ echo -en "\e[33;3H Установить максимальное количество дней, для прароля\e[32m -x, --maxdays MAX_DAYS \e[0m";}
 E24(){ echo -en "\e[35;3H Grannik                                                                \e[32m Git \e[0m";}
 E25(){ echo -en "\e[37;3H                                                                       \e[34m Exit \e[0m";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[47;30m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Предустановлена
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[47;30m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m passwd [options] [LOGIN]\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[47;30m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Команда passwd меняет пароли для учетных записей пользователей.
 Обычный пользователь может изменить пароль только для своей учетной записи,
 а суперпользователь может изменить пароль для любой учетной записи.
 passwd также изменяет срок действия учетной записи или связанного с ней пароля.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[47;30m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m passwd                               \e[0m Запустить утилиту.
\e[32m Changing password for Usr_name       \e[0m Сначала пользователю будет предложено
 ввести старый пароль, если он имеется. Затем этот пароль шифруется и сравнивается
 с сохраненным паролем. У пользователя есть только один шанс ввести правильный
 пароль. Суперпользователю разрешено пропустить этот шаг, чтобы можно было
 изменить забытые пароли. После ввода пароля проверяется информация об устаревании
 пароля, чтобы определить, разрешено ли пользователю менять пароль в данный момент.
 Если нет, passwd отказывается менять пароль и завершает работу.
\e[32m Current password:                    \e[0m Ввести текущий пароль.
\e[32m New password:                        \e[0m Ввести новый пароль.
\e[32m Retype new password:                 \e[0m Затем пользователю дважды предлагается
 ввести новый пароль. Вторая запись сравнивается с первой, и обе они должны
 совпадать, чтобы изменить пароль. Затем пароль проверяется на сложность.
 Как правило, пароли должны состоять из 6–8 символов,
 включая один или несколько символов каждого из них.
 из следующих наборов: • строчные буквы алфавита
                       • цифры от 0 до 9
                       • знаки препинания
 Необходимо позаботиться о том, чтобы не включать системные символы стирания или
 уничтожения по умолчанию.
 passwd отклонит любой пароль, который не является достаточно сложным.
\e[32m passwd: password updated successfully\e[0m Пароль успешно обновлен.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[47;30m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Безопасность пароля зависит от стойкости алгоритма шифрования
 и размера ключевого пространства.
 Устаревший метод шифрования системы UNIX основан на алгоритме NBS DES.
 Теперь рекомендуются более новые методы (см. ENCRYPT_METHOD).
 Размер ключевого пространства зависит от случайности выбранного пароля.
 Нарушения безопасности паролей обычно возникают в результате небрежного выбора
 или обращения с паролем. По этой причине не следует выбирать пароль, который есть
 в словаре или который необходимо записать. Пароль также не должен представлять
 собой имя собственное, номер вашей лицензии, дату рождения или почтовый адрес.
 Любое из них может быть использовано как предположение для нарушения безопасности
 системы. Советы о том, как выбрать надежный пароль, можно найти на:
\e[36m http://en.wikipedia.org/wiki/Password_strength\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[47;30m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Проверка сложности пароля может отличаться от сайта к сайту.
 Пользователю рекомендуется выбрать настолько сложный пароль, насколько ему удобно.
 Пользователи не смогут изменить свой пароль в системе,
 если NIS включен и они не вошли на сервер NIS.
 passwd использует PAM для аутентификации пользователей и изменения их паролей.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[47;30m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[36m /etc/passwd      \e[0m User account information.
\e[36m /etc/shadow      \e[0m Secure user account information.
\e[36m /etc/pam.d/passwd\e[0m PAM configuration for passwd.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[47;30m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 The passwd command exits with the following values:
\e[32m 0\e[0m success
\e[32m 1\e[0m permission denied
\e[32m 2\e[0m invalid combination of options
\e[32m 3\e[0m unexpected failure, nothing done
   неожиданная неудача, ничего не сделано
\e[32m 4\e[0m unexpected failure, passwd file missing
   неожиданный сбой, файл паролей отсутствует
\e[32m 5\e[0m passwd file busy, try again
   файл пароля занят, попробуйте еще раз
\e[32m 6\e[0m invalid argument to option
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[47;30m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m chpasswd\e[0m,\e[32m passwd\e[0m,\e[32m shadow\e[0m,\e[32m usermod\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[47;30m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Этот параметр можно использовать только вместе с -S для вывода статуса всех
 пользователей.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[47;30m";(E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Удалить пароль пользователя (сделать его пустым). Это быстрый способ
 заблокировать пароль учётной записи.
 Это делает указанную учётную запись беспарольной.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[47;30m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Немедленно сделать пароль устаревшим.
 В результате это заставит пользователя изменить пароль
 при следующем входе в систему.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[47;30m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m passwd --help\e[0m
#
\e[32m passwd -h\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[47;30m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Этот параметр используется для блокировки учётной записи по прошествии заданного
 числа дней после устаревания пароля. То есть, если пароль устарел и прошло более
 указанных ДНЕЙ, то пользователь больше не сможет использовать
 данную учётную запись.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[47;30m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Укажите, что смену пароля следует выполнять только для токенов аутентификации
 (паролей) с истекшим сроком действия. Пользователь желает сохранить свои токены
 с неистекшим сроком действия, как и прежде.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[47;30m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Заблокировать указанную учётную запись. Этот параметр блокирует учётную запись
 изменяя значение пароля на вариант, который не может быть шифрованным паролем.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[47;30m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Задать минимальное количество дней между сменой пароля. Нулевое значение
 этого поля указывает на то, что пользователь может менять свой пароль когда
 захочет.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 17)D;echo -en "\e[47;30m";(E17);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 18)D;echo -en "\e[47;30m";(E18);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 19)D;echo -en "\e[47;30m";(E19);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Примените изменения в каталоге CHROOT_DIR
 и используйте файлы конфигурации из каталога CHROOT_DIR
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 20)D;echo -en "\e[47;30m";(E20);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Показать состояние учётной записи. Информация о состоянии содержит 7 полей.
    - Первое поле содержит имя учётной записи.
 L  - Второе поле указывает, заблокирована ли учётная запись
 NP - она без пароля
 P  - или у неё есть рабочий пароль.
    - Третье поле хранит дату последнего изменения пароля.
 В следующих четырёх полях хранятся:
    - минимальный срок
    - максимальный срок
    - период выдачи предупреждения
    - и период неактивности пароля. Эти сроки измеряются в днях.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 21)D;echo -en "\e[47;30m";(E21);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Разблокировать указанную учётную запись.
 Этот параметр активирует учётную запись изменяя пароль на прежнее значение
 (которое было перед использованием параметра -l).
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 22)D;echo -en "\e[47;30m";(E22);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Установить число дней выдачи предупреждения, перед тем как потребуется
 смена пароля. В параметре WARN_DAYS указывается число дней перед тем как
 пароль устареет, в течении которых пользователю будут напоминать,
 что пароль скоро устареет.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 23)D;echo -en "\e[47;30m";(E23);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Установить максимальное количество дней, в течении которых пароль остаётся
 рабочим. После MAX_DAYS пароль нужно изменить.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 24)D;echo -en "\e[47;30m";(E24);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 mPasswd Описание утилиты passwd. Change user password.
 asciinema:\e[36m https://asciinema.org/a/617315\e[0m
 codeberg: \e[36m https://codeberg.org/Grannik/mPasswd\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 25)D;echo -en "\e[47;30m";(E25);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;exit 0;fi;;
esac;C;done
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *** Commentary *** ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - trap установка обработчика сигнала SIGINT для комбинации клавиш Ctrl+C
# ----------------------- Глобальные переменные --------------------------
# aa отслеживает, какой из шагов в первом меню в данный момент является активным, позволяя скрипту реагировать на ввод для изменения текущего активного шага.
# ab отслеживает, какой из шагов во вторм меню в данный момент является активным, позволяя скрипту реагировать на ввод для изменения текущего активного шага.
# ----------------------- Локальные  переменные --------------------------
# a переменная цикла рамки текста
# b это переменная, которая используются в циклах для итерации.
# c переменная используется для хранения символов, считанных с клавиатуры.
# d стрелка вверх.
# e стрелка вниз.
# f стрелка вправо
# g стрелка влево
# i обработчик курсора
# ----------------------- Локальные ветвящиеся переменные ----------------
# j1 j2 ... переменная служит для хранения индекса следующего  шага относительно текущего активного шага.
# k1 k2 ... переменная служит для хранения индекса предыдущего шага относительно текущего активного шага.
# l1 l2 проверяет условие, что значение переменной la не равно пробелу. Этот цикл будет выполняться, пока la не станет равным пробелу.
# ---------------------- Функции -----------------------------------------
# A() функция отвечает за последовательный вызов функций E0, E1, ..., E + 28 Количество вызовов функций зависит от значения 28
# B() функция предназначена для обработки ввода с клавиатуры, особенно при использовании ANSI escape-последовательностей, она может вернуть значения ca da enter
# C() функция в скрипте служит для обработки ввода пользователя и изменения текущего активного шага в меню.
# D() функция осуществляет действия, связанные с обработкой aa j1 k1 и выводом ANSI escape-последовательностей для управления отображением в терминале.
# TXa() функция создает варианнт текстового оформления a
# E0() - ...   начиная с E группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# E0() - E28() основная группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# F0() -  F9() дополнительная группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# INI Эта функция INI() выполняет инициализацию интерфейса. Ниже нельза переносить.
# WILa() функция первого основного цикла
# WILb() функция второго дополнительного цикла
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
