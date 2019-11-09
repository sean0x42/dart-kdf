# Footnote

The footnote element adds a comment or reference to the bottom of the page. A
unique, numerical index—stylised as <sup>[index]</sup>—will also be included
within the main content.

```json
{
  "type": "Paragraph",
  "children": [
    "One promising approach to solving this problem came from a 2011 blog post",
    " by Grady Kuhnline, titled Length Unit Conversion in JavaScript",
    {
      "type": "Footnote",
      "children": ["https://mnmlurl.ml/#unit-conversion"]
    },
    "."
  ]
}
```

The footnote element has no special attributes.