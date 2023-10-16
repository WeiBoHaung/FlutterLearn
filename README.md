# Flutter資源

###### tags:`flutter`

## 不醋的教學影片
1. [20 分鐘快速學會 Flutter 基礎入門 
](https://youtu.be/n8eY4qb7Dgw?si=OIu_23KhsVv8_Dij)
    從基本環境安裝到一個頁面傳資料到下一個頁面。
    
1. [Net Ninja](https://youtu.be/1ukSR1GRtMU?si=Hs4LJUb5A3eQEUGX)
    教學flutter各種寫法教學，如:http呼叫、頁面傳參。
    
1. [Johannes Mike](https://www.youtube.com/c/JohannesMilke/videos)
2. [Vadad Nahavandpoor](https://youtube.com/playlist?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&si=MdjPhlRYYD-cIW5E)
3. [FreeCodeCamp](https://www.youtube.com/@freecodecamp/playlists)
## Net Ninja

### 第一節 安裝
*    介紹Flutter，告訴你如何安裝，每章節會使用到的範例CODE:[Shaun (Net Ninja)](https://github.com/iamshaunjp/flutter-beginners-tutorial)
### 第二節 架構介紹
* 講解Flutter是如何組件一個app的，是由好幾個widget組成的，Flutter 通常會使用到好幾個 widget。widget 是 Flutter 中构建 UI 的基本元素。它們可以用來構建簡單的元素，例如文字和圖像，也可以用來構建複雜的元素，例如表格和列表。

* Flutter 提供了大量的 widget 供您使用。您可以根據自己的需要組合和使用這些 widget 來構建任何您想要的 UI。

* 以下是一些常用的 Flutter widget：
     * Text：用來顯示文字
     * Image：用來顯示圖像
     * Button：用來創建按鈕
     * TextField：用來創建文本框
     * ListView：用來顯示列表
     * Scaffold：用來構建應用程序的框架
     
* 舉例程式碼:
    ```flutter!=
    import 'package:flutter/material.dart';

    void main() {
      runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Demo'),
            ),
            body: Center(
              child: Text('Hello, world!'),
            ),
          ),
        );
      }
    }
    ```
### 第三節 Dart語法
* [Dart 線上編輯器](https://dartpad.dev/)
* Dart 有以下幾種基本型態：

    * 數值型態：包括 int、double、num 和 string。
    * 布林型態：只有 true 和 false 兩個值。
    * 列表型態：可以存放任意型態的元素。
    * 集合型態：可以存放唯一的元素。
    * 映射型態：可以存放鍵值對。
    * 以下是一些 Dart 型態的例子：

        ```Dart!=
        // 數值型態
        int a = 10;
        double b = 10.5;
        num c = 10; // 可以是 int 或 double
        String d = 'Hello, world!';

        // 布林型態
        bool e = true;
        bool f = false;

        // 列表型態
        List<int> g = [1, 2, 3];
        List<String> h = ['a', 'b', 'c'];

        // 集合型態
        Set<int> i = {1, 2, 3};
        Set<String> j = {'a', 'b', 'c'};

        // 映射型態
        Map<String, int> k = {'a': 1, 'b': 2, 'c': 3};
        Map<String, String> l = {'a': 'b', 'b': 'c', 'c': 'd'};
        ```
* Dart 還提供了一些複雜的型態，例如：
    * 類型：可以定義自己的型態。
    * 函數型態：可以表示一個函數的型態。
    * 泛型：可以讓您指定一個型態的參數。
    * 以下是一些 Dart 複雜型態的例子：
        ```Dart!=
        // 類型
        class Person {
          String name;
          int age;

          Person(this.name, this.age);
        }

        // 函數型態
        typedef void Function(int, String);

        // 泛型
        List<T> g(List<T> list) {
          return list;
        }
        ```
    
* function寫法與java相同
* class 建構值寫法，其他與java一樣
    ```dart
    class Person {
      String name;
      int age;

      Person(this.name, this.age);
    }
    ```
* 繼承，需要注意建構值寫法，其他特性與java相同
    ```dart
    class Person {
      String name;
      int age;

      Person(this.name, this.age);
    }

    class Student extends Person {
      String school;

      Student(String name, int age, this.school) : super(name, age);
    }

    void main() {
      Student student = Student('John Doe', 20, 'Google');
      print(student.name); // John Doe
      print(student.age); // 20 
      print(student.school); // Google
    }
    ```
    
### 第四節 建立第一個專案
    
* 介紹Android Studio，以及Flutter，是一個萬物皆wegget的框架。

### 第五節 
    
* 修改預設專案的主頁。
* 將主程式一執行runApp改為建立一個MaterialApp。
```dart!=
void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('testApp'),
        centerTitle: true,
      ),
      body: Center(child: const Text('hello')),
      floatingActionButton: FloatingActionButton(onPressed: null, child: Text('addd'),),
    ))  ,
  );
}

```
* 畫面如下
![](https://hackmd.io/_uploads/BklGP07Zp.png)

### 第六節 顏色與字型
* [MATERIAL DESIGN](https://m2.material.io/design/color/applying-color-to-ui.html#top-and-bottom-app-bars)
    Google 設計的設計系統，旨在為使用者提供一致且直覺的使用體驗。該系統基於紙張和墨水的概念，使用簡潔、明亮的色彩和大膽的圖形。

    MATERIAL DESIGN 網頁是 Google 提供的一個資源中心，幫助開發人員和設計師了解和使用 MATERIAL DESIGN 系統。該網頁包含了大量資料，包括：

    * 設計指南：介紹 MATERIAL DESIGN 的設計原則和最佳實踐
    * 工具和資源：提供可用於創建 MATERIAL DESIGN 應用程式的工具和資源
    * 示例：展示 MATERIAL DESIGN 在不同應用程式的實際應用

* flutter在使用顏色可以參考[這頁](https://m2.material.io/design/color/the-color-system.html#tools-for-picking-colors)的色碼表。
![](https://hackmd.io/_uploads/HyRgXmrZ6.png)

* 字型可以到[GoogleFont](https://fonts.google.com/)下載
    1. 在根目錄建立fonts資料夾
        ![](https://hackmd.io/_uploads/BJDsAIU-6.png)

    3. 將字型檔解壓縮放入
        ![](https://hackmd.io/_uploads/SJg6R88ZT.png)

    5. 修改pubspec.yaml
        ```yaml!=
          fonts:
            - family: IndieFlower
              fonts:
                - asset: fonts/IndieFlower-Regular.ttf    
        ```
    6. 更改後需要重新編譯。
* 本節主程式碼
    ```flutter!=
    import 'package:flutter/material.dart';

    void main() {
      runApp(
        MaterialApp(
            home: Scaffold(
          appBar: AppBar(
            title: const Text('testApp'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          body: Center(
              child: Text(
            'hello WeiBo Huang',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower',
            ),
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('addd'),
            backgroundColor: Colors.red[300],
          ),
        )),
      );
    }

    ```
    ![](https://hackmd.io/_uploads/Hyn0DVS-a.png)

### 第七節 Stateless Widgets

在 Flutter 中，widget 是構建 UI 的基本元素。widget 可以分為兩類：StatelessWidget 和 StatefulWidget。

* StatelessWidget

    StatelessWidget 是不可變的 widget。這意味著它們的狀態不能在使用時更改。StatelessWidget 通常用來構建靜態的 UI，例如文字、圖像和按鈕。

* StatelessWidget 的生命週期如下：

    * initState()：在 widget 第一次插入到樹中時調用。
    * build()：每次 widget 需要重建時調用。
    * dispose()：在 widget 從樹中移除時調用。
    * 以下是一個簡單的 StatelessWidget 示例：
    
    ```DART!=
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Text('Hello, world!');
      }
    }
    ```
* 本節程式碼
```DART!=
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('testApp'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: Text(
        'hello WeiBo Huang',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'IndieFlower',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Center(
          child: Text('m111e'),
        ),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
```
    
### 第八節 image
    
* 可以使用NetworkImage直接使用網路圖片。
    ![](https://hackmd.io/_uploads/rkXMuIIbp.png)
    
* 使用內建image做法
    1. 在根目錄建立assets資料夾
        ![](https://hackmd.io/_uploads/r1TKRUUWa.png)
    3. 將圖片放入
        ![](https://hackmd.io/_uploads/r1UwEvLWT.png)

    5. 修改pubspec.yaml
        ```yaml!=
          assets:
            - assets/image1.jpg
            - assets/image2.jpg
        ```
    6. 更改後需要重新編譯。  
    7. 使用AssetImage來讀取圖片。
        ![](https://hackmd.io/_uploads/rkij4DUW6.png)
    8. 或是使用Image.asset()
        ![](https://hackmd.io/_uploads/r12FrwUWT.png)
* 本節程式碼
    ```dart!=
    import 'package:flutter/material.dart';

    void main() {
      runApp(MaterialApp(
        home: Home(),
      ));
    }

    class Home extends StatelessWidget {
      const Home({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('testApp'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          body: Center(
              child: Image.asset('assets/image2.jpg'),
              ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Center(
              child: Text('m111e'),
            ),
            backgroundColor: Colors.red[300],
          ),
        );
      }
    }
    ```
    
    ![](https://hackmd.io/_uploads/r11Zz_L-6.png)

### 第九節 icon & button
    
* icon寫法
    ```dart!
    body: Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
          size: 50.0,
        ),
    ),
    ```

    ![](https://hackmd.io/_uploads/SkY4CY8b6.png)


* 如何在icon上加上icon
    ```dart
    ElevatedButton.icon(
      onPressed: () {
        print('is click');
      },
      icon: Icon(Icons.email),
      label: Text('click me'),
    ),
    ```
    ![](https://hackmd.io/_uploads/B1OzCtUW6.png)

### 第十節 Containers & Padding & 

* Container 小部件是一種用於創建矩形容器的小部件。它可以用來容納其他小部件，也可以用來創建自定義的 UI 元素。
    * Container 小部件具有許多可定制的屬性，可用來控制其外觀和行為。這些屬性包括：
        * width：容器的寬度。
        * height：容器的高度。
        * color：容器的背景顏色。
        * margin：容器的外邊距。
        * padding：容器的內邊距。
        * decoration：容器的裝飾。
        * transform：容器的變換。
    * 演示
        ```dart
        body: Container(
            color: Colors.grey[400],
            child: Text("hello"),
        ),
        ```
        ![](https://hackmd.io/_uploads/BJThtM9-T.png)


*  Padding小部件是一種用於在小***部件周圍添加內邊距***的小部件。內邊距是指小部件周圍的空白空間。
    * 演示
        ```dart
        body: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.grey[400],
            child: Text("hello"),
        ),
        ```
        ![](https://hackmd.io/_uploads/HyhVqMqW6.png)

    
*   Margin 小部件是一種用於在小***部件周圍添加外邊距***的小部件。外邊距是指小部件周圍的空白空間，它與內邊距相反
    * 演示
        ```dart
        body: Container(
            margin: EdgeInsets.all(20.0),
            color: Colors.grey[400],
            child: Text("hello"),
        ),
        ```
        ![](https://hackmd.io/_uploads/BkDO9fqba.png)

### 第十一節 Rows
* Row 是一個小部件，用於將小部件水平排列。它可以用來創建各種 UI 元素，例如按鈕欄、菜單、選項卡等。

* Row 小部件具有以下屬性：

    * mainAxisAlignment：指定主軸上小部件的對齊方式。主軸是水平方向。
    * crossAxisAlignment：指定交叉軸上小部件的對齊方式。交叉軸是垂直方向。
        ![](https://hackmd.io/_uploads/rJnQWQ9b6.png =400x250)
    * children：一個包含要排列的小部件的列表。
* 演示
    ```dart!=
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('hello'),
              ElevatedButton(
                onPressed: () {},
                child: Text("ttt"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 60, 70, 80),
                color: Colors.grey[500],
                child: Text("hello contain"),
              )
            ],
          ),
    ```
    ![](https://hackmd.io/_uploads/H1LTM7cb6.png)
### 第十二節 Columns

* Column 是一個小部件，用於將小部件垂直排列。它可以用來創建各種 UI 元素，例如標題欄、列表、表格等。

* Column 小部件具有以下屬性：
    * mainAxisAlignment：指定主軸上小部件的對齊方式。主軸是垂直方向。
    * crossAxisAlignment：指定交叉軸上小部件的對齊方式。交叉軸是水平方向。
    * children：一個包含要排列的小部件的列表。
* 演示
    ```dart!=
    body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.grey[500],
            child: Text("hello 20"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.grey[500],
            child: Text("hello 30"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.grey[500],
            child: Text("hello 40"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            color: Colors.grey[500],
            child: Text("hello 50"),
          )
        ],
      ),
    ```
    ![](https://hackmd.io/_uploads/BkKnpU9bT.png)

### 第十三節 Flutter Outline & Shortcuts

* 快速將widget外面包上其他的widget方法
    1. 將游標停留在你想要的wedget上。
        ![](https://hackmd.io/_uploads/S1bKEDqZ6.png)

    3. 點左側的燈泡圖案。
        ![](https://hackmd.io/_uploads/B1snNvqW6.png)

    5. 選擇你要的widget。
        ![](https://hackmd.io/_uploads/HJzJSP9b6.png)

    7. 完成。
        ![](https://hackmd.io/_uploads/HkVWHwqZp.png)

### 第十四節 Expanded Widgets

* Expanded 小部件是用於擴展其父容器空間的小部件。它可以用來創建各種 UI 元素，例如彈性按鈕、彈性文本框等。

* Expanded 小部件具有以下屬性：

    * flex：指定小部件佔用父容器空間的比例。
    ```dart
    body: Row(children: [
        Expanded(
          child: Image.asset("assets/image1.jpg"),
          flex: 3,
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.red,
            child: Text("1"),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.green,
            child: Text("2"),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pink,
            child: Text("3"),
          ),
        ),
      ]),
    ```
    ![](https://hackmd.io/_uploads/Bk6HB_5Za.png)

### 第十五節 Ninja ID Project

