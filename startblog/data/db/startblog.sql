-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 07 月 26 日 17:29
-- 服务器版本: 5.1.50
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `startblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章关键词',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT '博文seo描述',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 NOT NULL,
  `published_at` datetime NOT NULL,
  `pv` int(50) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `keyword`, `description`, `content`, `category`, `tag`, `published_at`, `pv`) VALUES
(9, 'Startblog', '端到端撒地方第三方', '特特特特特特特', '##Startblog是什么?\r\n\r\nstartblog是一个基于codeigniter 3.x开发的简单，易用，Markdown博客系统\r\n\r\n##startblog有哪些功能？\r\n\r\n* 博文撰写、修改、删除功能\r\n* markdown语法支持\r\n* 数据备份功能\r\n* 文章搜索功能\r\n* 标签功能\r\n\r\n##有问题反馈\r\n在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流\r\n\r\n* QQ: 416049355\r\n* weibo: [@Cryin1985](http://weibo.com/justear)\r\n* github:(https://github.com/Cryin/Startblog)\r\n\r\n##捐助开发者\r\n基于对php的兴趣，学习写一个`免费`的东西，希望你喜欢我的作品，同时也能支持一下。\r\n\r\n##关于作者\r\n\r\n```python\r\nprint "Auth: Cryin"\r\nprint "github : https://github.com/Cryin/Startblog"\r\n  }\r\n```', '4', 'startblog,php,github', '2016-07-22 00:00:00', 4),
(10, 'PHP Markdown', '', '', 'PHP Markdown\r\n============\r\n\r\nPHP Markdown Lib 1.6.0 - 23 Dec 2015\r\n\r\nby Michel Fortin  \r\n<https://michelf.ca/>\r\n\r\nbased on Markdown by John Gruber  \r\n<https://daringfireball.net/>\r\n\r\n\r\nIntroduction\r\n------------\r\n\r\nThis is a library package that includes the PHP Markdown parser and its \r\nsibling PHP Markdown Extra with additional features.\r\n\r\nMarkdown is a text-to-HTML conversion tool for web writers. Markdown\r\nallows you to write using an easy-to-read, easy-to-write plain text\r\nformat, then convert it to structurally valid XHTML (or HTML).\r\n\r\n"Markdown" is actually two things: a plain text markup syntax, and a \r\nsoftware tool, originally written in Perl, that converts the plain text \r\nmarkup to HTML. PHP Markdown is a port to PHP of the original Markdown \r\nprogram by John Gruber.\r\n\r\n*	[Full documentation of the Markdown syntax](<https://daringfireball.net/projects/markdown/>)  \r\n	— Daring Fireball (John Gruber)\r\n*	[Markdown Extra syntax additions](<https://michelf.ca/projects/php-markdown/extra/>)  \r\n	— Michel Fortin\r\n\r\n\r\nRequirement\r\n-----------\r\n\r\nThis library package requires PHP 5.3 or later.\r\n\r\nNote: The older plugin/library hybrid package for PHP Markdown and\r\nPHP Markdown Extra is still maintained and will work with PHP 4.0.5 and later.\r\n\r\nBefore PHP 5.3.7, pcre.backtrack_limit defaults to 100?000, which is too small\r\nin many situations. You might need to set it to higher values. Later PHP \r\nreleases defaults to 1?000?000, which is usually fine.\r\n', '4', 'PHP Markdown', '2016-07-22 00:00:00', 2),
(11, 'MarkDown语法说明', '', '', '## 主要内容 ##\r\n> #### Markdown是_什么_？ ####\r\n> #### _谁_发明了这么个东西？ ####\r\n> #### _为什么_要使用它？ ####\r\n> #### _怎么_使用？ ####\r\n> #### 都_谁_在用？####\r\n> #### 感觉有意思？_不怕你看见，就怕你试试_ ####\r\n\r\n## 正文 ##\r\n### 1. Markdown是*什么*？ ###\r\n**Markdown**是一种轻量级**标记语言**，它以纯文本形式(_易读、易写、易更改_)编写文档，并最终以HTML格式发布。    \r\n**Markdown**也可以理解为将以MARKDOWN语言编写的语言转换成HTML内容的工具，最初是一个perl脚本_Markdown.pl_。    \r\n\r\n### 2. _谁_发明了这么个东西？ ###\r\n它由[**Aaron Swartz**](http://www.aaronsw.com/)和**John Gruber**共同设计，**Aaron Swartz**就是那位于去年（_2013年1月11日_）自杀,有着**开挂**一般人生经历的程序员。维基百科对他的[介绍](http://zh.wikipedia.org/wiki/%E4%BA%9A%E4%BC%A6%C2%B7%E6%96%AF%E6%B2%83%E8%8C%A8)是：**软件工程师、作家、政治组织者、互联网活动家、维基百科人**。    \r\n\r\n他有着足以让你跪拜的人生经历：    \r\n+ **14岁**参与RSS 1.0规格标准的制订。     \r\n+ **2004**年入读**斯坦福**，之后退学。   \r\n+ **2005**年创建[Infogami](http://infogami.org/)，之后与[Reddit](http://www.reddit.com/)合并成为其合伙人。   \r\n+ **2010**年创立求进会（Demand Progress），积极参与禁止网络盗版法案（SOPA）活动，最终该提案**居然**被撤回。   \r\n+ **2011**年7月19日，因被控从MIT和JSTOR下载480万篇学术论文并以免费形式上传于网络被捕。     \r\n+ **2013**年1月自杀身亡。    \r\n\r\n![Aaron Swartz](https://github.com/younghz/Markdown/raw/master/resource/Aaron_Swartz.jpg) \r\n\r\n天才都有早逝的归途（又是一位**犹太人**）。\r\n\r\n### 3. _为什么_要使用它？ ###\r\n+ 它是易读（_看起开舒服_）、易写（_语法简单_）、易更改**纯文本**。处处体现着**极简主义**的影子。\r\n+ 兼容HTML，可以转换为HTML格式发布。\r\n+ 跨平台使用。\r\n+ 越来越多的网站支持Markdown。\r\n+ 更方便清晰的组织你的电子邮件。（Markdown-here, Airmail）\r\n+ 摆脱Word（我不是认真的）。\r\n \r\n### 4. _怎么_使用？ ###\r\n如果不算**扩展**，Markdown的语法绝对**简单**到让你爱不释手。\r\n\r\n废话太多，下面正文，Markdown语法主要分为如下几大部分：\r\n**标题**，**段落**，**区块引用**，**代码区块**，**强调**，**列表**，**分割线**，**链接**，**图片**，**反斜杠 `\\`**，**符号''`''**。\r\n\r\n#### 4.1 标题 ####\r\n两种形式：  \r\n1）使用`=`和`-`标记一级和二级标题。\r\n> 一级标题   \r\n> `=========`   \r\n> 二级标题    \r\n> `---------`\r\n  \r\n效果：\r\n> 一级标题   \r\n> =========   \r\n> 二级标题\r\n> ---------  \r\n\r\n2）使用`#`，可表示1-6级标题。\r\n> \\# 一级标题   \r\n> \\## 二级标题   \r\n> \\### 三级标题   \r\n> \\#### 四级标题   \r\n> \\##### 五级标题   \r\n> \\###### 六级标题    \r\n\r\n效果：\r\n> # 一级标题   \r\n> ## 二级标题   \r\n> ### 三级标题   \r\n> #### 四级标题   \r\n> ##### 五级标题   \r\n> ###### 六级标题 \r\n\r\n#### 4.2 段落 ####\r\n段落的前后要有空行，所谓的空行是指没有文字内容。若想在段内强制换行的方式是使用**两个以上**空格加上回车（引用中换行省略回车）。\r\n\r\n#### 4.3 区块引用 ####\r\n在段落的每行或者只在第一行使用符号`>`,还可使用多个嵌套引用，如：\r\n> \\> 区块引用  \r\n> \\>> 嵌套引用  \r\n\r\n效果：\r\n> 区块引用  \r\n>> 嵌套引用 \r\n\r\n#### 4.4 代码区块 ####\r\n代码区块的建立是在每行加上4个空格或者一个制表符（如同写代码一样）。如    \r\n普通段落：\r\n\r\nvoid main()    \r\n{    \r\n    printf("Hello, Markdown.");    \r\n}    \r\n\r\n代码区块：\r\n\r\n    void main()\r\n    {\r\n        printf("Hello, Markdown.");\r\n    }\r\n\r\n**注意**:需要和普通段落之间存在空行。\r\n\r\n#### 4.5 强调 ####\r\n在强调内容两侧分别加上`*`或者`_`，如：\r\n> \\*斜体\\*，\\_斜体\\_    \r\n> \\*\\*粗体\\*\\*，\\_\\_粗体\\_\\_\r\n\r\n效果：\r\n> *斜体*，_斜体_    \r\n> **粗体**，__粗体__\r\n\r\n#### 4.6 列表 ####\r\n使用`·`、`+`、或`-`标记无序列表，如：\r\n> \\-（+\\*） 第一项\r\n> \\-（+\\*） 第二项\r\n> \\- （+\\*）第三项\r\n\r\n**注意**：标记后面最少有一个_空格_或_制表符_。若不在引用区块中，必须和前方段落之间存在空行。\r\n\r\n效果：\r\n> + 第一项\r\n> + 第二项\r\n> + 第三项\r\n\r\n有序列表的标记方式是将上述的符号换成数字,并辅以`.`，如：\r\n> 1 . 第一项   \r\n> 2 . 第二项    \r\n> 3 . 第三项    \r\n\r\n效果：\r\n> 1. 第一项\r\n> 2. 第二项\r\n> 3. 第三项\r\n\r\n#### 4.7 分割线 ####\r\n分割线最常使用就是三个或以上`*`，还可以使用`-`和`_`。\r\n\r\n#### 4.8 链接 ####\r\n链接可以由两种形式生成：**行内式**和**参考式**。    \r\n**行内式**：\r\n> \\[younghz的Markdown库\\]\\(https:://github.com/younghz/Markdown "Markdown"\\)。\r\n\r\n效果：\r\n> [younghz的Markdown库](https:://github.com/younghz/Markdown "Markdown")。\r\n\r\n**参考式**：\r\n> \\[younghz的Markdown库1\\]\\[1\\]    \r\n> \\[younghz的Markdown库2\\]\\[2\\]    \r\n> \\[1\\]:https:://github.com/younghz/Markdown "Markdown"    \r\n> \\[2\\]:https:://github.com/younghz/Markdown "Markdown"    \r\n\r\n效果：\r\n> [younghz的Markdown库1][1]    \r\n> [younghz的Markdown库2][2]\r\n\r\n[1]: https:://github.com/younghz/Markdown "Markdown"\r\n[2]: https:://github.com/younghz/Markdown "Markdown"\r\n\r\n**注意**：上述的`[1]:https:://github.com/younghz/Markdown "Markdown"`不出现在区块中。\r\n\r\n#### 4.9 图片 ####\r\n添加图片的形式和链接相似，只需在链接的基础上前方加一个`！`。\r\n#### 4.10 反斜杠`\\` ####\r\n相当于**反转义**作用。使符号成为普通符号。\r\n#### 4.11 符号''`'' ####\r\n起到标记作用。如：\r\n>\\`ctrl+a\\`\r\n\r\n效果：\r\n>`ctrl+a`    \r\n\r\n#### 5. 都_谁_在用？####\r\nMarkdown的使用者：\r\n+ GitHub\r\n+ 简书\r\n+ Stack Overflow\r\n+ Apollo\r\n+ Moodle\r\n+ Reddit\r\n+ 等等\r\n\r\n#### 6. 感觉有意思？趁热打铁，推荐几个_工具_。 ####\r\n+ **Chrome**下的stackedit插件可以离线使用，很爽。也不用担心平台受限。\r\n在线的dillinger.io算是评价好的了，可是不能离线使用。    \r\n+ **Windowns**下的MarkdownPad也用过，不过免费版的体验不是很好。    \r\n+ **Mac**下的Mou是国人贡献的，口碑很好。推荐。    \r\n+ **Linux**下的ReText不错。    \r\n\r\n**其实在对语法了如于心的话，直接用编辑器就可以了，脑子里满满的都是格式化好的文本啊。**\r\n我现在使用`马克飞象` + `Markdown-here`，先编辑好，然后一键格式化，挺方便。\r\n\r\n****\r\n**注意**：不同的Markdown解释器或工具对相应语法（扩展语法）的解释效果不尽相同，具体可参见工具的使用说明。\r\n虽然有人想出面搞一个所谓的标准化的Markdown，[没想到还惹怒了健在的创始人John Gruber]\r\n(http://blog.codinghorror.com/standard-markdown-is-now-common-markdown/)。\r\n****\r\n以上基本是所有traditonal markdown的语法。\r\n\r\n### 其它： ###\r\n列表的使用(非traditonal markdown)：\r\n\r\n用`|`表示表格纵向边界，表头和表内容用`-`隔开，并可用`:`进行对齐设置，两边都有`:`则表示居中，若不加`:`则默认左对齐。\r\n\r\n|代码库                              |链接                                |\r\n|:------------------------------------:|------------------------------------|\r\n|MarkDown                              |[https://github.com/younghz/Markdown](https://github.com/younghz/Markdown "Markdown")|\r\n|moos-young                            |[https://github.com/younghz/moos-young](https://github.com/younghz/moos-young "tianchi")|\r\n\r\n关于其它扩展语法可参见具体工具的使用说明。\r\n', '4', 'markdown,startblog', '2016-07-26 00:00:00', 2);

-- --------------------------------------------------------

--
-- 表的结构 `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(50) unsigned NOT NULL,
  `tag_id` int(50) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(4, 1, 2),
(5, 1, 4),
(6, 2, 1),
(7, 2, 2),
(8, 2, 3),
(9, 3, 1),
(10, 1, 6),
(11, 7, 7),
(12, 7, 1),
(13, 7, 14),
(14, 0, 1),
(15, 0, 30),
(16, 8, 30),
(17, 9, 38),
(18, 9, 42),
(19, 9, 37),
(20, 10, 36),
(21, 11, 43),
(22, 11, 38);

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `category_order` int(50) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `category`, `category_order`) VALUES
(8, 'python', 1),
(4, 'Startblog', 1),
(5, '漏洞分析', 1),
(6, '代码审计', 1),
(7, 'web安全', 1);

-- --------------------------------------------------------

--
-- 表的结构 `siteinfo`
--

CREATE TABLE IF NOT EXISTS `siteinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `statistic` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `url`, `email`, `title`, `keywords`, `description`, `statistic`) VALUES
(1, 'http://www.startblog.com', 'startblog@sina.com.cn', 'startblog v1.1', 'startblog,codeigniter,markdown,php', 'startblog是一个基于codeigniter 3.x开发的简单，易用，Markdown博客系统！！！', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag_button_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `tag`
--

INSERT INTO `tag` (`id`, `tag_name`, `tag_button_type`) VALUES
(43, 'markdown', 'success'),
(42, 'php', 'danger'),
(41, 'XXE', 'info'),
(40, 'XSS', 'success'),
(39, 'codeigniter', 'danger'),
(38, 'startblog', 'danger'),
(37, 'github', 'success'),
(36, 'PHP Markdown', 'info'),
(35, 'PHP', 'warning'),
(34, 'HTML5', 'danger'),
(33, 'python', 'info');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'startblog', '2f780b5a7762af9c258076e913178715');
