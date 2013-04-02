# Bunctionsh

## Your Bash power-ups at fingertips!

I'm used to use some functions sticked in my bash; usually when an alias become
too rigid to do more advanced tasks, or when I need to have complex actions which
requires logic. Overall I feel like functions were shell extensions which can
collaborate one with other, setting up a personalised environement, much more than
scripts.

So I'm just in search of a quick method to reproduce my bash functions on many
computers, such as my collegues' laptops or the number of servers that I manage.

Here I have to do these steps:

```bash
git clone git://github.com/pioneerskies/bunctionsh.git
cd bunctionsh
bash ./bunctionsh.sh init
reset
```

Go in ```bunctionsh/helpers``` and activate desired functions removing the
__off_ extension.

Before doing that, please, read the _WARNING!!! Please, be carefull!_ paragraph
at the end of this README.

## Script structure

```
.
├── bunctionsh.sh             <- the initializer
├── helpers                   <- custom functions: here your fun
│   ├── chweb_off
│   ├── colorize_feedback_off
│   ├── ex_off
│   ├── git-prompt_off
│   ├── lampp_off
│   └── randpass_off
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
If you are in a repo have some usefull info in your $PS1 is a must! (read code
comments at the bottom of the file, please)

#### lampp
If you use lampp you can stop/start/reload it ... just a shortcut

#### randpass
Generate random password like a cowboy!

#### ex
Extract files: depends on zip, unrar and p7zip

___

They are almost commented. Almost! ;)

## Our Bash power-ups at fingertips!?!?

Please, if you use this little initializer drop me a pull request with your
favoured and flavoured functions! I'll be glad =)

## WARNING!!! Please, be carefull!

You have to keep in mind that you are executing code every time you open up
a new terminal! If this code is broken, you should have a big big big big
pain in the ass. Due to this I have modified the default behavoiur, so that
now **by default all functions are switched off**. The method is stupid but
painless: functions which ends in "**_off**" are switched off.
Rename one function per time, test it in opening a new terminal; if it works
you're done! If it does not work, than fix it!

####### Keywords

*bash functions collection init initializer sh bashrc rc dotfiles*