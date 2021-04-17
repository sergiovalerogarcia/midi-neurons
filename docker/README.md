# midi-neurons

## Requires

```bash
pip install py-midicsv==1.14.1
# Python >=3.7, <4.0
```

### About 
- "A Python library inspired by the midicsv tool created by John Walker." 
  - https://pypi.org/project/py-midicsv/

- midicsv
  - https://www.fourmilab.ch/webtools/midicsv/

## Quick start

Usage: midicsv [OPTIONS] INPUT_FILE OUTPUT_FILE
Usage: csvmidi [OPTIONS] INPUT_FILE OUTPUT_FILE

Example:
```
midicsv data/a-whole-new-world-theme-from-aladdin.mid data/tmp/a-whole-new-world-theme-from-aladdin.csv
csvmidi data/tmp/a-whole-new-world-theme-from-aladdin.csv data/tmp/test.mid
```

## midicsv File Format

Please, go to: https://www.fourmilab.ch/webtools/midicsv/