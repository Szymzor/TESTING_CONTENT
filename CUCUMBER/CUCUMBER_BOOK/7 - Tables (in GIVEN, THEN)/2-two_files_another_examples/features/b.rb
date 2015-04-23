Given(/^Mam \$(\d+) na moim koncie$/) do |arg1|
end

When(/^postanowie wydac \$(\d+)$/) do |arg1|
end

Then(/^powinienem otrzymac (.* \$(\d+) .*)$/) do |word, number|
  puts "WARTOSC LICZBOWA: #{number}"
end

Then(/^pozostala ilosc kasy wyniesie \$(\d+)$/) do |arg1|
end
