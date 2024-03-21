For https://github.com/evilmartians/lefthook/discussions/679

## Reproducing unstaged changes causing failures

- make a change that won't be staged
    - `echo "problem" >> unstaged.rb`
- make some other change, and stage it:
    - `echo "#" >> lefthook.yml`
    - `git add lefthook.yml`
- `git commit -m "test"`
  - expectation: `unstaged_problem` passes, becasuebecause the problematic line hasn't been changed
  - actual: `unstaged_problem` fails due to the problem line

