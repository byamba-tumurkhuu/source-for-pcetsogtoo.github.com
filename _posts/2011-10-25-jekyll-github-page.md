---
layout: post
title: Jekyll, GitHub хуудсын тухай 
tags:
- Jekyll
- GitHub Page
- Markdown
- Disqus
- Liquid
---


Амархан сайн байна уу? Будаг нь ханхалсан блогоосоо таны мэндийг айлтгая. Ойрын үед ажил, хичээл, шалгалт зэрэг олон зүйл давхцсан ч 
дундуур нь блогоо [Jekyll][1] дээр хийгээд амжлаа. [Jekyll][1] бол рүби дээр суурилсан блог маягийн статик сайт үүсгэх зориулалттай 
програм юм. Блогспотын хязгаарлагдмал байдал, ойлгомжгүй нүсэр темплайт систем зэрэг олон зүйлээс нь нэгэнтээ залхаад байсны дээр 
[GitHub хуудас][2] [Jekyll][1]-ийг дэмждэг тухай дуулмагц уухайн тас [Jekyll][1] руу урвачихлаа. [GitHub хуудасын][2] тухай товчхон 
өгүүлэхэд энэ нь хэрэглэгчиддээ өөрсдийн дэд домайнээ үүсгэх, мөн статик html вэб хост хийх боломж олгодог юм байна. Жишээ нь миний 
гитхаб хэрэглэгчийн нэр pcetsogtoo бөгөөд би pcetsogtoo.github.com гэсэн дэд домайн эзэмшиж байна. Өөрийн хуудсыг үүсгэх маш амархан. 
Дараах 2 алхмыг хийхэд л хангалттай. 

1. username.github.com гэсэн репо үүсгэнэ.
2. index.html файл үүсгээд гитхаб луу пүш хийнэ.

Хамгийн эхний пүш дээр 10 минут хүртэл хугацаа шаардагдаж байж сайт луу хандах эрхтэй болно. 

Ингээд блогспотоос [Jekyll][1] рүү хэрхэн шилжсэн тухайгаа тоймлон хүргэе.


** [Jekyll][1] суулгах **

Суулгах команд:
{% highlight bash %}
sudo apt-get install ruby1.8-dev
sudo gem install jekyll
{% endhighlight %}

** Сайтыхаа ерөнхий дезайныг зохиох ** 


[Энд][3] бичигдсэн зааврын дагуу файл, хавтсаа зохион байгуулна. Бичлэгүүдээ дүрслэхдээ [Liquid][11] код бичих шаардлагатай. 
Код бичихээс залхуурах зүйл огтохон ч байсангүй. Маш багахан код бичээд нүүр хуудастаа бичлэгүүдээ гаргачихаж байна.  Жишээ нь:

{% highlight html %}
  {{ "{% for post in site.posts limit: 4 " }}%} 
    <div class="post">
      <h4 class="post-title">
        {{ "{{ post.title " }}}}
      </h4>
      <div class="post-content"> 
        {{ "{{ post.content " }}}}
      </div>
    </div>
  {{ "{% endfor " }}%} 
{% endhighlight %}

[Liquid][11] темплэйт sites, page, post гэх мэт глобал өгөгдөлөөр хангадаг. Темплэйтийн өгөгдлийн талаар дэлгэрэнгүйг
[https://github.com/mojombo/jekyll/wiki/Template-Data](https://github.com/mojombo/jekyll/wiki/Template-Data)-с хараарай.

CSS дезайны мэдлэг маруухан надад Твиттерийн [Bootstrap][4] ёстой их тус болов.  Мөн _config.yml файл дээр сайтынхаа 
ерөнхий [тохиргоог][8] хийнэ. Эхний ээлжинд бичлэгийн URL тохиргоо, [Markdown][5] синтакс хөрвүүлэгч сонгох зэрэг хялбар хэдэн тохиргоо хийлээ.
Ер нь өөрөө тэгээс эхэлж хийснээс [бусад хүмүүсийн хийсэн сайтыг](https://github.com/mojombo/jekyll/wiki/Sites)
темплайт болгоод өөрчлөөд явбал илүү хурдан хялбар сурах юм байна гэж бодогдсон.



** Нэмэлт плагин суулгах **


[Jekyll][1] нь статик сайт үүсгэдэг хэдий ч нэмэлт [плагинуудаар][9] Jykell-ийг өргөтгөх боломжтой нь таатай хэрэг юм. 
Эхний ээлжинд код тодруулах pygments, tag cloud үүсгэх плагинуудыг суулгалаа. Яваандаа RSS болон хайлтын плагин суулгана. 
Өөрөө плагин хийхэд ч хүндрэлгүй юм шиг санагдсан.

 
** Сэтгэгдэл нэмэх ** 


[Jekyll][1] маань статик сайт үүсгэдэг учир сэтгэгдэлээ аутсоорс хийхээс өөр аргагүй. Энэ хэрэглээнд [Disqus][6]-ийг ашиглав. 
Жаваскрипт дуудалт хийгээд сайтдаа сэтгэгдэл үлдээх хэсэгтэй болчлоо.


** Блогспотоос бичлэгүүдээ зөөх **

Хоёрхон бичлэгтэй байсан учир [Pandoc](http://johnmacfarlane.net/pandoc/try) ашиглаад html-ээс markdown луу хөрвүүлэв.
Бараг гар ажиллагаар шахуу юмдаа. Хэрэв олон бичлэгтэй бол Jekyll-ээс гаргасан [зааврын](https://github.com/mojombo/jekyll/wiki/blog-migrations)
дагуу хөрвүүлэхэд болохоор харагдаж байсан.


** Домэйн нэрээ шилжүүлэх **

[pcetsogtoo.github.com](http://pcetsogtoo.github.com) гоё боловч нэгэнт авсан [www.byambatsogt.com](http://www.byambatsogt.com)-оо ашиглах хэрэгтэй байлаа. 
Төсөлийхөө эх хавтаст CNAME нэртэй файл үүсгэж дотор нь домэйн нэрээ бичнэ. Ингээд DNS тохиргооныхоо A бичлэгээ 207.97.227.245 хаяг луу заалгана.



** GitHub луу деплой хийх **


Амжилттай явсаар байсан ч деплой хийх дээрээ жаахан саатав. Миний ойлгосноор Jekyll эх кодоо мастер репо луугаа түлхэхэд
гитхаб автоматаар html кодыг үүсгэж сайтыг мань байгуулна. Тиймээс деплой хийх нь хамгийн амархан. Ердөө өөрчлөлтөө 
коммит хийгээд мастер репо луугаа пүш хийнэ. Миний хувьд эхний хэдэн коммитоо амжилттай гитхаб руу деплой 
хийгээд явж байсан боловч нэг томоохон өөрчлөлтийн дараа гитхаб миний кодоос html-ийг зөв үүсгэхгүй байгаа нь мэдэгдэв. 
Чухам яг юуг буруу хийсэн юм чөтгөр бүү мэд, хайгаад олсонгүй. Локал дээрээ зөв ажиллаж байгаа боловч гитхаб луу деплой хийхэд
темплэйтээ зөв рендерлэхгүй байлаа. Ингээд автоматаар деплой хийдэг скрипт бичлээ. Jekyll-ийн үүсгэсэн статик кодыг л мастер реподоо
хуулаад байхад болохоор санагдав. 

{% highlight bash %}
#!/bin/bash

tmp=/tmp/tmp$$

git_dir=$tmp-git_dir
site_dir=$(pwd)/site
reponame=pcetsogtoo.github.com
repo=git@github.com:pcetsogtoo/pcetsogtoo.github.com.git

function USAGE(){
cat << EOF
"USAGE: ./deploy "Git commit message"
EOF
exit 1
}
[ -z "$1" ] && USAGE 

message=$1 # Commit хийх мессеж

mkdir -p $git_dir
cd $git_dir

git clone $repo
cd $reponame

git rm -r ./* # Wipe out current content

cp -rp $site_dir/* . # Copy entire generated static content so I can adjust deletion & insertion
git add .
git commit -m "$message" &&  git push

sudo rm -r $tmp-*
exit 0
{% endhighlight %}


Ингээд өөрийн гэсэн гитхабийн дэд домэйнтэй бас статик хуудас хосттой боллоо. Үнэхээр минимал, ашиглахад хялбар юм. Блог хийх ерөнхий 
ажлаа нэг орой л дуусгачихсан. Хамгийн чухал нь эрх чөлөөтэй, өөрийн хийсэн юм цаанаа л нэг өөр байх юм. Та бүхэн ч бас [Jekyll][1] 
туршаад үзээрэй. Таалагдана гэдэгт итгэлтэй байна. 


** Сурвалж **


*  [Энэ сайтын Jekyll эх код](https://github.com/pcetsogtoo/source-for-pcetsogtoo.github.com)
*  [Энэ сайтын үүсгэгдсэн статик код](https://github.com/pcetsogtoo/pcetsogtoo.github.com)
*  [https://github.com/mojombo/jekyll/wiki](https://github.com/mojombo/jekyll/wiki)
*  [YAML](https://github.com/mojombo/jekyll/wiki/yaml-front-matter)
*  [Liquid Template Engine](http://www.liquidmarkup.org/)


  [1]: https://github.com/mojombo/jekyll
  [2]: http://pages.github.com
  [3]: https://github.com/mojombo/jekyll/wiki/Usage
  [4]: http://twitter.github.com/bootstrap
  [5]: http://daringfireball.net/projects/markdown
  [6]: http://disqus.com
  [7]: https://github.com/blog/315-cname-support-for-github-pages 
  [8]: https://github.com/mojombo/jekyll/wiki/Configuration
  [9]: https://github.com/mojombo/jekyll/wiki/Plugins
  [11]: https://github.com/shopify/liquid/wiki/liquid-for-designers


