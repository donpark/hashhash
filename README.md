
`hashhash` rewrites single line CoffeeScript comments beginning with double hashes as block comments.

## Command-line Usage

Convert to file using

        hashhash < input.coffee > output.coffee

Convert and compile

        hashhash < input.coffee | coffee -cs

