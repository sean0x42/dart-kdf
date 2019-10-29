# Content

This section of the specification explores document content, and how it is
represented in `content.json`.

```json
{
  "nonlinear": [
    [
      {
        "type": "Group",
        "name": "Logo",
        "children": [...]
      },
      { "type": "LinearContent" }
    ]
  ],
  "linear": [
    {
      "type": "Heading",
      "children": ["Linear & Nonlinear Content"]
    },
    {
      "type": "Paragraph",
      "children": [
        "There are many challenges associated with mixing linear and ",
        "nonlinear document content."
      ]
    }
  ]
}
```