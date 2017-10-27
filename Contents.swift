//var todo1 = "ジョギングする"
//var todo2 = "洗濯する"
//var todo3 = "掃除する"

//配列の構文
var todos = ["ジョギングする","洗濯する","掃除する"]

//ジョギングをする、が表示される
print(todos[0])

//存在しない番号を指定すると下記のエラー
//fatal error: Index out of range　←配列に存在しないindex番号を指定してしまっている
//print(todos[3])

var index = 2
print(todos[index])

//要素の変更
todos[0] = "家で映画を見る"

print(todos)

//要素の追加
todos.append("牛乳を買う")

print(todos)

//要素の削除
todos.remove(at: 1)

print(todos)

//練習問題4-2 (P.113)
//テスト結果が国語95点、数学70点、英語80点である場合に、この3つのテストの合計点を配列とfor文を使って計算してください。
var scoreArray = [95,70,80]
var total = 0

//total = total + scoreArray[0]
//total = total + scoreArray[1]
//total = total + scoreArray[2]
total += scoreArray[0]
total += scoreArray[1]
total += scoreArray[2]
print(total)
total = 0
//for文（繰り返す回数を決めて実行する）
for n in 0 ... scoreArray.count - 1{
    total += scoreArray[n]
}
print(total)

//高速列挙（配列から一つ要素を取り出して、配列の要素分繰り返し実行する）
//いくつ配列に要素があるか気にしなくて良い
var total1 = 0
for score in scoreArray {
    total1 += score
}
print(total1)
