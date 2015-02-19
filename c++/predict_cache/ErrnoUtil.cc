/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#include "ErrnoUtil.h"
#include <string>
using std::string;
#include <sstream>
using std::ostringstream;

const char* errno_token(int e)
{
    switch (e) {
    case E2BIG:
        return "E2BIG";
    case EACCES:
        return "EACCESS";
    case EADDRINUSE:
        return "EADDRINUSE";
    case EADDRNOTAVAIL:
        return "EADDRNOTAVAIL";
    case EAFNOSUPPORT:
        return "EAFNOSUPPORT";
    case EALREADY:
        return "EALREADY";
    case EBADF:
        return "EBADF";
    case EBADMSG:
        return "EBADMSG";
    case EBUSY:
        return "EBUSY";
    case ECANCELED:
        return "ECANCELED";
    case ECHILD:
        return "ECHILD";
    case ECONNABORTED:
        return "ECONNABORTED";
    case ECONNREFUSED:
        return "ECONNREFUSED";
    case ECONNRESET:
        return "ECONNRESET";
    case EDEADLK:
        return "EDEADLK";
    case EDESTADDRREQ:
        return "EDESTADDRREQ";
    case EDOM:
        return "EDOM";
    case EDQUOT:
        return "EDQUOT";
    case EEXIST:
        return "EEXIST";
    case EFAULT:
        return "EFAULT";
    case EFBIG:
        return "EFBIG";
    case EHOSTUNREACH:
        return "EHOSTUNREACH";
    case EIDRM:
        return "EIDRM";
    case EILSEQ:
        return "EILSEQ";
    case EINPROGRESS:
        return "EINPROGRESS";
    case EINTR:
        return "EINTR";
    case EINVAL:
        return "EINVAL";
    case EIO:
        return "EIO";
    case EISCONN:
        return "EISCONN";
    case EISDIR:
        return "EISDIR";
    case ELOOP:
        return "ELOOP";
    case EMFILE:
        return "EMFILE";
    case EMLINK:
        return "EMLINK";
    case EMSGSIZE:
        return "EMSGSIZE";
    case EMULTIHOP:
        return "EMULTIHOP";
    case ENAMETOOLONG:
        return "ENAMETOOLONG";
    case ENETDOWN:
        return "ENETDOWN";
    case ENETRESET:
        return "ENETRESET";
    case ENETUNREACH:
        return "ENETUNREACH";
    case ENFILE:
        return "ENFILE";
    case ENOBUFS:
        return "ENOBUFS";
    case ENODATA:
        return "ENODATA";
    case ENODEV:
        return "ENODEV";
    case ENOENT:
        return "ENOENT";
    case ENOEXEC:
        return "ENOEXEC";
    case ENOLCK:
        return "ENOLCK";
    case ENOLINK:
        return "ENOLINK";
    case ENOMEM:
        return "ENOMEM";
    case ENOMSG:
        return "ENOMSG";
    case ENOPROTOOPT:
        return "ENOPROTOOPT";
    case ENOSPC:
        return "ENOSPC";
    case ENOSR:
        return "ENOSR";
    case ENOSTR:
        return "ENOSTR";
    case ENOSYS:
        return "ENOSYS";
    case ENOTCONN:
        return "ENOTCONN";
    case ENOTDIR:
        return "ENOTDIR";
    case ENOTEMPTY:
        return "ENOTEMPTY";
    case ENOTSOCK:
        return "ENOTSOCK";
    case ENOTSUP:
        return "ENOTSUP";
    case ENOTTY:
        return "ENOTTY";
    case ENXIO:
        return "ENXIO";
        /* Same as ENOTSUP
    case EOPNOTSUPP:
        return "EOPNOTSUPP";
        */
    case EOVERFLOW:
        return "EOVERFLOW";
    case EPERM:
        return "EPERM";
    case EPIPE:
        return "EPIPE";
    case EPROTO:
        return "EPROTO";
    case EPROTONOSUPPORT:
        return "EPROTONOSUPPORT";
    case EPROTOTYPE:
        return "EPROTOTYPE";
    case ERANGE:
        return "ERANGE";
    case EROFS:
        return "EROFS";
    case ESPIPE:
        return "ESPIPE";
    case ESRCH:
        return "ESRCH";
    case ESTALE:
        return "ESTALE";
    case ETIME:
        return "ETIME";
    case ETIMEDOUT:
        return "ETIMEDOUT";
    case ETXTBSY:
        return "ETXTBSY";
    case EWOULDBLOCK:
        return "EWOULDBLOCK";
    case EXDEV:
        return "EXDEV";
    default:
        return "???";
    }
}

string errno_string(int e)
{
    ostringstream oss;
    oss << "errno " << errno_token(e) << " (" << e << "): " << strerror(errno);
    return oss.str();
}
