#!/usr/bin/env ruby

# Input is lines from an Apple PDF statement
# Example: 10/03/2024 Patreon* Membership 600 Townsend 5th Floor Internet 94103 CA USA 2% $0.10 $5.00

DATA.each do | line |
  parts = line.split(' ')

  transaction_date  = parts.shift
  amount = parts.pop
  detail = parts.join(' ')

  puts [transaction_date, '', detail, '', amount].join("\t")
end

__END__
