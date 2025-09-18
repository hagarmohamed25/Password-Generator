# 🔐 Password Generator

A simple **Bash-based password generator** that creates secure random passwords, validates user input, and optionally saves them in an **encrypted file**.

---

## ✨ Features
- ✅ Input validation (ensures password length is a valid positive number)
- 🔑 Generates **three random, complex passwords** using `openssl`
- 📜 Displays generated passwords in the terminal
- 🔒 Optionally encrypts and saves passwords to `passwords.txt.cpt` using `ccrypt`

---

## 🛠 Requirements
Make sure the following are installed on your system:
- `bash`
- `openssl`
- `ccrypt`

On Ubuntu/Debian, you can install them with:
`sudo apt update`
`sudo apt install openssl ccrypt`


---

## 🚀 Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/password-generator.git
   cd password-generator

---

## 📂 Output
- Displays **3 random passwords** in the terminal.
- If saving, passwords are securely stored in:
