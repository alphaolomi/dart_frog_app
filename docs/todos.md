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
curl --request GET --url http://localhost:8080/todos/<id>
```

## Update a specific todo by id

```bash
curl --request PUT \
  --url http://localhost:8080/todos/<id> \
  --header 'Content-Type: application/json' \
  --data '{
  "title": "Take out trash!",
  "isCompleted": true
}'
```

## Delete a specific todo by id

```bash
curl --request DELETE --url http://localhost:8080/todos/<id>
```
