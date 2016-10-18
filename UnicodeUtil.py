import sys, re

def encode(s):
    """Encode str or collection of str"""
    if isinstance(s,list):
        s = " ".join(s)
    return [ord(c) for c in s]

def decode(numbers):
    """Decode collection of int to normal str"""
    return "".join([chr(int(num)) for num in numbers])

def cmd():
    help = """
Unicode Utility by @ApolloZhu
-----------------------------
Command Line Help

Options
    -h: help
    -e <str>: encode str
    -d <int...>: decode [int]
"""
    args = sys.argv[1:]
    error = "Invalid argument. Use `-h` for help"
    if (len(args)>1):
        if (re.findall("-*?e(n(code)?)?",args[0])):
            print(encode(args[1:]))
        elif (re.findall("-*?d(e(code)?)?",args[0])):
            print(decode(args[1:]))
        else:
            print(error)
    elif (len(args)==1 and re.findall("-*?(h(elp)?)|\?",args[0])):
        print(help)
    else:
        print(error)

if __name__ == "__main__":
    cmd()
