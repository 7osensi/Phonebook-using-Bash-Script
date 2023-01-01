# Phonebook
## _Hussein Mohamed_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)



This is a phonebook project using bash.

This project is under the supervision of Fady Khalil.
[Fady's Linkedin](https://www.linkedin.com/in/fady-khalil-5a23961b0/)

This is my Linkedin profile:
[Linkedin](https://www.linkedin.com/in/hussein-mohamed-907659179/)

## Features

- Add a new contact
- View all the contacts
- Search for a phone record
- Delete all phone contacts
- Delete one contact


## Options

_There are Five Options The User Can Choose from:_
| Option | Function |
| ------ | ------ |
| -i | Insert New Contact Name and Number|
| -v | View all Saved Contacts Details |
| -s | Search by Contact Name in The Phonebook Database |
| -e | Delete all Records |
| -d | Delete one Contact |

## Development Steps

1. Create a ".sh" File:

```sh
touch PhoneBook.sh
```

2. Give the user permissoin to write and execute:

```sh
chmod u+wx phonebook.sh
```

3. Open the file using any text editor
"Im using nano"

```sh
nano PhoneBook.sh
```

4. Add Shebang at the start of the file.
#!/bin/bash uses bash to parse the file.

```sh
#!/bin/bash
```

5. Initialize a file to save the data.
```sh
FILE=PhoneBookDataBase.txt
```

6. Type an argument next to ./phonebook.sh to get a specific function.
You can choose from (i, v, e, s, d).
Adding no arguments to the execute command will display the arguments and their functionality.
```sh
./phonebook.sh -i
```



