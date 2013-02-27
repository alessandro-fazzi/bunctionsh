# Bunctionsh

## Your Bash power-ups at fingertips!

I'm used to use some functions sticked in my bash; usually when an alias become
too rigid to do more advanced tasks, or when I need to have complex actions which
requires logic or at last but not the least because my loved script.sh is in my
$PATH, but if I do ```sudo script.sh``` it's gone!

So I'm just in search of a quick method to reproduce my bash functions on many
computers, such as my collegues' laptops or the number of servers that I manage.

Here I have to do these steps:

```bash
git clone git://github.com/pioneerskies/bunctionsh.git
cd bunctionsh
bash ./bunctionsh.sh init
reset
```

## Script structure

```
.
├── bunctionsh.sh             <- the initializer
├── helpers                   <- custom functions: here your fun
│   ├── chweb
│   ├── colorize_feedback
│   ├── git-prompt
│   ├── lampp
│   └── randpass
├── lib                       <- some lib to be considered mandatory
│   └── prompt_colors_helper
└── README.md                 <- what you are actually reading
```

If I want to add some functions I barely have to put code in a file and save it
in the ```helpers``` dir. I'd like to manage subdirs as well, but when I'll have
too much of functions! :)

I'll collect few of them. At the moment there is:

#### chweb
Set right permissions to a dir recursively to work in a web-dev env.

#### colorize_feedback
Just a helper: I have always colorization functions for feedback from scripts

#### git-prompt
If you are in a repo have some usefull info in your $PS1 is a must!

#### lampp
If you use lampp you can stop/start/reload it ... just a shortcut

#### randpass
Generate random password like a cowboy!

___

They are almost commented. Almost! ;)

## Our Bash power-ups at fingertips!?!?

Please, if you use this little initializer drop me a pull request with your
favoured and flavoured functions! I'll be glad =)



####### Keywords

*bash functions collection init initializer sh bashrc rc dotfiles*