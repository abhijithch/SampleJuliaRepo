using Base.Test
require("PalindromeDetection")

test_type = length(ARGS) == 1 ? ARGS[1] : "ALL"

if test_type == "ALL" || test_type == "TEST" || test_type == "INSTALL"
  @test PalindromeDetection.palindrome("ingirumimusnocteetconsumimurigni") == true
end

if test_type == "ALL" || test_type == "PERF"
  x = PalindromeDetection.palindrome("ingirumimusnocteetconsumimurigni")
  @time for run = 1:1000000
    x = PalindromeDetection.palindrome("ingirumimusnocteetconsumimurigni")
  end
end
