# Heading

A section heading, which marks the beginning of a section of text. Heading's are
usually styled to stand out against body text. This may be achieved by
increasing the font size, using a darker colour, increasing the font weight, or
a combination of all three.

```json
{
  "type": "Heading",
  "level": 1,
  "children": ["Update 15: Bug Fixes"]
}
```


## `level`: Integer

The `level` attribute is required for all headings, and may contain any integer
from 1 to 6, where 1 is the highest level and 6 is the lowest. It is
recommended, although not strictly required, for headings to be used without
skipping any levels. In other words, you should always start from level 1, then
2 and so on.