# 🧠 Exercices SQL – Bases et Requêtes

Ce projet contient un ensemble d’exercices SQL pour pratiquer les requêtes de base sur une base de données fictive comportant des employés, des départements et des projets.

## 📂 Fichier inclus

- `exercices_sql.sql` : fichier SQL contenant la création des tables, l’insertion des données, et les requêtes des exercices.

---

## 🏗️ Structure de la base de données

### Table `departments`
| Champ | Type       | Description            |
|-------|------------|------------------------|
| id    | INT        | Identifiant unique     |
| name  | VARCHAR(50)| Nom du département     |

### Table `employees`
| Champ         | Type         | Description                        |
|---------------|--------------|------------------------------------|
| id            | INT          | Identifiant unique                 |
| name          | VARCHAR(50)  | Nom de l’employé                   |
| department_id | INT (FK)     | Département de l’employé (clé étrangère) |
| salary        | DECIMAL(10,2)| Salaire mensuel                    |

### Table `projects`
| Champ       | Type         | Description                         |
|-------------|--------------|-------------------------------------|
| id          | INT          | Identifiant unique                  |
| name        | VARCHAR(50)  | Nom du projet                       |
| employee_id | INT (FK)     | Employé assigné au projet           |

---

## 📌 Exercices inclus

### ✅ Exercice 1
> Afficher tous les employés.

### ✅ Exercice 2
> Afficher les employés avec un salaire > 3000.

### ✅ Exercice 3
> Afficher les employés avec le nom de leur département.

### ✅ Exercice 4
> Lister les employés triés par salaire décroissant.

### ✅ Exercice 5
> Afficher le salaire moyen par département.

### ✅ Exercice 6
> Ajouter un nouvel employé nommé Emma (IT, 3200€).

### ✅ Exercice 7
> Augmenter le salaire de Charlie de 10%.

### ✅ Exercice 8
> Supprimer les projets liés à David.

### ✅ Exercice 9
> Afficher les employés avec leur projet (même s’ils n’en ont pas).

### ✅ Exercice 10
> Afficher les employés dont le salaire est supérieur à la moyenne.

---

## 🚀 Instructions

1. Ouvre ton SGBD (MySQL, PostgreSQL, SQLite, etc.).
2. Exécute le fichier `exercices_sql.sql` pour :
   - Créer les tables
   - Ajouter les données
   - Exécuter les requêtes une à une
3. Observe les résultats et modifie-les si tu veux tester d'autres cas.

---

## 📚 Objectifs pédagogiques

- Maîtriser les requêtes SQL de base (`SELECT`, `WHERE`, `JOIN`, `ORDER BY`, `GROUP BY`, etc.)
- Savoir manipuler les données (`INSERT`, `UPDATE`, `DELETE`)
- Travailler avec des clés étrangères et des jointures
- Comprendre les sous-requêtes

---

## 🧑‍💻 Auteur

Exercices générés avec ❤️ par [ChatGPT].

---

## 📃 Licence

Ces exercices sont libres d'utilisation à des fins pédagogiques.
