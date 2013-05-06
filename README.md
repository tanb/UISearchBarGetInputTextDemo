UISearchBarGetInputTextDemo
===========================

UISearchBarに文字を入力するとき, 下の画像にあるような変換確定前のtextを取得したい.

![image](https://f.cloud.github.com/assets/291175/465968/6c01ec38-b64b-11e2-8391-eb4123f5a66b.png)

UITextFieldではUIControlEventEditingChangedにActionをかませれば良いが, UISearchBarではうまくいかない.
