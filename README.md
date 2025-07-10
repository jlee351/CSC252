##############################################################################
#
# File: student.S
#
# Description:
#   This file contains skeleton source code that students should complete so that it performs the computations required in the Machine Problem handout.
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
