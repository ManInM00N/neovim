local ls = require("luasnip")
local CMP = require("cmp")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local date = function()
  return { os.date("%Y-%m-%d") }
end

local sources = CMP.config.sources({
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "path" },
})
local snippet = {
  expand = function(args)
    require("luasnip").lsp_expand(args.body)
  end,
}
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- 获取当前文件名
local function filename()
  return vim.fn.expand("%:t")
end

-- 获取当前日期和时间
local function date_time()
  return os.date("%Y-%m-%d %H:%M:%S")
end
CMP.setup({
  sources = sources,
  snippet = snippet,
})
require("luasnip.loaders.from_snipmate").load({ path = { "" } })
-- require("luasnip.loaders.from_snipmate").lazy_load()
ls.add_snippets(nil, {
  all = {
    snip({
      trig = "dateee",
      namr = "datee",
      dscr = "Date in the form of YYYY-MM-DD",
    }, {
      func(date, {}),
    }),
  },
  cpp = {
    snip({
      trig = "qxx",
      namr = "链式前向星",
      dscr = "链式前向星",
    }, {
      text({
        "struct node",
        "{",
        "\tll to, next, w;",
        "\tnode() {}",
        "\tnode(ll w, ll to) : to(to), next(0), w(w) {}",
        "\tfriend bool operator<(node a, node b)",
        "\t{",
        "\t\treturn a.w > b.w;",
        "\t}",
        "};",
        "ll nxt, rnxt;",
        "node e[maxn * 2];",
        "ll h[N];",
        "bool vis[N];",
        "ll dis[N];",
        "void add(ll u,ll v,ll w = 0){",
        "\te[++nxt].next=h[u];",
        "\te[nxt].w=w;",
        "\te[nxt].to=v;",
        "\th[u] = nxt;",
        "}",
        "void init(){",
        "\tnxt=1;",
        "\tfor (int i = 0; i <= n; i++)//网络流使用2*n+7",
        "\t{",
        "\t\th[i] = -1;",
        "\t}",
        "}",
      }),
    }),
    snip({
      trig = "acm",
      namr = "ACM",
      dscr = "通用acm模板",
    }, {
      t({
        "// clang-format off",
        "/*******************************************************************************************************************************",
        " *   @Author: ManInM00N",
        " *   @Filename: ",
      }),
      f(filename, {}),
      t({ "", " *   @Date: " }),
      f(date_time, {}),
      t({
        " ",
        " *                                                          &   `",
        " *                                                            !h",
        " *                                                             IL",
        " *                                                             `L;",
        " *                                                              |@L                             :.",
        " *                                                               TLL             |L                `'",
        " *                                                               '|L*          .*||L          `     |",
        " *                                                              b |L*          ||@|h        .      |`",
        " *                                             .,;h@@@@phn,      Tp&L*      .  |*|&L,      |   ** .L",
        " *                                 .;nwmt@@@&P**|L|LLLLLLL**LIKKKbINL*       ; |L|L L     |***  **|`",
        " *                               ,|*` ,vpKP&L.,,``****|#pw+,, |KEKKKNL       |&pL`|*|    m  '****|L",
        " *                            '-*`  aKP0PH T@L '***   IEEEbp,`'*KEEEKKp     |LIEL*|L*+ ,|`  | '**|",
        " *                        ,|*`    ,KP*IP*L 'EL*+  `  :IEEEEEEPh,'IEEK#Kp,***LLIEL*|@|E;|L   * **|L  ' ' **|;.",
        " *                      :'       |P` |&*'L  !E `*    !KEEEEEEEH|H@IKEK#KNL*||&IKLL||IEHL*  *,|*`|*    '**|L|*",
        " *                    '`      ' |`   |L  |   `Y, `. '  'KEEEEEEHLL|||KKKBN@|@&#EL|LL|KP*``'*`  |* *  ||@t*|P",
        " *                  '       '  '     !`  'L    `:  ':  ..`KKEEEE@|L|||LIKKKKKKK&L|L|&L    '  '|L+,  ,*'`;P*",
        " *                '         '        : :  *L     '+,'IKKbKppKKEEE@|L|||||IKKKKE&LL**|L` |L  :L*.,,''`,|**,`",
        " *               *                   `     *h,    '|L|KKEEEEE0KKEEE@L|||||LIKBEIEL  |L  *||,`  |L` :*``*|`",
        " *                           |        * '   '0@+    '|LL5KKKKEEEKKKEHL||&P&LIKbE|&m*IN,;,|@W@*;*      ,|n          ,,;;n",
        " *             ;            :&      ' '  : ';'IE@L,   '||LLLL*5KKKKKb@L&&@LIK#KKKp#NKPP|KEKKKbL*   `;mPL+:;'```**||||LL,",
        " *        .|;m&*            ||h      ',|  | `|L||&@L|+, `**|L**`'  ``TKKN#p#K#KKKKKKE``L*KL,|KL+ '*tPL|L,,,p@#KbLL#EKM**",
        " *     ,|Lw***`             *'LL ** , `|E, |, `|L&@L|LL|,  ``*|+,   `  IKKKKKKKNp##KbppppmhKP*    '**  '|`'**``*||||hn",
        " * ''````                  |L `|EL||L|,'|EL *|  `***LL`*|c,     ``**+,,  *KKK**IKKKK#BKKKpp            , *L    |@@&W@L&h",
        " *          ,L             &L,  |LHLLLLL*IEL '|L;    `**:||L**|w++++++ *** `   !KPKKKKKKKKN++||*''*'|||`|L`|,  *|&E@&&E&",
        " *        |L|             |K@L| '||||||L|L*&h  `*L        `'**                  `IEKKpEPKKKKKpp, |* ,||L**  *L *||||&KE&",
        " *        ||`    :  :*    IKELLL,'||LLLL**|+'L,  '|               :              `IEKKPKp|mL||L`|* |*  '*+   `|||&&PPP*`",
        " *       ||L     '**||L ||KE@LL|&L``*``` `   `` '||&,             '|               IEKK@KE@LL|@&L,|*      *YH'````",
        " *       |&L  |L:*|*||L*|IEE&EL`*&   `           '&@L|,            |H              'IKKK@IKp@||@@HL**.|H|+  `|,,;,",
        " *       |&|L|&@|*L|||L||IEL&PHL |b    '     '  *,|IE***|,  ', `   '&              ' IKKKbEKKbKb@&@@@L|&L|&L||PKK#p@np",
        " *       |EL||E|&@LL|&LLLIHL|L*IEm|EL       *,'*|L||L*   `*|,`|,':  'L              *'IKKKKE&ELL*L**TPWH@&@@|H    `*KKKK",
        " *       !@L||H|||LL||LL`|L|E  ,+`*TEH,      `hm||&@|@, ;|&####KNppp,*         :L|  :*`IKKKK@TL`t.':    ```*``         ``",
        " *        |L|&@L||@`'*** |L|L;**`    ***+   ,, |LL&|LTH@#KKKKKMKKK`KNm~        |L|L  ** IKPKNL`.   `'*u.",
        " *       ||||IE|LL&L ` ' '|L*`  ,++a,,,, '|,||@L||L`` !P`:p#ESN#bEh:KL         |*|L  ||L|IEPL`  '",
        " *       {H&&KP|HL|L  |L` |*  :@##KKKKKKNp  '*|||&@L`    'KKP5KK|5h |*   `    |**|L .{E@|&Kh    * +,`",
        " *      pH|IP '**|IP  'L,  `;t#KMPKP5KE`IE`    ``*H5bL,   '|L, ,m*  *       :+*|*|L  |KEL|IE .,    ||",
        " *    ,KP&|@    |&IEb  |&L :L#B` :KKKKKEKP*           `      ```   '  |`   .|* * |@  'IEL|&&h,LL   .'*|n,",
        " *  :*`  {PP  LL{KE@Kp 'LIp'| `N  *LL***`|                         .|`  ` ;#P |  |E   IE@&KEEm|`*  |m",
        " *       !HL ||LIKPEKEL |`Tb |,     '*:*`                       ;+|P   ` |KPL:*  IEL++IE0KEEEP|  : |&",
        " *        &  |*|I`!PKPIh|b `*L'u                                 .*     aPP*  |L'5E@|&&EIEEEKb'L ',|P",
        " *        *L|` *| !L|LIKLIb;,,`'|u                              ,*  ,,aKKE* ,&KELIP@|LK|K5KEM     *'P",
        " *              |, *`|,|*|Kb`*KNp,`;                  ,n      .*`,p@@#P&#P,pKEEKEKbE@KLP #KP      |p",
        " *               *:* |&#h TKbL'KKL'Kp           ***  ``      :.**|#KKKEKEpKKKEKEKKKEEP*;P`        |`",
        " *                 | IK`|L'IEKp'TKpKKKp,                   ''` ,#KKPIKKKP`  IEKKKKKbKp",
        " *              ,pKKL`;#KK |*|KKpIKKKKKKbp,                 .a#KKKKb#KK     !KN  TKKKEbn",
        " *            ;pHP` LIKM`   |L  TK#KEb |KKEIH:.          ,pKKEKKKKEKM`     ; IKN |KKKb@|bn.",
        " *       .;||HP`  /KP` :*,|P*    |KKP`IKKKKM    '<:.,,apKE0KKEEKKKKN       IN|IKKp `KKE*&@|@p,",
        " *,::**|L@pP`  ,p@m*` ,|L*``    L#KK,#KIEKP         &KKKKKKKKKKKKKKKn  L  |IKbL`KKNp`KKN TELTKKhn",
        "'* ,pKKKKP,,p#KEL`   |H*       |IKbbP &KKP          #KKKKKKKKKKKKKKEH  L  |IEKKp *KKKpIKN `Kp",
        "这是Philia,她真的很可爱！！！",
        "********************************************************************************************************************************/",
        " // clang-format on",
        "",
        "#pragma GCC optimize(2)",
        "#include <bits/stdc++.h>",
        "using namespace std;",
        "typedef long long ll;",
        "const int maxn = 2e6 + 7;",
        "const int N = 2e5+7;",
        "const ll INF = 1e18;",
        "ll n, m, k, x, y, z;",
        "#define Pa pair<ll, ll>",
        '#define YES cout << "YES\\n"',
        '#define NO cout << "NO\\n"',
        "#define rep(i,n) for(int i = 0; i < (int)n; i++)",
        "#define FOR(n) for(int i = 0; i < (int)n; i++)",
        "#define repi(i,a,b) for(int i = (int)a; i < (int)b; i++)",
        "// cout << fixed << setprecision(10) << '\\n';",
        "ll mx[4]={0,0,1,-1},my[4] = {1,-1,0,0};",
        "void solve()",
        "{",
        "\tstring ss;",
        "\tcin >>n ;",
        "\t",
        "\tcout << endl;",
        "}",
        "int main()",
        "{",
        "\tios::sync_with_stdio(0);",
        "\tcin.tie(0), cout.tie(0);",
        "\tll t = 1;",
        "\tcin >>t;",
        "\twhile (t--)",
        "\t\tsolve();",
        "\treturn 0;",
        "}",
      }),
    }),
  },
})
