/*
Copyright (c) 2013 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Author: Leonardo de Moura
*/
#pragma once
#include "kernel/expr.h"

namespace lean {
class metavar_env;
/**
   \brief Replace the free variables with indices 0, ..., n-1 with s[n-1], ..., s[0] in e.

   \pre s[0], ..., s[n-1] must be closed expressions (i.e., no free variables).

   \remark When the parameter menv != nullptr, this function will minimize the use
   of the local entry inst in metavariables occurring in \c e.
*/
expr instantiate_with_closed(expr const & e, unsigned n, expr const * s, metavar_env const * menv = nullptr);
inline expr instantiate_with_closed(expr const & e, unsigned n, expr const * s, metavar_env const & menv) {
    return instantiate_with_closed(e, n, s, &menv);
}
inline expr instantiate_with_closed(expr const & e, std::initializer_list<expr> const & l) {
    return instantiate_with_closed(e, l.size(), l.begin());
}
inline expr instantiate_with_closed(expr const & e, expr const & s, metavar_env const * menv = nullptr) {
    return instantiate_with_closed(e, 1, &s, menv);
}
inline expr instantiate_with_closed(expr const & e, expr const & s, metavar_env const & menv) {
    return instantiate_with_closed(e, s, &menv);
}
/**
   \brief Similar to instantiate_with_closed, but does not use an assertion for
   testing whether arguments are close or not.
   This version is useful, for example, when we want to treat metavariables as closed terms.
*/
expr instantiate_with_closed_relaxed(expr const & a, unsigned n, expr const * s, metavar_env const * menv = nullptr);
inline expr instantiate_with_closed_relaxed(expr const & a, unsigned n, expr const * s, metavar_env const & menv) {
    return instantiate_with_closed_relaxed(a, n, s, menv);
}

/**
   \brief Replace the free variables with indices 0, ..., n-1 with s[n-1], ..., s[0] in e.

   \remark When the parameter menv != nullptr, this function will minimize the use
   of the local entry inst in metavariables occurring in \c e.
*/
expr instantiate(expr const & e, unsigned n, expr const * s, metavar_env const * menv = nullptr);
inline expr instantiate(expr const & e, unsigned n, expr const * s, metavar_env const & menv) {
    return instantiate(e, n, s, &menv);
}
inline expr instantiate(expr const & e, std::initializer_list<expr> const & l) {
    return instantiate(e, l.size(), l.begin());
}
inline expr instantiate(expr const & e, expr const & s, metavar_env const * menv = nullptr) {
    return instantiate(e, 1, &s, menv);
}
inline expr instantiate(expr const & e, expr const & s, metavar_env const & menv) {
    return instantiate(e, s, &menv);
}
/**
   \brief Replace free variable \c i with \c s in \c e.
*/
expr instantiate(expr const & e, unsigned i, expr const & s, metavar_env const * menv = nullptr);
inline expr instantiate(expr const & e, unsigned i, expr const & s, metavar_env const & menv) {
    return instantiate(e, i, s, &menv);
}

expr apply_beta(expr f, unsigned num_args, expr const * args, metavar_env const * menv = nullptr);
inline expr apply_beta(expr f, unsigned num_args, expr const * args, metavar_env const & menv) {
    return apply_beta(f, num_args, args, &menv);
}
bool is_head_beta(expr const & t);
expr head_beta_reduce(expr const & t, metavar_env const * menv = nullptr);
inline expr head_beta_reduce(expr const & t, metavar_env const & menv) {
    return head_beta_reduce(t, &menv);
}
expr beta_reduce(expr t, metavar_env const * menv = nullptr);
inline expr beta_reduce(expr t, metavar_env const & menv) {
    return beta_reduce(t, &menv);
}
}
