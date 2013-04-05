PATTERN = /^(\s*)## (.*)$/

module.exports = (input, output, cb) ->
  
  readline = require('readline').createInterface
    input: input
    output: output
    terminal: false

  comment_lines = []
  comment_indent = undefined
  flush_comments = ->
    if comment_lines.length is 1
      console.log "#{comment_indent}### #{comment_lines[0]} ###"
      comment_lines = []
    else if comment_lines.length > 1
      console.log "#{comment_indent}###"
      console.log "#{comment_indent}#{comment_line}" for comment_line in comment_lines
      console.log "#{comment_indent}###"
      comment_lines = []

  readline.on 'line', (line) ->
    if match = PATTERN.exec line

      if match[1] is comment_indent
        comment_lines.push match[2]
      else
        flush_comments()
        comment_indent = match[1]
        comment_lines.push match[2]

    else if comment_lines.length is 0
      console.log line
    else
      flush_comments()
      console.log line

  readline.on 'close', ->
    flush_comments()
    cb null
