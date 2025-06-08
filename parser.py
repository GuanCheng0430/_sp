# parser.py - 範例片段

def parse_do_while(tokens):
    """
    解析 do while 迴圈語法：
    do {
        // statements
    } while (condition);
    """
    expect_token(tokens, 'do')
    expect_token(tokens, '{')
    body = parse_statements(tokens)
    expect_token(tokens, '}')
    expect_token(tokens, 'while')
    expect_token(tokens, '(')
    condition = parse_expression(tokens)
    expect_token(tokens, ')')
    expect_token(tokens, ';')

    return DoWhileLoop(body, condition)


class DoWhileLoop:
    def __init__(self, body, condition):
        self.body = body
        self.condition = condition

    def execute(self, context):
        while True:
            self.body.execute(context)
            if not self.condition.evaluate(context):
                break
