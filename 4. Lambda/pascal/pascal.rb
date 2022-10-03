
def pascal(n)
    if n <= 0
        [1]
    else
        prev = pascal(n - 1)
        result = []
        0.upto(n - 2) do |i|
            result << prev[i] + prev[i + 1]
        end
        [1] + result + [1]
    end
end

# p pascal(5)