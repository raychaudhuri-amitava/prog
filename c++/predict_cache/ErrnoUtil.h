/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */
#ifndef _RM_ERRNO_
#define _RM_ERRNO_

#include <errno.h>
#include <string.h>

#include <string>

/**
 * Given errno int EFOO this will return the
 * _string_ "EFOO"
 */
const char* errno_token(int e);

/**
 * produces a nice error string
 * of "errno EFOO (9): This is a foo"
 */
std::string errno_string(int e);

#endif
