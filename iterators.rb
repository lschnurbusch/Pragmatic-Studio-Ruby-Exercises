def conversation
    puts "Hello"
    yield
    puts "Goodbye"
end

def n_times(number)
    1.upto(number) do |count|
        yield(count)
    end
end

