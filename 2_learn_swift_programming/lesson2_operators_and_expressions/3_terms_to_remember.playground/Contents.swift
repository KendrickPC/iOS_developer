import UIKit

/*
 Core Terms
 Now that we've seen some examples, we should take some time to define more
 important terms related to operators and expressions:
 
    * Operand: a target or value affected by an operator
        * In the expression, 8 - 5, the subtraction operator (-) is applied
          to (or “affects”) two operands: 8 and 5.
 
    * Precedence: a rule or priority that defines when an operator should be
      applied in an expression; all operator precedence rules combine to
      form an “order of operations"
        * In the expression, 6 + 5 * 2, operator precedence dictates that
          multiplication should be applied before addition. Therefore the
          expression equates to 6 + 10, and then to 16.
 
    * Precedence Group: a collection of operators that share the same
      precedence.
 
    * Associativity: a property that determines the direction in which
      operators of the same precedence are applied; usually individual
      operators are specified as left-associative or right-associative
        * For example, addition is left-associative. This means the following
          expression would be evaluated as follows:
             5 + 4 + 2
             ((5 + 4) + 2)
             (9 + 2)
             11
        * Conversely, exponentiation in math is right-associative.
          This means the following expression would be evaluated as
          follows…
            5 ^ 2 ^ 2
            (5 ^ (2 ^ 2))
            (5 ^ 4)
            625
            Note: There is no built-in exponential operator (^) in Swift.
 
 
 
 */


