# Todo Features

## Create a new todo

```bash
curl --request POST \
  --url http://localhost:8080/todos \
  --header 'Content-Type: application/json' \
  --data '{ "title": "Take out trash" }'
```

## Read all todos

```bash
curl --request GET --url http://localhost:8080/todos
```

## Read a specific todo by id

```bash
curl --request GET --url http://localhost:8080/todos/9a965381-05f9-4867-ba21-37f27c88b527
```

## Update a specific todo by id

```bash
curl --request PUT \
  --url http://localhost:8080/todos/9a965381-05f9-4867-ba21-37f27c88b527 \
  --header 'Content-Type: application/json' \
  --data '{
  "title": "Take out trash!",
  "isCompleted": true
}'
```

## Delete a specific todo by id

```bash
curl --request DELETE --url http://localhost:8080/todos/64e4c94a-96a2-4044-b18e-8572897da954
```
