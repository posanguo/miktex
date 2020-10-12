## CMakeLists.txt                                       -*- CMake -*-
##
## Copyright (C) 2006-2020 Christian Schenk
## 
## This file is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published
## by the Free Software Foundation; either version 2, or (at your
## option) any later version.
## 
## This file is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this file; if not, write to the Free Software
## Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
## USA.

set(curl_sources
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/cleartext.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/cram.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/digest.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/digest_sspi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/krb5_gssapi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/krb5_sspi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/ntlm.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/ntlm_sspi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/oauth2.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/spnego_gssapi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/spnego_sspi.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/vauth.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/digest.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/ntlm.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vauth/vauth.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/bearssl.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/gskit.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/gtls.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/keylog.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mbedtls.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mbedtls_threadlock.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mesalink.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/nss.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/openssl.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/schannel.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/schannel_verify.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/sectransp.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/vtls.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/wolfssl.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/bearssl.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/gskit.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/gtls.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/keylog.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mbedtls.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mbedtls_threadlock.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/mesalink.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/nssg.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/openssl.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/schannel.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/sectransp.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/vtls.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vtls/wolfssl.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/ngtcp2.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/quiche.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/vquic.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/ngtcp2.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/quiche.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vquic/vquic.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vssh/libssh.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vssh/libssh2.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vssh/wolfssh.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/vssh/ssh.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/altsvc.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/amigaos.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/asyn-ares.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/asyn-thread.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/base64.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/conncache.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/connect.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/content_encoding.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/cookie.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_addrinfo.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ctype.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_des.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_endian.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_fnmatch.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_get_line.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_gethostname.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_gssapi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_memrchr.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_multibyte.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ntlm_core.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ntlm_wb.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_path.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_range.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_rtmp.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sasl.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sspi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_threads.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dict.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dotdot.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/easy.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/escape.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/file.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/fileinfo.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/formdata.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/ftp.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/url.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/ftplistparser.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/getenv.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/getinfo.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/gopher.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hash.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hmac.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostasyn.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostcheck.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostip.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostip4.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostip6.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostsyn.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http2.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_chunks.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_digest.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_negotiate.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_ntlm.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_proxy.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/idn_win32.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/if2ip.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/imap.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/inet_ntop.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/inet_pton.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/krb5.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/ldap.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/llist.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/md4.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/md5.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/memdebug.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/mime.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/mprintf.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/mqtt.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/multi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/netrc.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/non-ascii.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/nonblock.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/openldap.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/parsedate.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/pingpong.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/pop3.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/progress.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/psl.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/doh.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rand.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rename.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rtsp.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/security.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/select.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/sendf.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/setopt.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/sha256.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/share.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/slist.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/smb.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/smtp.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socketpair.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socks.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socks_gssapi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socks_sspi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/speedcheck.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/splay.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strcase.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strdup.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strerror.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strtok.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strtoofft.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/system_win32.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/telnet.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/tftp.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/timeval.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/transfer.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/urlapi.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/version.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/warnless.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/wildcard.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/x509asn1.c
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dynbuf.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/version_win32.c

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/altsvc.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/amigaos.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/arpa_telnet.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/asyn.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/conncache.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/connect.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/content_encoding.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/cookie.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_addrinfo.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_base64.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ctype.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_des.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_endian.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_fnmatch.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_get_line.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_gethostname.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_gssapi.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_hmac.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ldap.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_md4.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_md5.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_memory.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_memrchr.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_multibyte.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ntlm_core.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_ntlm_wb.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_path.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_printf.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_range.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_rtmp.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sasl.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sec.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_setup.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_setup_once.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sha256.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_sspi.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curl_threads.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/curlx.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dict.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dotdot.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/easyif.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/escape.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/file.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/fileinfo.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/formdata.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/ftp.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/url.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/ftplistparser.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/getinfo.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/gopher.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hash.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostcheck.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/hostip.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http2.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_chunks.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_digest.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_negotiate.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_ntlm.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/http_proxy.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/if2ip.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/imap.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/inet_ntop.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/inet_pton.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/llist.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/memdebug.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/mime.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/mqtt.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/multihandle.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/multiif.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/netrc.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/non-ascii.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/nonblock.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/parsedate.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/pingpong.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/pop3.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/progress.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/psl.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/doh.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/quic.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rand.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rename.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/rtsp.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/select.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/sendf.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/setopt.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/setup-vms.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/share.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/sigpipe.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/slist.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/smb.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/smtp.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/sockaddr.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socketpair.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/socks.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/speedcheck.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/splay.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strcase.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strdup.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strerror.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strtok.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/strtoofft.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/system_win32.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/telnet.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/tftp.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/timeval.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/transfer.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/urlapi-int.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/urldata.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/warnless.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/wildcard.h

  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/x509asn1.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/dynbuf.h
  ${CMAKE_CURRENT_SOURCE_DIR}/source/lib/version_win32.h

  ${CMAKE_CURRENT_SOURCE_DIR}/curl-version.h
)
