---
page:
  description: |
    Notes Index 
template:
  name: /templates/home
  layout:
    base:
      bodyClass: overflow-y-scroll 
---

# Index

- [[001_Personal_Home|Personal Home]]
- [[Course Note Index]]
- [[Blog]]
- [Browse by tag](-/tags)
- [Browse all](-/all)
- [[900_Changelog]]


:::{.grid}

# [[Quick_Notes|Journal]] 

:::{.flex .items-center .justify-center .custom_aggregate}

```query {.timeline}
tag:web/quick-notes
```

```query {.timeline}
tag:web/blog
```


:::

:::

