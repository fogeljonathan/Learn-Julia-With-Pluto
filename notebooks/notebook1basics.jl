### A Pluto.jl notebook ###
# v0.19.5

using Markdown
using InteractiveUtils

# ╔═╡ 252cdc60-fdf3-11ec-3f07-0f3a49643d67
md"""
# Notebook 1 - Basics

Welcome to the Introductory Julia Pluto Notebook 1 - Basics. This notebook will help begin your journey with Julia, from printing text to the console to writing functions.

## Printing Text

Hi! Welcome to Julia. Let's begin at the classic starting point: print statements.

In Julia, there are two common printing functions; print(), and println(), with the difference being that println() starts a new line after the argument.

For example: 
```
Julia> print("Test Statement")

Test Statement
```

Let's try it out.
"""

# ╔═╡ fc8f8162-1d45-44c8-91ac-34f6991cfc99
#Use print() or println() to print "Hello World!" below. (hint: include the quotations)

#Then hit the play button in the corner of the cell to run the code.



# ╔═╡ 881e43f0-921c-4f5d-9716-17fabc1d52f7
md"""
## Comments

In the above exercise, you may have noticed the "#" symbol before the instructions. This is called a comment, and it is used to write text that you do not want to run as code. Comments are commonly used as a description for your code, for ease of reading.

There are 2 common ways to comment text. One, seen above, uses a single pound(#) symbol before a single line of text. The other, a multi-line comment, uses symbols "#=" and "=#" to block out a section.

Julia will not execute anything inside a comment. This means that you can also comment out a function, such as a print() call, and it will not run.

For Example:
```
Julia> #This is a comment.


Julia> #=
This is a multiline comment.
This is the second line of that comment!
Why not one more!
=#


Julia> #println("This also won't return anything")

```


"""

# ╔═╡ 1fb686c3-227e-46f3-9d6c-2e10fee82f1e
md"""
## Types

Everything in Julia has a type. If types are a new concept to you, then you can think of them as a category of data. The word "Cheese" is data, and the number 3 is data, but they are categorically different. It is important to understand how Julia classifies and understands types.

Julia uses a hierarchical typing system. This means that for a given type, there may be subtypes below it and supertypes above it. At the top of the heirarchy is "Any". No matter what, data is within the "Any" type. 

For instance the type "Number" has subtype "Int"(Short for Integer) and supertype "Any".

Some common types include:

Int : Integer - ex. 1

Float : Number with a decimal point - ex. 1.5 

String : A string of letters or words - "Hello World"

Bool : Either true or false, but can also be represented as 1 or 0

Nothing : The type to describe emptyness, has no values associated with it

Array : A chart of data - ex.[1 2 3 ; 4 5 6] 

Vector : An Array that is only 1 dimensional - ex. [1,2,3]

Know that there are many different types in Julia, and it is possible to even create custom types, so this is not, by any means, a comprehensive list.

Julia has a built-in function, typeof(), which returns whatever data type the input is. For Example:

```
Julia> typeof("Descriptive Text")
String

Julia> typeof(10)
Int64

Julia> typeof(nothing)
Nothing
```

Below are some exercises to showcase Julia typing.
"""

# ╔═╡ df05a4a7-66fd-4c7a-b22d-74a8c8ae6755
begin
	# For the following, guess the type, and then remove the pound symbol and check the answer by running the cell.

	#typeof(true)
	#typeof(10.5)
	#typeof(10.0)
	#typeof(1+1)
end

# ╔═╡ 956405b2-611c-4fac-a620-313a8b27405d
md"""
## Defining and Using Variables

Next, we will learn to create and variables- a crucial and ubiquitous skill.

Julia makes variable definition extremely straightforward. Let's say you want to define a variable to store the number of continents. The syntax is:
```
Julia> num_continents = 7
```
But what good is a variable if you can't use it? Luckily, Julia makes reading the variable just as easy.
```
Julia> num_continents
7
```
Now say, for instance, a giant landmass appears in the middle of the sea. Besides total world crisis, that also has major implications on your continent count! We now have to add 1 to it.

The syntax of this operation, and all the ways you could do it will be explained in a later notebook, but the following will do this or you. If you are new to programming, this may look unintuitive, but the way to think through it is that the right side of the equation will be fully completed, and then the variable on the left will be set to it.
```
Julia> num_continents = num_continents + 1
Julia> num_continents
8
```
Below is an exercise to go over this information.
"""

# ╔═╡ 7c8efad3-c8a8-4255-848b-98ab0f1dc505


# ╔═╡ Cell order:
# ╟─252cdc60-fdf3-11ec-3f07-0f3a49643d67
# ╠═fc8f8162-1d45-44c8-91ac-34f6991cfc99
# ╟─881e43f0-921c-4f5d-9716-17fabc1d52f7
# ╟─1fb686c3-227e-46f3-9d6c-2e10fee82f1e
# ╠═df05a4a7-66fd-4c7a-b22d-74a8c8ae6755
# ╟─956405b2-611c-4fac-a620-313a8b27405d
# ╠═7c8efad3-c8a8-4255-848b-98ab0f1dc505
