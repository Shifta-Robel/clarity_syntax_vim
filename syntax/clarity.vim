" clarity syntax file

setlocal iskeyword+=-
setlocal iskeyword+=!
setlocal iskeyword+=?
setlocal iskeyword+=<
setlocal iskeyword+=>
setlocal iskeyword+=+
setlocal iskeyword+==

" Functions
syn keyword clarityFunction and append as-contract as-max-len? asserts! at-block begin bit-and bit-not bit-or bit-shift-left bit-shift-right bit-xor buff-to-int-be buff-to-int-le buff-to-uint-be buff-to-uint-le concat contract-call? contract-of default-to define-constant define-data-var define-fungible-token define-map define-non-fungible-token define-private define-public define-read-only define-trait element-at element-at? err filter fold from-consensus-buff? ft-burn? ft-get-balance ft-get-supply ft-mint? ft-transfer? get get-block-info? get-burn-block-info? hash160 if impl-trait index-of index-of? int-to-ascii int-to-utf8 is-eq is-err is-none is-ok is-some is-standard keccak256 len let list log2 map map-delete map-get? map-insert map-set match merge mod nft-burn? nft-get-owner? nft-mint? nft-transfer? not ok or pow principal-construct? principal-destruct? principal-of? print replace-at? secp256k1-recover? secp256k1-verify sha256 sha512 sha512/256 slice? some sqrti string-to-int? string-to-uint? stx-account stx-burn? stx-get-balance stx-transfer-memo? stx-transfer? to-consensus-buff? to-int to-uint try! tuple unwrap! unwrap-err! unwrap-err-panic unwrap-panic use-trait var-get var-set xor * + - / > >= < <=

" Keywords
syn keyword clarityKeyword block-height burn-block-height chain-id contract-caller is-in-mainnet is-in-regtest none stx-liquid-supply tx-sender tx-sponsor?

" comments
syn match clarityComment "^;;.*$"

" Define the keywords
syn keyword clarityTypes int uint bool principal optional response

" Define the constants
syn keyword clarityBooleans true false
syn match clarityString /"\zs[^"]\+\ze"/
syn match clarityInteger /\d\+/
syn match clarityUnsigned /u\d\+/
syn match clarityPrincipal /'\v(S[T|P])[A-Z0-9]+/
syn region clarityBuffer start=/0x[[:xdigit:]]\+/ end=/[^[:xdigit:]]/
syn match clarityPrincipal /'\(SP\|ST\)[0-9a-fA-F]{40}/
syn match clarityTraits '<\zs[^>]*\ze>'

" Assign colors to the keyword and datatype groups
highlight link clarityFunction Function
highlight link clarityKeyword Keyword
highlight link clarityTypes Type
highlight link clarityString String
highlight link clarityInteger Number
highlight link clarityUnsigned Number
highlight link clarityBooleans Boolean
highlight link clarityPrincipal Special 
highlight link clarityTraits SpecialChar
highlight link clarityBuffer Constant 
highlight link clarityComment Comment
