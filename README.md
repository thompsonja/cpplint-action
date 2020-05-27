# cpplint

GitHub Workflow Action to run cpplint

Optional Inputs:
* extensions: c++ extensions to pass to cpplint, as a comma separated string
* headers: c++ header types to pass to cpplint, as a comma separated string
* filter: filter to pass to cpplint, defaults to all checks

## Examples

Simple example, ignore copyright warnings

```ylm
uses: thompsonja/cpplint-action@0.1.0
with:
  headers: "h,hpp"
  extensions: "c,cpp,cc,h,hpp"
  filter: "-legal/copyright"
```
