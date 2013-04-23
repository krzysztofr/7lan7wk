# Write a program that gives you ten tries to guess a random number
# from 1 to 100. If you would like, give a hint of "hotter" or "colder" 
# after the first guess.

to_guess := Random value(0,100) ceil

# for tests
#to_guess println

previous_guess := nil

for (try, 1, 10,
    guess := File standardInput readLine("try (" .. try .. "): ") asNumber()
    if (guess == to_guess) then (
        "Great success!" println
        break
    )

    if (previous_guess != nil) then (

        if (((to_guess - guess) abs) < ((to_guess - previous_guess) abs)) then (
            "Hotter" println
        ) else (
            "Colder" println
        )

    )

    previous_guess := guess

    if (try == 10,
        "You failed miserably :(" println
    )
)


