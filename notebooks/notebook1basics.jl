### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 252cdc60-fdf3-11ec-3f07-0f3a49643d67
md"""
# Notebook 1 - Basics
Welcome to the Introductory Julia Pluto Notebook 1 - Basics. This notebook will help begin your journey with Julia, from printing text to the console to writing functions.
## Printing Text
Hi! Welcome to Julia. Let's begin at the classic starting point: print statements. In the context of programming languages, printing refers to a function that simply returns text back.
In Julia, there are two common printing functions; print(), and println(), with the latter starting a new line after the argument.
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
## Commenting
In the above exercise, you may have noticed the "#" symbol before the instructions. This is called a comment, and it is used to write text that you do not want to run as code. Comments are commonly used as a description for your code, for ease of reading.
There are 2 common ways to comment text. One, seen above, uses a single pound(#) symbol before a single line of text. The other, a multi-line comment, uses symbols "#=" and "=#" to block out a section.
Julia will not execute anything inside a comment. This means that you can also comment out a function, such as a print() call, and it will not run.
For Example:
```
#This is a comment.
#=
This is a multiline comment.
This is the second line of that comment!
Why not one more!
=#
#println("This also won't return anything")
```
"""

# ╔═╡ 1fb686c3-227e-46f3-9d6c-2e10fee82f1e
md"""
## Types
Everything in Julia has a type. If types are a new concept to you, then you can think of them as a category of data. The word "Cheese" is data, and the number 3 is data, but they are categorically different. It is important to understand how Julia classifies and understands types.
Julia uses a hierarchical typing system. This means that for a given type, there may be subtypes below it and supertypes above it. At the top of the heirarchy is "Any". No matter what, data is within the "Any" type. 
For instance the type "Number" has subtype "Int"(Short for Integer) and supertype "Any".
Some common types include:

|Type|Description|Example|
|:---|:---|:---|
|Int|Integer|1 , 2 , 3|
|Float|Number with a decimal place|0.5, 1.5, 2.0|
|String|A string of letters and characters|"My name is Jonathan"|
|Bool|Either true or false- can also be represented as 1 or 0|true, false|
|Nothing|The type to describe emptyness, has no values associated with it|nothing|
|Array|A multidimensional chart of data|[1 2 3 ;  4 5 6] |
|Vector|An Array that is only 1 dimensional|[1,2,3]|

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
#Guess the type, and then remove the pound symbol and check the answer by running the cell.

#typeof(true)

# ╔═╡ 21d6f304-2f24-42bf-ac70-ac68a5f704a6
#Guess the type, and then remove the pound symbol and check the answer by running the cell.

#typeof(10.5)

# ╔═╡ 23f16fd5-7abf-4ea6-b22c-f67ec47f8531
#Guess the type, and then remove the pound symbol and check the answer by running the cell.

#typeof(10.0)

# ╔═╡ 982d4d67-c102-4dfb-a8d8-7f97719ee525
#Guess the type, and then remove the pound symbol and check the answer by running the cell.

#typeof(1+1)

# ╔═╡ 1781d90a-8c96-4169-9d15-dbdc38272df2
#Guess the type, and then remove the pound symbol and check the answer by running the cell.

#typeof("5")

# ╔═╡ 956405b2-611c-4fac-a620-313a8b27405d
md"""
## Defining and Using Variables
Next, we will learn to create and variables- a crucial and ubiquitous skill.
Julia makes variable definition extremely straightforward. Let's say you want to define a variable to store the number of continents. The syntax is:
```
Julia> num_continents = 7
```
But what good is a variable if you can't use it? Luckily, Julia makes reading the variable just as easy. Simple call the name of the variable, and its value will be returned.
```
Julia> num_continents
7
```
Now say, for instance, a giant landmass appears in the middle of the sea. Besides total world crisis, that also has major implications on your continent count! We now have to add 1 to it.
The syntax of this operation, although potentially straightforward, will be explained in a later notebook, but the following will update your count for you. If you are new to programming, this may look unintuitive, but the way to think through it is that the right side of the equation will be fully completed, and then the variable on the left will be set to it.
```
Julia> num_continents = num_continents + 1
Julia> num_continents
8
```
Below is an exercise to go over this information.
"""

# ╔═╡ 7c8efad3-c8a8-4255-848b-98ab0f1dc505
#Below, create a variable named siblings, and set it to the number of siblings you have.



# ╔═╡ a5e12d09-7f33-498e-b665-445b4c652b4c
#Now, call the variable, as shown in the previous tutorial, and be amazed as Julia returns the value you entered.



# ╔═╡ 3ea31749-e88f-4649-a59c-d8c9bd57f66b
md"""
## Comparison Operators
Comparison Operation is a term used to describe the very simple comparisons between two peices of data, and always returns a bool(remember from the "types" tutorial that a bool refers to either true or false). This is a very fancy way of describing operations that you are certainly already familiar with, like  < , > and = . Using comparison operations is very straightforward.

|Operator|Meaning|Notes|
|:---|:---|:---|
|<|Less Than|For numericals only. Returns true if the left is less than the right.|
|<=|Less Than or Equal To|For numericals only. Returns true if the left is less than or equal to the right.|
|>|Greater Than| For numericals only. Returns true if the left is greater than the right.|
|>=|Greater Than or Equal To|For numericals only. Returns true if the left is greater than or equal to the right.|
|==|Equal To|Returns true if the left is the same exact data as the right.|
|!=|Not Equal To|Returns true if the left is not the same exact data as the right.|

For Example:
```
Julia> 1<1
false
Julia> 1<=1
true
Julia> "Example" == "Example"
true
Julia> "Example" != 6
true
```
"""

# ╔═╡ 6e593c4d-102b-4f35-a55f-eac79945ba32
md"""
## Logical Operators
Logical Operation is a term used to describe boolean logic. Simply put, it describes the functions of "and" and "or." It compares two bools and outputs a bool. Below is a description of the logical operators.

|Operator|Meaning|Notes|
|:---|:---|:---|
|&&|And|Returns true if both arguments are true.|
|\|\||Or|Returns true if at least 1 arguments are true.|

For Example:
```
Julia> true && false
false
Julia> true || false
true
```
"""

# ╔═╡ 111d3dff-6303-4ff7-8335-43aa333ec942
md"""
## Conditional Evaluators
Here is when things get interesting. Conditional operators are the driving behind any logic you can write in Julia. The Conditional Evaluators are "if", "elseif", and "else." Below is a description of each.

|Evaluator|Meaning|
|:---|:---|
|if|Evaluates a operator. If true, executes a code block.|
|elseif|Used after an "if" that did not return true. Evaluates a operator. If true, executes a code block.|
|else|Used after an "if" or an "elseif" that did not return true. Executes a code block.|

Conditional operators introduce new formatting. You may have noticed the idea of a "code block" above. Code blocks are simply sections contained within the keywords "begin" and "end." In the case of conditional evaluators, the opertors themselves act as "begin" statements, so they are not needed. Aditionally, the spacing of the evaluators is now important. The beginning of lines in each code block must be one tab in from the previous evaluator. You can, of course, use both comparison operators, and logical operators for evaluation.
For example, if you want to determine whether the number 12 is bigger than 10 but smaller than 15, you might write:
```
if 12 < 10
	print("Too Small!")
elseif 12 > 15
	print("Too Big!")
else
	print("Just Right!")
end
```
However, you could also do this with logical operators, seen below:
```
if 12>10 && 12<15
	print("Just Right!")
end
```
"""

# ╔═╡ 42b98074-0560-4294-98f5-313216054e20
md"""
## Mathematical Operators
Like it or not, math is a big aprt of coding, but don't run away too fast! The operations we'll do here will be quite straightforward, and at an elementary school level. Below is a description of the most commonly used ones.

|Evaluator|Name|Description|Example|
|:--|:--|:--|:--|
|+|Binary Plus|Performs Addition|1+1=2|
|-|Binary Minus|Performs Subtraction|2-1=1|
|*|Times|Performs Multiplication|2*2=4|
|/|Divide|Performs Division|4/2=2|
|^|Power|Raises to a Power|3^2=9|
|%|Remainder|Retrieves the Remainder after Division|5%2=1|

All of the above operators should be relatively familiar.

Below is an exercise to go over this information.
"""

# ╔═╡ ac2bb7c0-0ed8-4917-8a7a-a8e59365411b
#Guess the output, and then remove the pound symbol on the next line and check your answer by running the cell.

#1-3

# ╔═╡ 7f61587b-14fa-4545-abe5-c732070f1a9d
#Guess the output, and then remove the pound symbol on the next line and check your answer by running the cell.

#13%10

# ╔═╡ 895287b3-3bae-4419-b475-8f3ea1c9f537
#Guess the output, and then remove the pound symbol on the next line and check your answer by running the cell.

#13%14

# ╔═╡ 9086e08a-7e4a-403e-b1a8-00468794f227
#Guess the output, and then remove the pound symbol on the next line and check your answer by running the cell.

#9^0.5

# ╔═╡ 9849895f-df48-4f8b-ae06-bc7ec8783172
md"""
## Functions
For the final chapter in this Pluto Notebook, we will hit on perhaps the most important skill for using Julia: using and defining functions.

A function is a pre-defined set of operations that you can call all at once. You can imagine that if you reused a certain operation multiple times in a script, it may save time to define a function that does it all in one call, saving you time. In Julia, a function has a 3 components; its name, its necessary arguments, and its non-necessary arguments. Not all functions have non-necessary arguments. The syntax for creating a basic function is shown below.
"""


# ╔═╡ 009c4b9a-e0f0-4a50-90c4-9abd8d95fd75
function examplefunction(argumentone; argumenttwo="this is the default second argument")

    println(argumentone,", ", argumenttwo)

end

# ╔═╡ 67838391-5603-4364-9ad8-1563c788cc13

md"""
The example function has the creative name "examplefunction", a necessary argument named argumentone, and a non-necessary argument named argumenttwo.

So how do you call, or use, a function? Below is the syntax of calling examplefunction(). Note the end of the code snippet, where we take advantage of the function having a non-necessary argument with the default value of "this is the default second argument".
"""

# ╔═╡ c5a64847-a56b-4cbd-8533-dafcf790aa6f
examplefunction("This is the first argument")

# ╔═╡ 4705f8f3-a25c-497f-95a4-fd72a4349a2d
examplefunction("This is the first argument", argumenttwo="this is the second argument")

# ╔═╡ 34a14d7b-dd0e-49bc-be8a-c0d83d1ed097
md"""

#### The return Statement

A keyword that is vital to using functions is _return_.

The _return_ keyword is used in conjunction with some value inside a function. If hit, the function will be exited, and teh value will be spit out. Seeing it in action helps when trying to understand a _return_ statement. See below for a simple example.
"""

# ╔═╡ f20c79de-aadd-4a05-a155-6a8555811e77
#This function tells you if a number is even
function isthisnumbereven(num)

	if num%2 == 0
		#even
		return true
		
	else
		return false
		
	end
	
	println("Since the function is exited when it hits a return statement, this will not be printed.")
end

# ╔═╡ 416da98c-1f99-4f4f-9a1b-d282895ce66a
isthisnumbereven(6)

# ╔═╡ 2f2146ba-3c5b-42be-a8a0-fe698698c244
isthisnumbereven(11)

# ╔═╡ 5037589d-1e3b-401a-bdbf-36c99a1c45b0
md"""

#### Typing

In the above function, isthisnumbereven(), there is nothing stopping you from passing it a non-number for the _num_ argument. This, of course, would break the function, causing an error, because the _%_ operator only works on numbers!

You can prevent this by limiting arguments to a certain type(s).

This is done by using a double colon, as shown below. The same function will be rewritten to restrict typing. We will also define a version of the function that is called when num is a string. Creating multiple functions with the same name for different types is called multiple dispatch.
"""

# ╔═╡ 82cebb28-1c87-437f-a887-a93ef6a541f3
#This function tells you if a number is even
function isthisnumbereven_restricted(num::Number)

	if num%2 == 0
		#even
		return true
		
	else
		return false
		
	end
end

# ╔═╡ d3a6a460-df6c-431e-87b4-a5a56aab7d46
#This function tells you if a number is even
function isthisnumbereven_restricted(num::String)
	return false
end

# ╔═╡ 8ce556c5-b00e-46ae-8e11-7d79d02977e6
isthisnumbereven("this is a string") #This will error!

# ╔═╡ 601415cd-64e3-4efc-bb28-ba54838314b6
isthisnumbereven_restricted("this is a string") #This will return false

# ╔═╡ c45d129c-11ea-47fd-b361-d88ba84fb7e1
#Define the contents of the function below! Use this area as a playground.

function sumoftwonumbers(a::Number,b::Number)
	#enter your code below. Think about how you could return the sum of a and b.
	

end

# ╔═╡ d3a9d68a-f7d1-4358-9f74-b361125fa16e
md"""

# Thanks for Completing the Notebook!

That's it!

You now know all the basics of the julia language. Time to make some things, create some projects, and build out some tools. If you have suggestions, don't hesistate to reach out through my github profile.

"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.0"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─252cdc60-fdf3-11ec-3f07-0f3a49643d67
# ╠═fc8f8162-1d45-44c8-91ac-34f6991cfc99
# ╟─881e43f0-921c-4f5d-9716-17fabc1d52f7
# ╟─1fb686c3-227e-46f3-9d6c-2e10fee82f1e
# ╠═df05a4a7-66fd-4c7a-b22d-74a8c8ae6755
# ╠═21d6f304-2f24-42bf-ac70-ac68a5f704a6
# ╠═23f16fd5-7abf-4ea6-b22c-f67ec47f8531
# ╠═982d4d67-c102-4dfb-a8d8-7f97719ee525
# ╠═1781d90a-8c96-4169-9d15-dbdc38272df2
# ╟─956405b2-611c-4fac-a620-313a8b27405d
# ╠═7c8efad3-c8a8-4255-848b-98ab0f1dc505
# ╠═a5e12d09-7f33-498e-b665-445b4c652b4c
# ╟─3ea31749-e88f-4649-a59c-d8c9bd57f66b
# ╟─6e593c4d-102b-4f35-a55f-eac79945ba32
# ╟─111d3dff-6303-4ff7-8335-43aa333ec942
# ╟─42b98074-0560-4294-98f5-313216054e20
# ╠═ac2bb7c0-0ed8-4917-8a7a-a8e59365411b
# ╠═7f61587b-14fa-4545-abe5-c732070f1a9d
# ╠═895287b3-3bae-4419-b475-8f3ea1c9f537
# ╠═9086e08a-7e4a-403e-b1a8-00468794f227
# ╟─9849895f-df48-4f8b-ae06-bc7ec8783172
# ╠═009c4b9a-e0f0-4a50-90c4-9abd8d95fd75
# ╟─67838391-5603-4364-9ad8-1563c788cc13
# ╠═c5a64847-a56b-4cbd-8533-dafcf790aa6f
# ╠═4705f8f3-a25c-497f-95a4-fd72a4349a2d
# ╟─34a14d7b-dd0e-49bc-be8a-c0d83d1ed097
# ╠═f20c79de-aadd-4a05-a155-6a8555811e77
# ╠═416da98c-1f99-4f4f-9a1b-d282895ce66a
# ╠═2f2146ba-3c5b-42be-a8a0-fe698698c244
# ╟─5037589d-1e3b-401a-bdbf-36c99a1c45b0
# ╠═82cebb28-1c87-437f-a887-a93ef6a541f3
# ╠═d3a6a460-df6c-431e-87b4-a5a56aab7d46
# ╠═8ce556c5-b00e-46ae-8e11-7d79d02977e6
# ╠═601415cd-64e3-4efc-bb28-ba54838314b6
# ╠═c45d129c-11ea-47fd-b361-d88ba84fb7e1
# ╟─d3a9d68a-f7d1-4358-9f74-b361125fa16e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
