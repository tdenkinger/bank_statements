#!/usr/bin/env ruby

# Input is lines from a PDF bank statement
# Example: 07/02 Amazon.com*R763J3170 Amzn.com/bill WA 7.39

DATA.each do | line |
  parts = line.split(' ')

  month = parts.shift
  day   = parts.shift
  transaction_date  = "#{month}/#{day}"

  month = parts.shift
  day   = parts.shift
  post_date = "#{month}/#{day}"

  amount = parts.pop
  detail = parts.join(' ')

  puts [transaction_date, post_date, detail, amount].join("\t")
end

__END__
