# Proc（Procedure）オブジェクト
# ブロックをオブジェクト化するためのクラス

# ------------------------------------------------------ 
# # 基本形 足し算やってみる
# add_proc = Proc.new do |a = 0, b = 0|
#   puts a + b
# end
# # KernelモジュールのProcメソッドを使ってもよい
# # add_proc = Proc.new {|a, b| puts a + b}

# add_proc.call(3, 5)

# ------------------------------------------------------ 
# # Procを引数として渡してみよう
# # &blockで渡された引数はすでにProcオブジェクト！
# # arityメソッドはprocクラスのインスタンスメソッド

# def greet(&block)
#   p block.class     # =>Proc!
#   text = block.call('Hello.')
#   puts text
# end

# # greet {|text| text * 2} 
# # ↓
# repeat_proc = Proc.new {|text| text * 2} 
# greet(&repeat_proc)

# ------------------------------------------------------ 
# # Procオブジェクトを普通の引数として渡しちゃう
# # メリット：
# # メソッドに渡せるブロックの個数は１つのみに対し、Procオブジェクトは無限！
# def greet(arrange_proc)
#   text = arrange_proc.call('Hello.')
#   puts text
# end

# repeat_proc = Proc.new {|text| text * 2} 
# greet(repeat_proc)

# ------------------------------------------------------ 
# # せっかくなのでProcいっぱい使ってみる
# def greet(proc_1, proc_2, proc_3)
#   puts proc_1.call('Morning!')
#   puts proc_2.call('Hello!')
#   puts proc_3.call('Evening!')
# end

# shuffle_proc = Proc.new {|text| text.chars.shuffle.join} 
# repeat_proc = Proc.new {|text| text * 2} 
# question_proc = Proc.new {|text| "#{text}?"} 
# greet(shuffle_proc, repeat_proc, question_proc)

# ------------------------------------------------------ 
# # Procの作成方法
# # 方法１、２　：　Proc.new式
# # 方法３，４　：　ラムダ式

# # 方法１　クラスからオブジェクト生成
# Proc.new {|a, b| a + b}

# # 方法２　procメソッドを仕様
# proc {|a, b| a + b}

# # 方法３　ラムダリテラル　アロー演算子
# ->(a, b){a + b}
# ## ()省略可
# ->a, b{a + b}
# ## 引数がない場合
# ->{a + b}
# ## do endで表現
# ->do
#   a + b
# end

# # 方法４　ラムダ
# l = lambda {|a, b| a + b}
# p l.call(10, 20)

# ------------------------------------------------------ 
# # 引数の扱い方が
# # Proc.new式：    : ゆるい
# # ラムダ式        : 厳密
# add_proc = Proc.new { |a, b| a.to_i + b.to_i }
# # nil.to_i = 0
# p add_proc.call(10, 20)
# p add_proc.call(10)               #=> 10

# add_lambda = ->(a, b){ a + b }
# p add_lambda.call(10, 20)
# p add_lambda.call(10)             #=> ArgumentError

# # 他にも小さな違いがある。

# ------------------------------------------------------ 
# lambda?メソッド

add_lambda = ->(a, b){ a + b }
p add_lambda.class     #=> Proc
p add_lambda.lambda?   #=> true

# ------------------------------------------------------ 