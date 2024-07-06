- [AWK Tutorial](https://www.tutorialspoint.com/awk/index.htm)
- [gawk manual](https://www.gnu.org/software/gawk/manual/html_node/index.html)

### Types of AWK
- AWK − Original AWK from AT & T Laboratory.
- NAWK − Newer and improved version of AWK from AT & T Laboratory.
- GAWK − It is GNU AWK. All GNU/Linux distributions ship GAWK. It is fully compatible with AWK and NAWK.


### awkの基本構造

```
pattern { action }
```

pattern：行がマッチするかどうかを決定する条件。
action：patternがマッチした場合に実行されるコードブロック。
複数のパターン-アクションペアを記述する場合、それぞれのペアは個別に評価されます。複数のペアがマッチする場合、それぞれのアクションが順に実行されます。

### パターン

パターンは以下の形式で記述できます：

- 正規表現：行がこの正規表現にマッチする場合にアクションが実行されます。
  - `/regex/ { action }`
- t論理条件：行がこの条件を満たす場合にアクションが実行されます。
  - `$1 == "value" { action }`
- 特別なパターン：BEGINやENDなど。
