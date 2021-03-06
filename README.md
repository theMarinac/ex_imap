# Elixir IMAP library

WIP: Library for [IMAP protocol](https://en.wikipedia.org/wiki/Internet_Message_Access_Protocol) written in Elixir.

TODO:

- Tick everything <span style="color:green">green</span> on [this list](https://www.imapwiki.org/Specs)
- That means all of this:
  - [RFC2087](https://tools.ietf.org/html/rfc2087) Capability name
  - [RFC2177](https://tools.ietf.org/html/rfc2177) QUOTA
  - [RFC2193](https://tools.ietf.org/html/rfc2193) IDLE (L)
  - [RFC2221](https://tools.ietf.org/html/rfc2221) MAILBOX-REFERRALS
  - [RFC2342](https://tools.ietf.org/html/rfc2342) LOGIN-REFERRALS
  - [RFC2971](https://tools.ietf.org/html/rfc2971) NAMESPACE (L)
  - [RFC3348](https://tools.ietf.org/html/rfc3348) ID
  - [RFC3502](https://tools.ietf.org/html/rfc3502) CHILDREN
  - [RFC3516](https://tools.ietf.org/html/rfc3516) MULTIAPPEND
  - [RFC3691](https://tools.ietf.org/html/rfc3691) BINARY (L)
  - [RFC4314](https://tools.ietf.org/html/rfc4314) UNSELECT
  - [RFC4314](https://tools.ietf.org/html/rfc4314) ACL
  - [RFC4315](https://tools.ietf.org/html/rfc4315) RIGHTS=\*
  - [RFC4467](https://tools.ietf.org/html/rfc4467) UIDPLUS (L)
  - [RFC4469](https://tools.ietf.org/html/rfc4469) URLAUTH (L)
  - [RFC4731](https://tools.ietf.org/html/rfc4731) CATENATE (L)
  - [RFC4959](https://tools.ietf.org/html/rfc4959) ESEARCH (L)
  - [RFC4978](https://tools.ietf.org/html/rfc4978) SASL-IR (L)
  - [RFC5032](https://tools.ietf.org/html/rfc5032) COMPRESS=DEFLATE (L)
  - [RFC5161](https://tools.ietf.org/html/rfc5161) WITHIN
  - [RFC5182](https://tools.ietf.org/html/rfc5182) ENABLE (L)
  - [RFC5255](https://tools.ietf.org/html/rfc5255) SEARCHRES
  - [RFC5255](https://tools.ietf.org/html/rfc5255) I18NLEVEL=1 (L)
  - [RFC5255](https://tools.ietf.org/html/rfc5255) I18NLEVEL=2
  - [RFC5256](https://tools.ietf.org/html/rfc5256) LANGUAGE
  - [RFC5256](https://tools.ietf.org/html/rfc5256) SORT (L)
  - [RFC5256](https://tools.ietf.org/html/rfc5256) THREAD=ORDEREDSUBJECT
  - [RFC5257](https://tools.ietf.org/html/rfc5257) THREAD=REFERENCES
  - [RFC5258](https://tools.ietf.org/html/rfc5258) ANNOTATE-EXPERIMENT-1
  - [RFC5259](https://tools.ietf.org/html/rfc5259) LIST-EXTENDED
  - [RFC5267](https://tools.ietf.org/html/rfc5267) CONVERT (L)
  - [RFC5267](https://tools.ietf.org/html/rfc5267) ESORT (L)
  - [RFC5267](https://tools.ietf.org/html/rfc5267) CONTEXT=SEARCH (L)
  - [RFC5464](https://tools.ietf.org/html/rfc5464) CONTEXT=SORT (L)
  - [RFC5465](https://tools.ietf.org/html/rfc5465) METADATA
  - [RFC5466](https://tools.ietf.org/html/rfc5466) NOTIFY (L)
  - [RFC5524](https://tools.ietf.org/html/rfc5524) FILTERS
  - [RFC5530](https://tools.ietf.org/html/rfc5530) URLAUTH=BINARY
  - [RFC5550](https://tools.ietf.org/html/rfc5550) -
  - [RFC5819](https://tools.ietf.org/html/rfc5819) URL-PARTIAL (L)
  - [RFC5957](https://tools.ietf.org/html/rfc5957) LIST-STATUS
  - [RFC6154](https://tools.ietf.org/html/rfc6154) SORT=DISPLAY
  - [RFC6154](https://tools.ietf.org/html/rfc6154) SPECIAL-USE
  - [RFC6203](https://tools.ietf.org/html/rfc6203) CREATE-SPECIAL-USE
  - [RFC6785](https://tools.ietf.org/html/rfc6785) SEARCH=FUZZY
  - [RFC6851](https://tools.ietf.org/html/rfc6851) IMAPSIEVE=\*
  - [RFC6855](https://tools.ietf.org/html/rfc6855) MOVE
  - [RFC7162](https://tools.ietf.org/html/rfc7162) UTF8=\*
  - [RFC7162](https://tools.ietf.org/html/rfc7162) CONDSTORE (L)
  - [RFC7377](https://tools.ietf.org/html/rfc7377) QRESYNC (L)
  - [RFC7888](https://tools.ietf.org/html/rfc7888) MULTISEARCH
  - [RFC7888](https://tools.ietf.org/html/rfc7888) LITERAL+ (L)
  - [RFC7889](https://tools.ietf.org/html/rfc7889) LITERAL-
  - [RFC8437](https://tools.ietf.org/html/rfc8437) APPENDLIMIT
  - [RFC8438](https://tools.ietf.org/html/rfc8438) UNAUTHENTICATE
  - [RFC8440](https://tools.ietf.org/html/rfc8440) STATUS=SIZE
  - [RFC8457](https://tools.ietf.org/html/rfc8457) LIST-MYRIGHTS
  - [RFC8474](https://tools.ietf.org/html/rfc8474) -
  - [RFC8508](https://tools.ietf.org/html/rfc8508) OBJECTID
  - [RFC8514](https://tools.ietf.org/html/rfc8514) REPLACE "
