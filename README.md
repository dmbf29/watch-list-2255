# Rails Watchlist

A Ruby on Rails application to keep movie watchlists.

Follow the steps **in order** to get setup on your machine.

---

## 1) Clone the project

```bash
cd ~/code/YOUR_GITHUB_USERNAME
git clone git@github.com:dmbf29/watch-list-2198.git rails-watchlist
cd rails-watchlist
```

---

## 2) Remove the existing Git history (VERY IMPORTANT)

We do not want commits from the original repo in your project.

Delete the `.git` folder:

```bash
rm -rf .git
```

---

## 3) Create your own local Git repository

```bash
git init
git add .
git commit -m "Initial commit"
```

---

## 4) Create a new GitHub repository

```bash
gh repo create rails-watchlist
```

---

## 5) Install project dependencies

```bash
bundle install
```

---

## 6) Setup the database

Create the database:

```bash
rails db:drop
rails db:create
```

Run migrations:

```bash
rails db:migrate
```

Seed data:

```bash
rails db:seed
```

---

## 7) Run the Rails server

```bash
rails s
```

Open in your browser:

```
http://localhost:3000
```
