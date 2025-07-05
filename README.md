# typr_runner

![](img/rtypr.png)

Description of your package goes here.

## Installation

You should have TypR installed in your system. You can check [rtypr](https://github.com/fabriceHategekimana/rtypr) if you want or just download the binary from [main](https://github.com/fabriceHategekimana/typr) repo

Juste run this on RStudio:

```r
devtools::install_github("fabriceHategekimana/typr_runner")
```

And now in your Addins you should be able to see "Run TypR file".
You should be inside a saved `.ty` file to run it.

# Usage

You can create a new project in a specific place with:

```r
typr.runner::new("/path/of/your/project/folder/project_name")
```

You just have to open your project like any normal RStudio project.

# Project's actions

## Running

You can click to the `Run TypR project` addin or use

```r
typr.runner::run()
```
