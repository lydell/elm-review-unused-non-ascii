# elm-review-unused non-ASCII problem

Steps to reproduce:

1. Clone this repo.
2. `npm cit`

Result:

```
❯ npm cit

added 144 packages, and audited 145 packages in 704ms

43 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

> test
> elm-review

-- ELM-REVIEW ERROR ------------------------------------------- src/Main.elm:7:7

(fix) NoUnused.CustomTypeConstructors: Type constructor `Örebro` is not used.

6|     = Värmland
7|     | Örebro
         ^^^^^^

This type constructor is never used. It might be handled everywhere it might
appear, but there is no location where this value actually gets created.

Errors marked with (fix) can be fixed automatically using `elm-review --fix`.

I found 1 error in 1 file.
```

It marks the custom type constructor `Örebro` as unused, but it is used. Workaround: Rename the custom type constructor to not start with a non-ASCII letter.
