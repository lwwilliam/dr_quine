def function1():
    s = ("def function1():{2}    s = ({1}{0}{1}){2}    print(s.format(s, '{3}{1}', '{3}n', '{3}{3}')){2}{2}# comments outside main{2}{2}if __name__ == {1}__main__{1}:{2}    # comments inside main{2}    function1()")
    print(s.format(s, '\"', '\n', '\\'))

# comments outside main

if __name__ == "__main__":
    # comments inside main
    function1()
