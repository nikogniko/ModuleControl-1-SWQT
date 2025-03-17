// Сигнатури

sig User {
  snippets: set Snippet
}

sig Title{}
sig Code{}
enum Status { Draft, Published, Archived }

sig Category {
  name: one String,
  snippets: set Snippet
}

sig Snippet {
  title: one Title,
  code: one Code,
  owner: one User,
  categories: set Category,
  likes: set User,
  status: one Status
}

// Факти (обмеження)
// Кожен сніпет має належати своєму власнику 
//(тобто, сніпет входить до множини snippets свого власника).
fact SnippetOwnership {
  all s: Snippet | s in s.owner.snippets
}

// 3. Унікальність назв сніпетів для кожного користувача.
fact SnippetUniquePerUser {
  all u: User, s1, s2: u.snippets | s1 != s2 implies s1.title != s2.title
}

// 4. Кожен сніпет має належати хоча б одній категорії.
fact SnippetCategory {
  all s: Snippet | some s.categories
}

// Обмеження на довжину коду сніпета (не більше 1000 символів).
//    Зауваження: у Alloy стандартно не реалізовано функцію вимірювання довжини рядка,
//    тому цей факт служить демонстраційним (якщо розглядати code як множину символів).
fact CodeLengthConstraint {
  all s: Snippet | #(s.code) <= 1000
}

// Перевірки (асерти)

// Перевірка, що кожен сніпет належить хоча б одній категорії.
assert SnippetCategoryAssert {
  all s: Snippet | some s.categories
}
check SnippetCategoryAssert for 5

// Генерація прикладів інстансів моделі.
run {} for 5 but 6 Int
