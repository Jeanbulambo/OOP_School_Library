#![](https://img.shields.io/badge/Microverse-blueviolet)

# OOP SCHOOL LIBRARY

> In this project, we implemented classes to represent student and teachers

## Built With

- Ruby

## Getting Started

Clone this repo by typing :

git clone git@github.com:Jeanbulambo/OOP_School_Library.git


### Description

- We Created class Person with the following:

Instance vars: @id, @name, and @age.
Constructor with name, age, and parent_permission as parameter. name and parent_permission are optional and have default values of "Unknown" and true.
Getters for @id, @name, and @age.
Setters for @name and @age.
Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
Public method can_use_services? that returns true if person is of age or if they have permission from parents.

- Create class Student with the following:

Inherits from Person.
Constructor extends parent's constructor by adding @classroom and a parameter for it.
Method play_hooky that returns "¯\(ツ)/¯".

- Created class Teacher with the following:

Inherits from Person.
Constructor extends parent's constructor by adding @specialization and a parameter for it.
Override can_use_services? so it always returns true.
Each class is saved in a separate file.


## Authors

👤 **Jean Bulambo**

- GitHub: [@Jeanbulambo](https://github.com/Jeanbulambo)
- Twitter: [@Jeanbulambo](https://twitter.com/Jeanbulambo4)
- LinkedIn: [@Jeanbulambo](https://www.linkedin.com/in/jean-bulambo-20662a14a/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Original design idea by Nelson Sakwa on Behance.

## 📝 License

This project is [MIT](./MIT.md) licensed.