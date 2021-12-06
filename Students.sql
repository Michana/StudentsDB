--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пн дек 6 23:49:09 2021
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Оценки
CREATE TABLE Оценки (
    оценка INTEGER (12) 
);


-- Таблица: Предметы
CREATE TABLE Предметы (
    [Код предмета]          BIGINT       PRIMARY KEY
                                         UNIQUE
                                         NOT NULL,
    [Наименование предмета] VARCHAR (50),
    [Описание предмета]     TEXT
);


-- Таблица: Специальности
CREATE TABLE Специальности (
    [Код специальности]         BIGINT       PRIMARY KEY
                                             UNIQUE
                                             NOT NULL,
    [Наименование спциальности] VARCHAR (50),
    [Описание специальности]    TEXT
);


-- Таблица: Студенты
CREATE TABLE Студенты (
    [Код студента]      BIGINT       PRIMARY KEY
                                     UNIQUE
                                     NOT NULL,
    ФИО                 VARCHAR (50),
    Пол                 VARCHAR (1),
    [Дата рождения]     DATE,
    Родители            VARCHAR (50),
    Адрес               TEXT,
    Телефон             VARCHAR (15),
    [Паспортные данные] TEXT,
    [Номер зачетки]     BIGINT,
    [Дата поступления]  DATE
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
