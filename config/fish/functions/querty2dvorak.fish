# Defined in /tmp/fish.9LArZt/querty2dvorak.fish @ line 2
function querty2dvorak
	set -l querty "-=qwertyuiop[]asdfghjkl;'zxcvbnm,./_+QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>?"
	set -l dvorak "[]',.pyfgcrl/=aoeuidhtns-;qjkxbmwvz{}\"<>PYFGCRL?+AOEUIDHTNS_:QJKXBMWVZ"
	tr "$querty" "$dvorak"
end
