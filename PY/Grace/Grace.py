STR = "STR = {1}{0}{1}{2}{2}F = {1}Grace_kid.py{1}{2}FT = lambda: open(F, {1}w{1}).write(STR.format(STR, '{3}{1}', '{3}n', '{3}{3}')){2}{2}# comments{2}FT()"

F = "Grace_kid.py"
FT = lambda: open(F, "w").write(STR.format(STR, '\"', '\n', '\\'))

# comments
FT()