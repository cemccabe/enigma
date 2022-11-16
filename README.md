# Enigma
## Functionality
I would give myself a 2.5 on functionality. A big hole in my code is an inability to accept characters not in the character set (e.g. '!' or ',' or '\n'). I believe I know how to fix it, but I managed my time poorly and didn't get a chance to go back and work on it. However, if no special characters are contained in the message, the Enigma class #encrypt and #decrypt methods, as well as the CLI, work as expected.

## Object Oriented Programming
I would give myself a 3 on OOP practices. The project is broken down into logical components with the use of the single Enigma class along with the MakeMove module. This keeps the Enigma class well organized and follows the Law of Demeter. There is no inheritance, as no state needed to be stored between classes.

## Ruby Conventions and Mechanics
I would give myself a 3 in this category. My formatting is consistent throughtout the project and is easy to read. I feel like I use several best-choice enumerables, particularly #filter_map and #with_index in my #shift helper method. However, some of my lines of code can be long with chained enumerables, which may detract from its readability.

## Test Driven Development
I would give myslef a 2 on TDD. I believe all my methods are tested appropriately, and I have 100% coverage on SimpleCov. However, no edge cases are tested (in particular the aforementioned special character disaster).

## Version Control
I would give myself a 3 on version control. I made and merged 6 pull requests, but I didn't organize when I made a PR that well and could probably do without 2 of them. However, I worked a separate branch for different functionality and committed often (21 commits).
