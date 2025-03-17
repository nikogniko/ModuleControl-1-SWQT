## Модульний проєкт №1 з якості програмного забезпечення та тестування
### Виконала: Горбач Вероніка, Б-121-22-2-ПІ

 *Для роботи було взято за основу курсовий проєкт **SnipHive***.

**SnipHive** – це веб-додаток, розроблений для управління бібліотекою кодових фрагментів (сніпетів). Додаток орієнтований на зберігання, організацію, пошук та відображення фрагментів коду, що робить його корисним інструментом для розробників, які хочуть швидко знайти та повторно використати готові рішення.

---
### Завдання 1: Модель якості

#### 1. Модель якості за стандартом ISO/IEC 25010

Цей стандарт описує характеристику якості програмного забезпечення з точки зору користувача. Для **SnipHive** основними вимірами є:

- **Функціональна відповідність**  
    _Опис:_ Додаток повинен забезпечувати створення, редагування, видалення, пошук і перегляд фрагментів коду (snippet’ів).  
    _Підметрики:_
    - Повнота реалізації функціоналу (CRUD операції, пошук, фільтрація)
    - Коректність виконання запитів
    - Відповідність специфікаціям та бізнес-вимогам
    
- **Продуктивність (Performance Efficiency)**  
    _Опис:_ Забезпечення швидкого відгуку, ефективного використання серверних ресурсів та оптимізації запитів до бази даних.  
    _Підметрики:_
    - Час завантаження сторінок
    - Відгук сервера (response time)
    - Пропускна здатність (throughput)
      
- **Сумісність (Compatibility)**  
    _Опис:_ Коректна робота додатку у різних браузерах і на різних пристроях.  
    _Підметрики:_
    - Результати тестування у кросбраузерних середовищах
    - Підтримка мобільних та десктопних платформ
      
- **Зручність використання (Usability)**  
    _Опис:_ Інтуїтивно зрозумілий інтерфейс для користувачів із можливістю швидкого знаходження потрібних фрагментів коду.  
    _Підметрики:_
    - Час, необхідний для освоєння інтерфейсу
    - Рівень задоволеності користувачів
    - Кількість кроків для виконання основних операцій
      
- **Надійність (Reliability)**  
    _Опис:_ Забезпечення стабільної роботи додатку та коректного відновлення після збоїв.  
    _Підметрики:_
    - Час безвідмовної роботи (uptime)
    - Середній час відновлення (MTTR)
    - Частота виникнення помилок
      
- **Безпека (Security)**  
    _Опис:_ Захист даних користувачів, запобігання несанкціонованому доступу та забезпечення безпечного зберігання інформації.  
    _Підметрики:_
    - Кількість виявлених вразливостей
    - Рівень аутентифікації та авторизації
    - Результати тестування на проникнення
      
- **Підтримуваність (Maintainability)**  
    _Опис:_ Легкість внесення змін, оновлення та виправлення помилок у коді.  
    _Підметрики:_
    - Модульність коду
    - Зрозумілість архітектури
    - Відповідність стандартам написання коду
      
- **Переносимість (Portability)**  
    _Опис:_ Можливість розгортання додатку на різних платформах і середовищах без значних змін у коді.  
    _Підметрики:_
    - Легкість налаштування середовища
    - Незалежність від специфічних технологій

---
#### 2. Аспекти за стандартом ISO/IEC 25019:2023

Стандарт ISO/IEC 25019:2023 зосереджується на якості програмних продуктів в контексті процесів розробки та експлуатації. Для **SnippetsLibraryWebApp** це означає:

- **Оцінка процесів розробки та підтримки**  
    Визначення ефективності робочих процесів, включаючи планування, тестування, інтеграцію та розгортання.  
    _Підметрики:_
    - Частота та швидкість випуску нових версій
    - Ефективність виявлення та усунення дефектів
    - Відгуки команди щодо зрозумілості процесів розробки
      
- **Метрична оцінка життєвого циклу продукту**  
    Вимірювання якості програмного забезпечення на різних етапах його життєвого циклу.  
    _Підметрики:_
    - Кількість знайдених дефектів на стадії тестування та після релізу
    - Відсоток успішних оновлень без критичних помилок
    - Час реагування на інциденти у виробничому середовищі

Цей підхід дозволяє не лише оцінити кінцевий продукт, але й забезпечити контроль над процесами розробки та експлуатації, що критично важливо для підтримки високої якості додатку.

---
#### 3. Ключові метрики якості коду

Для оцінки внутрішньої якості коду **SnipHive** можна використовувати наступні метрики:

- **Цикломатична складність (Cyclomatic Complexity):**  
    Вимірює кількість незалежних шляхів виконання коду. Низьке значення вказує на простішу логіку, що легше тестувати та підтримувати.
    
- **Індекс підтримуваності (Maintainability Index):**  
    Комплексний показник, що включає складність, обсяг коду та рівень коментування. Вищий індекс означає, що код легше підтримувати.
    
- **Кількість рядків коду (Lines of Code, LOC):**  
    Хоча ця метрика не є абсолютним показником якості, вона допомагає оцінити масштаб проекту і може бути корисною при аналізі складності.
    
- **Дублювання коду (Code Duplication):**  
    Відсоток повторно використовуваних фрагментів коду. Менший рівень дублювання сприяє підвищенню підтримуваності.
    
- **Покриття коду тестами (Code Coverage):**  
    Відсоток коду, покритого автоматизованими тестами. Високе покриття забезпечує впевненість у стабільності та правильності роботи додатку.
    
- **Статичний аналіз коду (Static Analysis Warnings):**  
    Кількість попереджень або помилок, виявлених інструментами статичного аналізу (наприклад, SonarQube, ESLint). Це дозволяє ідентифікувати потенційні проблеми до виконання коду.

- **Метрики зв’язності та модульності (Coupling and Cohesion):**  
    Оцінка взаємозв’язку між модулями (coupling) та рівня їх згуртованості (cohesion). Оптимальні значення сприяють кращій структурованості додатку.
    
---
### Завдання 2: Модель якості

[Тут](https://sonarcloud.io/project/overview?id=nikogniko_ModuleControl-1-SWQT) будуть звіти SonarQube, що є результатами виконання аналізу, вбудованого в CI/CD:

![image](https://github.com/user-attachments/assets/586ba419-2104-48bb-878d-74b0cabd4ae5)

Ось загальні результати початкового аналізу:

![image](https://github.com/user-attachments/assets/480f4350-b702-48c2-8d0e-15b24b72c3a4)

А ось результат аналізу коду у VisualStudio через Code Metrics:

![image](https://github.com/user-attachments/assets/b04e6101-fd6f-4e18-b710-b4cb0e62d7e9)

Нижче наведено детальний аналіз результатів вимірювання кодової бази проєкту **SnippetsLibraryWebApp (Debug)** за різними метриками:
##### 1. **Maintainability Index (Індекс підтримуваності)**

- Загальний проєкт має MI **79**, що є прийнятним показником.
- Модулі як-от **SnippetsLibraryWebApp.Models** (MI 98) та **SnippetsLibraryWebApp.ViewModels** (MI 100) мають дуже високий рівень підтримуваності.
- Проте, **Program** має MI **36**, що свідчить про потенційні проблеми в підтримці або непослідовну організацію коду в цьому модулі.
##### 2. **Cyclomatic Complexity (Цикломатична складність)**

Проєкт **SnippetsLibraryWebApp (Debug)** має дуже високу цикломатичну складність – **590**, що є сигналом до перегляду архітектури чи розбиття функціоналу на менші компоненти. Але потрібно врахувати що  **AspNetCoreGeneratedDocument** має показник **268** – що є результатом автоматично згенерованого коду.
##### 3. **Depth of Inheritance (Глибина наслідування)**

- Максимальна глибина наслідування становить **4** (як для проєкту, так і для деяких модулів, наприклад, **AspNetCoreGeneratedDocument**), що, загалом, прийнятно.
- Решта модулів мають досить неглибокі ієрархії (1 або 3 рівні), що сприяє простоті розуміння.       
##### 4. **Class Coupling (Зв’язність класів)**
- Головний проєкт має досить високий рівень зв’язності – **144**, що може свідчити про значну залежність між частинами системи.
- Модулі, як-от **Program** і **SnippetsLibraryWebApp.Extensions**, мають дуже низьку зв’язність (від **1** до **4**), що є плюсом з точки зору простоти підтримки.
##### 5. Рядки коду
- Аналіз свідчить про свідчить про значний обсяг коду(5,700 рядків). Але ця метрика не є самостійною, адже це не якісний а лише загальний кількісний показник
    
##### Загальний висновок
- Модулі моделей і представлення (Models і ViewModels) виглядають дуже підтримуваними, тоді як певні частини, зокрема основний проєкт з високою цикломатичною складністю і високою зв’язністю, можуть потребувати рефакторингу або розбиття на менші частини.
    
- Дуже високий показник цикломатичної складності вказує на необхідність перегляду структурних рішень, можливо, розбиття надмірно складних методів або виділення окремих підсистем, щоб зменшити ризики помилок та спростити тестування.
    
- **Зв’язність:** Висока зв’язність у деяких модулях говорить про взаємодію великої кількості компонентів, що може утруднювати ізоляцію модулів для окремого тестування чи підтримки. Рекомендується переглянути залежності й, можливо, впровадити принципи слабкого зв’язування (Loosely Coupled Design).
- 
---
### Завдання 3. Формальна верифікація специфікацій

**Моделі Alloy можна знайти [тут](https://github.com/nikogniko/ModuleControl-1-SWQT/tree/master/TaskFiles/Alloy)**

---

### Завдання 4. Верифікація моделей архітектури (PlantUML)

**PlantUML-код діаграм можна знайти [тут](https://github.com/nikogniko/ModuleControl-1-SWQT/tree/master/TaskFiles/PlantUML)**

1. **Діаграма випадків використання (Use Case Diagram)**

Діаграма випадків використання показує взаємодію між користувачами системи (акторами) та функціональністю, яку вони можуть виконувати (випадки використання). У контексті SnippHive основними акторами є:
- **Користувач**: Може переглядати, створювати, редагувати та видаляти сніпети, а також додавати коментарі та лайки.
- **Адміністратор**: Має додаткові привілеї, такі як управління категоріями та модерація контенту.

Основні випадки використання:

![image](https://github.com/user-attachments/assets/b1326740-32cc-4f06-a38d-0deeaebaf06f)

1. **Діаграма послідовності (Sequence Diagram)**

Діаграма послідовності відображає взаємодію між об'єктами системи в певній послідовності часу. Розглянемо приклад сценарію "Створення сніпета":
- **Користувач**: Ініціює процес створення сніпета.
- **Система**: Перевіряє дані, зберігає сніпет та підтверджує успішне створення.

Діаграма послідовності "Створення сніпета":

![image](https://github.com/user-attachments/assets/7d7228c1-7070-46a5-88c4-27153b9d5cda)

1. **Діаграма класів**

_Діаграма класів моделей рівня моделей:_

![image](https://github.com/user-attachments/assets/16876008-519c-49dc-bed3-2cb21ea869a2)

UML діаграма класів на рисунку демонструє структуру та взаємозв'язки між основними сутностями у програмному продукті бібліотеки сніпетів. Основна сутність, навколо якої побудована система, — це клас SnippetModel, що представляє сніпет коду. 

Клас SnippetModel має зв’язок із CategoryModel та TagModel. Це означає, що кожен сніпет може бути пов'язаний із кількома категоріями та тегами, які визначають його тематику чи призначення. Колекції Categories та Tags представлені як списки відповідних моделей. 

Додатково, SnippetModel має асоціацію з ProgrammingLanguageModel, що дозволяє встановлювати зв'язок між сніпетом і мовою програмування, на якій він написаний. І також пов'язаний із UserModel, що представляє автора сніпета. У системі кожен сніпет має свого автора, і цей зв'язок використовується для відстеження власників сніпетів, надання прав на редагування, перегляд або видалення.


**Верифікація діаграм**

- Всі основні функціональні вимоги системи відображені у випадках використання.
- Діаграми - узгоджені: діаграми послідовності відповідали сценаріям, описаним у випадках використання.
- Послідовність дій у діаграмі послідовності є логічною та відповідає процесам системи.

---

### Завдання 5. Git Flow та GitHub Actions

1. Git Flow наявний у репозиторії. З ціллю демонстрації гілки не видалялись після закриття Pull Request
2. CI/CD на GitHub Actions можна знайти [тут](https://github.com/nikogniko/ModuleControl-1-SWQT/blob/master/.github/workflows/build.yml)
