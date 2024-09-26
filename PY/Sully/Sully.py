import os
STR = "import os{2}STR = {1}{0}{1}{2}{2}def function1():{2}{4}x = {5}{2}{4}if x > 0:{2}{4}{4}x -= 1{2}{4}{4}num = str(x){2}{4}{4}with open({1}Sully_{1} + num + {1}.py{1}, {1}w{1}) as f:{2}{4}{4}{4}f.write(STR.format(STR, '{3}{1}', '{3}n', '{3}{3}', '{4}', x)){2}{4}{4}os.system({1}python3 Sully_{1} + num + {1}.py{1}){2}{2}if __name__ == {1}__main__{1}:{2}    function1()"

def function1():
    x = 5
    if x > 0:
        x -= 1
        num = str(x)
        with open("Sully_" + num + ".py", "w") as f:
            f.write(STR.format(STR, '\"', '\n', '\\', '    ', x))
        os.system("python3 Sully_" + num + ".py")

if __name__ == "__main__":
    function1()