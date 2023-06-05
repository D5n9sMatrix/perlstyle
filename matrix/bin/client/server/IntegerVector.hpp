/**
 * where we interpret xx as a scalar here.
 * Notice that a nonzero vector when centered may be the zero vector. This
 * leads us to suspect that some properties that depend on a dot product are
 * not invariant to centering.
 */

#ifdef IntegerVector
#define integers(write, prod, vector)
#define write(x, y, string = "")
#define prod(x, na.rm = FALSE)
#define vector(x, mode_t, length = 0L)
#endif // Integer Vector
