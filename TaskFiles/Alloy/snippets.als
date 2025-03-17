module SnippetsLibrary

// 1. Сигнатури (класи)

// --- Snippet ---
sig Snippet {
  ID:          one Int,
  Title:       one Int, // Заміна String на Int
  Description: one Int, // Заміна String на Int 
  Code:        one Int, // Заміна String на Int
  _status:     one Int, // Заміна String на Int
  Status:      one Int, // Заміна String на Int
  SavesCount:  one Int,

  CreatedAt:   one Int,
  UpdatedAt:   one Int,

  author:      one User,
  language:    one ProgrammingLanguage,
  tags:        set Tag,
  categories:  set Category
}

// --- User ---
sig User {
  Id:           one Int,
  Username:     one Int,  // Заміна String на Int
  Email:        one Int,  // Заміна String на Int
  PasswordHash: one Int,  // Заміна String на Int

  snippets:     set Snippet
}

// --- ProgrammingLanguage ---
sig ProgrammingLanguage {
  ID:   one Int,
  Name: one Int, // Заміна String на Int
}

// --- Tag ---
sig Tag {
  ID:   one Int,
  Name: one Int, // Заміна String на Int

  snippets: set Snippet
}

// --- Category ---
sig Category {
  ID:   one Int,
  Name: one Int, // Заміна String на Int

  snippets: set Snippet
}

// 2. Факти (обмеження)

// 2.1 Унікальність ID у кожному типі
fact uniqueIDs {
  all disj s1, s2: Snippet | s1.ID = s2.ID implies s1 = s2
  all disj u1, u2: User | u1.Id = u2.Id implies u1 = u2
  all disj pl1, pl2: ProgrammingLanguage | pl1.ID = pl2.ID implies pl1 = pl2
  all disj t1, t2: Tag | t1.ID = t2.ID implies t1 = t2
  all disj c1, c2: Category | c1.ID = c2.ID implies c1 = c2
}

// 2.2 Узгодження зв’язку Snippet <-> User
fact userSnippetConsistency {
  all s: Snippet | s in s.author.snippets
}

// 2.3 Узгодження зв’язку Snippet <-> ProgrammingLanguage
fact languageSnippetConsistency {
  all s: Snippet | s in s.language.snippets
}

// 2.4 Узгодження зв’язку Snippet <-> Tag
fact snippetTagConsistency {
  all s: Snippet, t: Tag |
    (t in s.tags) iff (s in t.snippets)
}

// 2.5 Узгодження зв’язку Snippet <-> Category
fact snippetCategoryConsistency {
  all s: Snippet, c: Category |
    (c in s.categories) iff (s in c.snippets)
}

// 2.6 Код та назва сніпету не можуть бути пустими
fact snippetNonEmptyFields {
  all s: Snippet | s.Title != none and s.Code != none
}

// 3. Генерація прикладів інстансів моделі
run {} for 5 but 8 Int