# All "bad" examples should cause linting errors, all "good" examples should have no errors

# don't use semicolons
  # bad
  log 'foobar';
  log 'foo'; log 'bar'

  # good
  log 'foobar'

  log 'foo'
  log 'bar'

  log 'foo', 'bar'

# single-line class definitions
  # bad
  class FooError < StandardError
  end

  # good
  class FooError < StandardError; end

# single-line methods
  # bad
  def some_method() body end

  # good
  def some_method
    body
  end

  def no_op; end # empty-body methods are okay

# space around hash literals
  # bad
  @hash = {one: 1, two: 2}

  # good
  @hash = { one: 1, two: 2 }

# no space around embedded expressions
  # bad
  @string = "string#{ expr }"

  # good
  @string = "string#{expr}"

# case indentation
  # bad
  case
    when song.name == 'Misty'
      log 'Not again!'
    when song.duration > 120
      log 'Too long!'
    when Time.now.hour > 21
      log "It's too late"
    else
      song.play
  end

  # good
  case
  when song.name == 'Misty'
    log 'Not again!'
  when song.duration > 120
    log 'Too long!'
  when Time.now.hour > 21
    log "It's too late"
  else
    song.play
  end

# conditional expression indentation
  # bad
  @kind = case year
  when 1850..1889 then 'Blues'
  when 1890..1909 then 'Ragtime'
  when 1910..1929 then 'New Orleans Jazz'
  when 1930..1939 then 'Swing'
  when 1940..1950 then 'Bebop'
  else 'Jazz'
  end

  @kind = case year
          when 1850..1889 then 'Blues'
          when 1890..1909 then 'Ragtime'
          when 1910..1929 then 'New Orleans Jazz'
          when 1930..1939 then 'Swing'
          when 1940..1950 then 'Bebop'
          else 'Jazz'
          end

  # good
  @kind =
    case year
    when 1850..1889 then 'Blues'
    when 1890..1909 then 'Ragtime'
    when 1910..1929 then 'New Orleans Jazz'
    when 1930..1939 then 'Swing'
    when 1940..1950 then 'Bebop'
    else 'Jazz'
    end

  # bad
  @result = if some_cond
    calc_something
  else
    calc_something_else
  end

  @result = if some_cond
              calc_something
            else
              calc_something_else
            end

  # good
  @result =
    if some_cond
      calc_something
    else
      calc_something_else
    end

# space around equals in method params
  # bad
  def some_method(arg1=:default, arg2=nil, arg3=[])
    # do something...
  end

  # good
  def some_method(arg1 = :default, arg2 = nil, arg3 = [])
    # do something...
  end

# Prefer `map` over `collect`, `detect` over `find`, `select` over `find_all`, `inject` over `reduce`,  and `length` over `size`.
  # bad
  def some_method(arr)
    arr.collect
    arr.find_all
    arr.reduce
    arr.length
  end

  # good
  arr.map
  arr.detect
  arr.select
