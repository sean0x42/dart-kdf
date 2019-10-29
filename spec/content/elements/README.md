# Elements

## Text Node Shorthand

Throughout this specification, you may see the following notation:

```json
{
  "type": "Paragraph",
  "children": ["Hello, World!"]
}
```

Note that this notation is shorthand for the following, and has been used to aid
in reader clarity.

```json
{
  "type": "Paragraph",
  "children": [
    { "type": "Text", "content": "Hello, World!" }
  ]
}
```

This shorthand is used purely for demonstrative purposes, and should not be used
in any real KDF files.