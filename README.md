# cpplint

GitHub Workflow Action to run cpplint

Optional Inputs:
* extensions: c++ extensions to pass to cpplint, as a comma separated string
* headers: c++ header types to pass to cpplint, as a comma separated string
* filter: filter to pass to cpplint, defaults to all checks
* excludes: excludes to pass to cpplint, as a comma separated string

## Examples

Simple example, ignore copyright warnings

```ylm
uses: thompsonja/cpplint-action@0.3.0
with:
  headers: "h,hpp"
  extensions: "c,cpp,cc,h,hpp"
  filter: "-legal/copyright"
```

Ignore files in third\_party

```ylm
uses: "thompsonja/cpplint-action@0.3.0"
with:
  headers: "h,hpp"
  extensions: "c,cpp,cc,h,hpp"
  excludes: "third_party/*"
```
