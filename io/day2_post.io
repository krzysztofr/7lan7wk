# Some code from day 2 - postOffice

postOffice := Object clone
postOffice packageSender := method(call sender)
postOffice messageTarget := method(call target)
postOffice messageArgs := method(call message arguments)
postOfice messageName := method(call message name)

mailer := Object clone
mailer deliver := method(postOffice packageSender)


