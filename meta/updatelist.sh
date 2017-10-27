#! /bin/bash
echo 'const BLACKLIST = RegExp(String.raw`(^|\.|//)('$(cat adult/domains <(./domains.sh) | sort | uniq -c  | grep -E '^\s*2' | tr -s ' ' | cut -d ' ' -f 3 |  tr '\n' '|' | sed 's!|$!!g')')`);'
