HEADER = '\033[95m'
OKBLUE = '\033[94m'
OKGREEN = '\033[92m'
WARNING = '\033[93m'
FAIL = '\033[91m'
ENDC = '\033[0m'
BOLD = '\033[1m'
UNDERLINE = '\033[4m'


def tags(tag_name):
    """
    @note: Decorate function for the printing.
    @param tag_name: ASCII tag from the list above.
    @return: Returns the manipulated string.
    """
    def tags_decorator(func):
        def func_wrapper(text):
            return "{0}{1}{2}".format(tag_name, func(text), ENDC)
        return func_wrapper
    return tags_decorator

@tags(FAIL)
def print_fail(text):
    return text

@tags(OKGREEN)
def print_ok(text):
    return text

@tags(WARNING)
def print_warning(text):
    return text

@tags(BOLD)
def print_bold(text):
    return text
