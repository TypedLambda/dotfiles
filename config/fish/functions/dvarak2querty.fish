# Defined in /tmp/fish.fCGJfR/dvarak2querty.fish @ line 2
function dvarak2querty
	set -l querty "-=qwertyuiop[]asdfghjkl;'zxcvbnm,./_+QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>?"
	set -l dvorak "[]',.pyfgcrl/=aoeuidhtns-;qjkxbmwvz{}\"<>PYFGCRL?+AOEUIDHTNS_:QJKXBMWVZ"

	tr "$dvorak" "$querty"
end
