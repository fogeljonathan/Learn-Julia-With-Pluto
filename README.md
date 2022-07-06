# Learn Julia With Pluto

## Repository Description

Includes introductory Julia notebooks. Aimed to help facilitate the spread Julia to both new-to-Julia and beginner audiences.

## How To Run

Do the following to get the notebooks running. Quick and Easy!

### Installing Julia

If you do not have Julia installed, navigate to <https://julialang.org/> , and follow the instructions based on your operating system.

Make sure to run the julia installer once downloader.

### Using Pluto

Now to install Pluto.jl. If you have used Jupiter Notebooks before, then you will be familar with the package already. If not, don't worry!

Install Pluto by navigating to Julia and running either:
```
using Pkg
Pkg.add("Pluto")
```
or 
```
] add Pluto
```

###Copy the Repository

Next you have to have these files on your system. Do this with git clone. Information on this here <https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-clone>. Basically, you'll want to have git installed, and clone the repository.

If you use an ssh key, run this in git bash to clone:
```
git clone git@github.com:fogeljonathan/Learn-Julia-With-Pluto.git
```

If you don't, run this in git bash to clone:
```
git clone https://github.com/fogeljonathan/Learn-Julia-With-Pluto.git
```

### Running the Notebooks

Congrats! You're ready to start learning Julia.

In Julia, run:
```
using Pluto
Pluto.run()
```

This will pull up the Pluto interface in your default browser, and you are ready to go. Now just navigate to the repository, and run the pluto notebooks. (They will default to your User Directory i.e. C:/Users/USERNAMEGOESHERE/Learn-Julia-With-Pluto/notebooks)

##Questions, Suggestions, and Contact

Any questions, suggestions, or concerns should reach out to fogeljonathan@gmail.com . I'd appreciate any feedback (positive or negative), so that I can improve this repository and help Julia become more widespread.

##Authors

Jonathan Fogel - @fogeljonathan
