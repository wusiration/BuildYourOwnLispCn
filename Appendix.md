# 附录

## 特别感谢

非常感谢我的朋友和家人给予我的支持，特别是 Francesca Shaw，她让我全身心地投入到写作当中， 还有 Caroline Holden，帮助我校对书籍。

另外，也感谢 Miran Lipovaca、Frederic Trottier-Hebert 以及 Jonathan Tang。他们的书籍《[Learn you a Haskell](http://learnyouahaskell.com/)》、《[Learn you some Erlang](http://learnyousomeerlang.com/)》、《[Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours)》给予了我写作的灵感。

## Beta 版本读者

谢谢所有 Beta 版本的读者提供的反馈、纠错、建议以及鼓励。非常感谢以下 Reddit 用户：<a href="http://www.reddit.com/user/neelaryan">neelaryan</a>, 
  <a href="http://www.reddit.com/user/bitsbytesbikes">bitsbytesbikes</a>, 
  <a href="http://www.reddit.com/user/acesHD">acesHD</a>, 
  <a href="http://www.reddit.com/user/CodyChan">CodyChan</a>, 
  <a href="http://www.reddit.com/user/northClan">northClan</a>, 
  <a href="http://www.reddit.com/user/da4c30ff">da4c30ff</a>, 
  <a href="http://www.reddit.com/user/nowords">nowords</a>, 
  <a href="http://www.reddit.com/user/ozhank">ozhank</a>, 
  <a href="http://www.reddit.com/user/crackez">crackez</a>, 
  <a href="http://www.reddit.com/user/stubarfoo">stubarfoo</a>, 
  <a href="http://www.reddit.com/user/viezebanaan">viezebanaan</a>, 
  <a href="http://www.reddit.com/user/JMagnum86">JMagnum86</a>, 
  <a href="http://www.reddit.com/user/uNEV6X29rpf3">uNEV6X29rpf3</a>, 
  <a href="http://www.reddit.com/user/fortyninezeronine">fortyninezeronine</a>, 
  <a href="http://www.reddit.com/user/skeeto">skeeto</a>, 
  <a href="http://www.reddit.com/user/miketaylr">miketaylr</a>, 
  <a href="http://www.reddit.com/user/wonnernaus">wonnernaus</a>, 
  <a href="http://www.reddit.com/user/Barthalion">Barthalion</a>, 
  <a href="http://www.reddit.com/user/codyrioux">codyrioux</a>, 
  <a href="http://www.reddit.com/user/sigjuice">sigjuice</a>, 
  <a href="http://www.reddit.com/user/yoshiK">yoshiK</a>, 
  <a href="http://www.reddit.com/user/u-n-sky">u-n-sky</a>。

<!-- 英文原版中还有图片作者的信息, 由于图片对文章理解无帮助, 所以译者选择省略图片, 同理这里的图片作者列表也不做翻译. -->

## FAQ
<!-- 原版FAQ为独立章节, 这里一并到附录中 -->

### Who are you?

Hello, my name is Daniel Holden. I'm from the UK, and currently studying for a PhD at Edinburgh University. My research is in data driven tools for character animation.

You may know me from one of my other projects such as Cello or Corange. As well as hacking on C, I enjoy writing short stories, digital art, and game development.

You can take a look at my [personal website](http://theorangeduck.com/). Or you can follow me on [twitter](https://twitter.com/anorangeduck).

### Why don't you teach arrays in this book?

With an already steep learning curve arrays seemed like a convenient omission to make. Teaching arrays in C is a very easy way to confuse a beginner about pointers, which are a far more important concept to learn. In C, the ways in which arrays and pointers are the same, and yet different, are subtle and numerous. Excluding fixed sized arrays, which have different behaviour altogether, pointers represent a superset of the behaviour of arrays, and so in the context of this book, teaching arrays would have been no more than teaching syntactic sugar.

Those interested in arrays are encouraged to find out more. The book [Learn C the Hard Way](http://c.learncodethehardway.org/) takes the opposite approach to me, and teaches arrays first, with pointers being described as a variation. For those interested in arrays this might prove useful.

### Why do you use left-handed pointer syntax?

In this book I write the syntax for pointers in a left-handed way `int* x`;, rather than the standard right-handed convention `int *x`;.

Ultimately this distinction is one of personal preference, but the vast majority of C code, as well as the C standards, are written using the right-handed style. This is clearly the default, and most correct way to write pointers, and so my choice might seem odd.

I picked the left-handed version because I believe it is easier to teach to beginners. Having the asterisk on the left hand side emphasises the type. It is clearer to read, and makes it obvious that the asterisk is not a weird operator or modification to the variable. With the omission of arrays, and multi-variable declarations, this notation is also almost entirely consistent within this book, and when not, it is noted. K&R themselves have admitted the confusion of the right-handed syntax, made worse by historical baggage and rogue compiler implementations of the early years. For a learning resource I believe picking the left-handed version was the best approach.

Once comfortable with the method behind C's declaration syntax, I encourage programmers to migrate toward the right-handed version.

### Why are there no Macros in this Lisp?

By far the biggest gripe conventional Lisp programmers have with the Lisp in this book is the lack of Macros. Instead of Macros a new concept of Q-Expressions is used to delay evaluation. To conventional Lisp programmers Q-Expressions are confusing because their semantics differ subtly from the quote Macro.

I use Q-Expressions instead of Macros for a couple of reasons.

First of all I believe them to be easier for beginners than Macros. When evaluation is delayed it is always explicit, shown by the syntax, and not implicit in the function name. It also means that S-Expressions can never be returned by the prompt or seen in the wild. They are always evaluated.

Secondly it is more consistent. It no longer requires the concept of Macros, but instead transforms quoted expressions to become the dominant, more powerful concept that does everything needed by either. With Q-Expressions there are only Functions and Expressions, and the language is even more homo-iconic than before.

Finally, Q-Expressions are distinctively more powerful than Macros. Using Q-Expressions it is possible to pass an argument to a function that evaluates to a Q-Expression, making input arguments capable of being dynamic. In conventional Lisps passing an expression to a Macro will always pause the evaluation, and so the arguments cannot be dynamic, only symbolic.

### Where are the answers to the exercises?

There are none. In the real world no one is going to pass you an answer booklet, or check your work for you. Ensuring your code does as you intended is an essential skill to learn. Some readers ask for the answers because they are concerned that they might not have done the right thing. But testing the right thing in this case is just testing understanding of the question; a pretty pointless exercise. Additionally there is not always a wrong or right way to approach the Bonus Marks. They are intended as suggestions to help people check their understanding, or to explore other ideas and thoughts.

If you want to do a Bonus Mark question but are unsure what it means, feel free to send me an e-mail and I will try to clarify it! Otherwise don't fret over the answer. Giving it a try is the important part, not getting it right!

