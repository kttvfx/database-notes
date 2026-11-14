<div align="center">

# Базы данных
### От моделей данных до распределённых систем

Конспект лекций Мацнева Никиты Игоревича · **3 поток · Осень 2026**

**11 лекций** &nbsp; · &nbsp; **59 страниц** &nbsp; · &nbsp; **PDF + Typst**

[**📖 Читать конспект**](full-conspect.pdf) &nbsp; · &nbsp; [**↓ Скачать PDF**](full-conspect.pdf?raw=true) &nbsp; · &nbsp; [**〈/〉 Исходники**](full-conspect.typ)

</div>

---

Теория баз данных, PostgreSQL, примеры SQL и наглядные схемы — в одном конспекте. Готовый PDF можно читать сразу; исходники позволяют менять оформление и собирать собственную версию.

> **Начать чтение:** [полный конспект](full-conspect.pdf) — 59 страниц, 30,6 МБ. Если просмотр GitHub не загружается, откройте [прямую ссылку на PDF](full-conspect.pdf?raw=true).

## Навигация

[Лекции](#лекции) · [Сборка](#сборка) · [Структура проекта](#структура-проекта) · [Источники](#источники-и-благодарности) · [Исправления](#исправления)

## Лекции

### 01 — Основы и проектирование

| № | Тема | Страниц | Материалы |
|:--:|---|:--:|---|
| 01 | Введение: данные, СУБД и уровни моделирования | 3 | [PDF](conspect-themes/conspect-themes-pdf/lecture-1.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-1.typ) |
| 02 | Модели данных: реляционная, колоночная, документная и другие | 5 | [PDF](conspect-themes/conspect-themes-pdf/lecture-2.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-2.typ) |
| 03 | Реляционная модель: атрибуты, ключи, типы данных и NULL | 4 | [PDF](conspect-themes/conspect-themes-pdf/lecture-3.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-3.typ) |
| 04 | Реляционная алгебра, соединения и реляционное исчисление | 3 | [PDF](conspect-themes/conspect-themes-pdf/lecture-4.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-4.typ) |
| 05 | Избыточность данных и нормальные формы | 4 | [PDF](conspect-themes/conspect-themes-pdf/lecture-5.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-5.typ) |

### 02 — Транзакции, хранение и выполнение запросов

| № | Тема | Страниц | Материалы |
|:--:|---|:--:|---|
| 06 | Транзакции, ACID, изоляция, WAL и MVCC | 4 | [PDF](conspect-themes/conspect-themes-pdf/lecture-6.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-6.typ) |
| 07 | Индексы: Hash, B-tree, GiST, R-tree, RD-tree и GIN | 5 | [PDF](conspect-themes/conspect-themes-pdf/lecture-7.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-7.typ) |
| 08 | GIN, LSM, SSTable, BRIN, Saga и Pipeline | 7 | [PDF](conspect-themes/conspect-themes-pdf/lecture-8.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-8.typ) |
| 09 | Выполнение запросов: статистика, сканирование, соединения и агрегация | 12 | [PDF](conspect-themes/conspect-themes-pdf/lecture-9.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-9.typ) |

### 03 — Безопасность и распределённые системы

| № | Тема | Страниц | Материалы |
|:--:|---|:--:|---|
| 10 | Безопасность: аутентификация, авторизация, роли и управление доступом | 6 | [PDF](conspect-themes/conspect-themes-pdf/lecture-10.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-10.typ) |
| 11 | Распределённые БД: RAID, репликация, шардирование, 2PC, CAP и PACELC | 7 | [PDF](conspect-themes/conspect-themes-pdf/lecture-11.pdf) · [Typst](conspect-themes/conspect-themes-typst/lecture-11.typ) |

## Сборка

Нужны [Typst](https://typst.app/) и шрифт **Libertinus Serif**. Команды выполняются из корня проекта:

```sh
git clone https://github.com/kttvfx/database-notes.git
cd database-notes
typst compile full-conspect.typ full-conspect.pdf
```

Для автоматической пересборки при редактировании:

```sh
typst watch full-conspect.typ full-conspect.pdf
```

В VS Code с расширением Tinymist выберите `full-conspect.typ` главным файлом проекта. Лекции подключаются к нему через `include`; единое оформление задаётся в `style.typ`.

<details>
<summary><b>Как собрать отдельную лекцию с общим оформлением</b></summary>

Создайте в корне временный файл `lecture-preview.typ`, указав нужный номер лекции:

```typst
#import "style.typ": lecture-style
#show: lecture-style
#include "conspect-themes/conspect-themes-typst/lecture-1.typ"
```

Затем выполните:

```sh
typst compile lecture-preview.typ lecture-preview.pdf
```

</details>

## Структура проекта

```text
database-notes/
├── full-conspect.pdf          # полный конспект
├── full-conspect.typ          # главный файл сборки
├── style.typ                  # общее оформление
├── conspect-themes/
│   ├── conspect-themes-pdf/   # PDF отдельных лекций
│   └── conspect-themes-typst/ # исходники лекций
└── figures/                  # рисунки и схемы
```

[Открыть оформление](style.typ) · [Посмотреть рисунки](figures/) · [Все PDF лекций](conspect-themes/conspect-themes-pdf/)

## Источники и благодарности

Спасибо авторам, указанным во введении конспекта:

| Автор | Вклад |
|---|---|
| [Данила Кущёв](https://github.com/Danira-Dy1224) | Материалы лекций |
| [Демид](https://github.com/ArchaonTheEverchoosen) | Материалы и оформление |
| [Кирилл](https://github.com/YutaJ17) | Материалы и оформление |

[Исходный конспект](https://yutaj17.github.io/itmo_notes/data_bases_Matsnev.pdf), на который ссылаются колонтитулы PDF.

## Исправления

Это студенческий конспект, а не официальное учебное пособие. Заметили неточность? [Создайте Issue](https://github.com/kttvfx/database-notes/issues/new), указав лекцию, страницу и предлагаемое исправление. Изменения исходников можно предложить через Pull Request.

---

<div align="center">

[Вернуться к полному конспекту →](full-conspect.pdf)

</div>
