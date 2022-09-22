# ブロックの利用とyield

# ------------------------------------------------------ 
# # yieldは引数としてもらったブロックを呼び出して実行する
# def greet
#   puts 'morning!'
#   if block_given?
#     puts "ブロックがわたされた！"
#     yield
#   end
# end

# # greet　に引数としてブロックを渡す
# greet do 
#   puts 'hello'
# end

# # メソッドの中でyieldが実行されているのにブロックを渡していないとエラーになる。
# greet

# ------------------------------------------------------ 
# yield はブロックの戻り値を受け取る
# def greet
#   text = yield 'Hello', 12345
#   puts text
# end

# greet do |text, other|
#   text * 2 + other.inspect
# end

# ------------------------------------------------------ 
# 引数の個数があっていなくてもエラーにはならない
# def greet
#   text = yield 'Hello', 12345

#   puts text
# end

# greet do |text|
#   text * 2
# end

# ------------------------------------------------------ 
# # 引数として明示的にブロックを受け取ることもできる！
# # yieldとblock_given?も有効
# def greet(&block)
#   text = block.call('Hello')
#   puts text
# end

# greet do |text|
#   text * 2
# end

# ------------------------------------------------------ 
# # ブロック引数はメソッドにつき１つまで
# # 他の引数がある場合は、最後に定義しないといけない
# # ブロック引数があるかどうかはnil? で確認
# def greet(&block)
#   unless block.nil?
#     text = block.call('Hello')
#   puts text
# end

# greet do |text|
#   text * 2
# end

# ------------------------------------------------------ 
# # ブロックのメリット　その１
# # ブロックを他のメソッドに与えることができること
# def greet_ja(&block)
#   texts = ['おはよう', 'こんにちは', 'こんばんわ']
#   greet_common(texts, &block)
# end

# def greet_en(&block)
#   texts = ['Morning!', 'Hello!', 'Evening!']
#   # 他メソッドに渡すときに＆忘れないように！
#   greet_common(texts, &block)
# end

# def greet_common(texts, &block)
#   puts texts[0]
#   puts block.call(texts[1])
#   puts texts[2]
# end

# greet_ja do |text|
#   text * 2
# end

# greet_en do |text|
#   text.upcase
# end

# ------------------------------------------------------ 
# メリット　その２ 
# 渡されたブロックに対してメソッドを呼び出し、必要な情報を取得したり、ブロックに対する何かしらの操作を実行したりできるようになること？
#
# def greet(&block)
#   puts 'Morning!'
#   text = 
#     if block.arity == 1
#       yield 'Hello.'
#     elsif block.arity == 2
#       yield 'He', 'loo'
#     end
#   puts text
#   puts 'Evening!'
# end

# greet do |text|
#   text * 2
# end

# greet do |text_1, text_2|
#   text_1 * 2 + text_2 * 2
# end

# ------------------------------------------------------ 



















