# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: 300 },
  { name: 'カフェラテ', price: 400 },
  { name: 'チャイ', price: 460 },
  { name: 'エスプレッソ', price: 340 },
  { name: '緑茶', price: 450 }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: 470 },
  { name: 'アップルパイ', price: 520 },
  { name: 'ホットサンド', price: 410 }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i
  selected_menu = menus[order_number - 1]
  puts "#{selected_menu[:name]}(#{selected_menu[:price]}円)ですね。"
  order_number - 1
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
ordered_food = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
ordered_drink = take_order(FOODS)

total = DRINKS[(ordered_food)][:price] + FOODS[(ordered_drink)][:price]
puts "お会計は#{total}円になります。ありがとうございました！"
