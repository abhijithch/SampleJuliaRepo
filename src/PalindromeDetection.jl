module PalindromeDetection
# Code submitted to http://rosettacode.org/wiki/Palindrome_detection#Julia

# Recursive
function palindrome(s)
    len = length(s)
    if(len==0 || len==1)
        return true
    end
    if(s[1] == s[len])
        return palindrome(SubString(s,2,len-1))
    end
    return false
end

end