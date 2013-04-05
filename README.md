
`hashhash` rewrites single line CoffeeScript comments beginning with double hashes as block comments.

## Install

        npm install hashhash
        
## Command-line Usage

Convert to file using

        hashhash < input.coffee > output.coffee

Convert and compile

        hashhash < input.coffee | coffee -cs

## Examples

### Single-line comment

`hashhash` converts following single-line CoffeeScript comment

        ## observe the double hash and space before this comment

to

        ### observe the double hash and space before this comment ###

which when compiled into javascript will be

        /* observe the double hash and space before this comment
        */

### Multiple single-line comments

`hashhash` converts following single-line CoffeeScript comments

        ## observe the double hash and space before this comment
        ## multiple lines must have matching indentation

to

        ###
        observe the double hash and space before this comment
        multiple lines must have matching indentation
        ###

which when compiled into javascript will be

        /*
        observe the double hash and space before this comment
        multiple lines must have matching indentation
        */
