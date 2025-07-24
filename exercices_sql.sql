-- Suppression si les tables existent déjà
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Création des tables
CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE projects (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Insertion des départements
INSERT INTO departments (id, name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Marketing');

-- Insertion des employés
INSERT INTO employees (id, name, department_id, salary) VALUES
(1, 'Alice', 1, 3000),
(2, 'Bob', 2, 3500),
(3, 'Charlie', 1, 2800),
(4, 'David', 3, 4000);

-- Insertion des projets
INSERT INTO projects (id, name, employee_id) VALUES
(1, 'Website', 2),
(2, 'Onboarding', 1),
(3, 'Ads', 4);

-- Exercice 1 : Tous les employés
SELECT * FROM employees;

-- Exercice 2 : Employés avec salaire > 3000
SELECT * FROM employees
WHERE salary > 3000;

-- Exercice 3 : Employés avec leur département
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

-- Exercice 4 : Employés triés par salaire décroissant
SELECT * FROM employees
ORDER BY salary DESC;

-- Exercice 5 : Salaire moyen par département
SELECT d.name AS department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.name;

-- Exercice 6 : Ajouter Emma
INSERT INTO employees (id, name, department_id, salary)
VALUES (5, 'Emma', 2, 3200);

-- Exercice 7 : Augmenter le salaire de Charlie de 10%
UPDATE employees
SET salary = salary * 1.10
WHERE name = 'Charlie';

-- Exercice 8 : Supprimer les projets de David
DELETE FROM projects
WHERE employee_id = (
  SELECT id FROM employees WHERE name = 'David'
);

-- Exercice 9 : Employés avec leurs projets (même sans projet)
SELECT e.name AS employee_name, p.name AS project_name
FROM employees e
LEFT JOIN projects p ON e.id = p.employee_id;

-- Exercice 10 : Employés gagnant plus que la moyenne
SELECT * FROM employees
WHERE salary > (
  SELECT AVG(salary) FROM employees
);
