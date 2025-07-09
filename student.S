##############################################################################
#
# File: student.S
#
# Description:
#   This file contains skeleton source code that students should complete so
#   that it performs the computations required in the Machine Problem handout.
#
##############################################################################

.text

/*
 * Function: findHypSq
 *
 * Description:
 *  Given the two sides of a right triangle, compute the square of the
 *  hypotenuse.
 *
 * Inputs:
 *  %rdi - Integer length of the first side of the right triangle.
 *  %rsi - Integer length of the second side of the right triangle.
 *
 * Return value:
 *  %rax - The square of the length of the hypotenuse as an integer.
 *
 * Notes:
 *  This function does not check for integer overflow.  Therefore, the return
 *  value may be less than either input.
 */
.global findHypSq
.type findHypSq, @function
findHypSq:

  imulq %rdi, %rdi
  imulq %rsi, %rsi
  movq %rdi, %rax
  addq %rsi, %rax

  retq

/*
 * Function: ratio
*
 * Description:
 *  Given integers a, b, and c in the ratio a/b = c/d, compute the value of
 *  the integer d.
 *
 * Inputs:
 *  %rdi - The value of a.
 *  %rsi - The value of b.
 *  %rdx - The value of c.
 *
 * Return value:
 *  %rax - return the value of d, which is calculated by (b*c)/a
 * 
 * Notes:
 *  cqo is for sign-extending, for division.
 *  This function does not check for integer overflow or underflow.  Therefore,
 *  the return value may be incorrect.
 */
.global ratio
.type ratio, @function
ratio:
  movq %rsi, %rax
  imulq %rdx, %rax
  cqo
  idivq %rdi
  
  retq
/*
 * Function: changeCard
 *
 * Description:
 * Given a 64-bit value which holds 8 cards, or 8 8-byte sized values where the first 4 bits contain the suite and the last 4 the value, increment the suite and the value of each card. If the suite and/or card value are the maximum value, wrap around to the minumum value. 
 *
 * Inputs:
 *  %rdi - A 64-bit integer representing a set of eight cards.  Each byte
 *         represents one card: the first nibble represent the suite, and the
 *         second nibble represents the value of the card.
 *
 * Return value:
 *  %rax - The set of eight cards in which the suite and card value of each
 *         card is incremented.
 */
.global changeCard
.type changeCard, @function

changeCard:
  movq $0xF0F0F0F0F0F0F0F0, %r8
  movq $0x0F0F0F0F0F0F0F0F, %r9
  movq $0x1111111111111111, %r10
 
  addq %r10, %rdi

  movq %rdi, %rax

  andq %r8, %rax
  andq %r9, %rdi 
  

  orq %rdi, %rax

  retq
