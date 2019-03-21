$my_variable = "apple", "pear"
# a switch can be used to compare a variable's value with a list & return a result if the value is among those presnt. 
# This can be useful in making GUI menus. The Break/continue below indicate the behaviour of the script if a match is returned. Break will stop the script running while continue doesnt.
switch ($my_variable) {
   "apple" {"First result"; continue}
   "pear" {"Second result"; break}
   "orange" {"Third result"; break}
   "peach" {"Fourth result"; break}
   "banana" {"Fifth result"; break}
   default {"Something else happened"; break}
}

