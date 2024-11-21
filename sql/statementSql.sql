CREATE DATABASE money_tracking_db DEFAULT CHARACTER SET = 'utf8mb4';

CREATE TABLE user_tb (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    userFullName VARCHAR(100) NOT NULL,
    userBirthDate VARCHAR(100) NOT NULL,
    userName VARCHAR(50) NOT NULL UNIQUE,
    userPassword VARCHAR(50) NOT NULL,
    userImage TEXT NOT NULL
);

CREATE TABLE money_tb (
    moneyId INT PRIMARY KEY AUTO_INCREMENT,
    moneyDetail VARCHAR(100) NOT NULL,
    moneyDate VARCHAR(100) NOT NULL,
    moneyInOut DOUBLE NOT NULL,
    moneyType INT NOT NULL,
    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES user_tb (userId)
);

insert into
    user_tb (
        userFullName,
        userBirthDate,
        userName,
        userPassword,
        userImage
    )
values (
        'Christy Cuttles',
        '1987-03-01 21:28:14',
        'ccuttles0',
        'uK9|baAR',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKnSURBVDjLjY9NbFRlGIWf+zfToTMFWjKUQrTlJyk1FBYYlI0KkuimceHKsGGhG2JcGKNxRySBmBj3JG5YGMJKF5poNRAbfxJDCy1UsJZGbaCddmY6c+femXvv970va9ox8SRnd/LkPI6qsjnp7PBBFb2pyqCKeCokKjqPcKH3xeWvnxqr6pa2Z54Js8dXVeM51davqo1JzVavanNq6K/NW58uUStFf8dx6DwCU4esjpsvIUYObN52BYgFSZZxsg3QDra9BImLNVt1/+OBYpu3yFa/Q5IWEjcIBk4gBv7nA8HN7yXoO4wmK0iwDVHBGtkKSGae7VPReRUZVMFTq4mjDib8A1ObQzstbBxS2D/eXUGsfOyXP9gb7J4A7YCN8lm0SPzgAoVdJ9GeFbx8HdRgM7oB9EO//DqYJtgm2BZ+oUwWVfHcebQdYqOQwCljsy4K1gASoaYFmiLJGqRtjBFy2w+iPRVsvsbNapEbG6dofv6GhnEj3GjVPv320p2LvhjBRgvYjWkkXUWTf/H69mNTJandR+OIH1Z7udvr8/JLr7Cv/xA37n1V+u3u1CdnPxo87tpMcYIBvMIIfu8ofvEYqMVkSn7nIXL9e/hmpcSx0aNY13J0zxmsk/HCkZP8HbkTrjWC47qYeAHTnMU0b+MXn8OkShatk1YrVMIagVNk4vC7ALx/+goHyuNkiuPajOvt9RmC0hh+aYyg/wRx9SFevh+7bYie0VcJwzXuPfqFy5PnALj8/TkWK7N4DtZ7783CPjfX95rbU8TxHbK0Rrj2J+Hywo+Nf+7Xqw+md7Uhmq5X88O7h1mPl2lEFX6+M8VQO/7JeXhtYEQM74iVM9ZyRAxzYnVSLFfGz9eXAJa+2Dny2WLuy9mW93wqeDkHO1Ywv7+9o/PWEyzemnF7ZfggAAAAAElFTkSuQmCC'
    ),
    (
        'Eli Brookshaw',
        '2016-04-11 00:06:33',
        'ebrookshaw1',
        'gT3",IV.IG+g9z',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAH3SURBVDjLhZNJjxJhEIb7T8xVw78g6fh75mJGY/SqTjRGTXTcbu7xxtItPew2YxMgbGkCNMgSQkgDAiHRKNpkWPL61ZfQGcLioS5V9T711tfVQrVaRaVSQblcRqlUQrFYRKFQgK7ryOfzBwCEfSEYhoHlcrkRvV6PQzKZzF6IQJNJYJomn9zpdGwI5ZgLJJPJnRCBLFMzTaNELpfTJ5MJ5vM5zxMwnU5D07StEIGmrhqZ+JxZNqfTKUY/u4gbMq+1220kEgnEYrENiECTV5YXiwVIPP71Hc9Or+ORdAjNkHit1WqRC0QikTWIwHa0xuMxb5rNZhj+6OLk9Bpef7mN92f38JyBVpBms0kuEAgEbIiQzWavsB2t0WjEm76ZOTyWD/FWvYtP2kN8OLu/Bmk0GuQCPp+PQzgllUqJbEdrOBzypnq3gKe+I7xTj23IiXKEWMnF67VajVxAkqQDe5d4PC6yHa3BYLAB+fj1AV4Fb+KlcgvzxYy7CIVC8Hg8l9delO0nqqpq9ft9G/Lk81W88N/Am+gx/vz9fVHssFe4GNFoVAyHwxZdIrdr6kx8B9Nzyxa73W6H/YjbjiMYDIp+v9+iS1x9YhKz/Jp4J4BCURQne2mLDqxer28V7wVQyLLs9Hq9FoldLpdj6yn/73dlU51MfGlX/R/5GCirExPTUwAAAABJRU5ErkJggg=='
    ),
    (
        'Vera McReidy',
        '2008-03-09 17:57:21',
        'vmcreidy2',
        'xC7`PgzN*o$"+E',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJZSURBVDjLjZNfTFJRHMdBmX/m1Pln+qDTNjcmD77oo62trYd667H10nNPvrbWIy+u0FFAOhrMzWZKXaYE8YAx4+Ll8kfL/NPoIuBdmAVjCQQb1LdzLkg2wzrb5557zu/8Pud3/xwZABmFNLlKpbqi1Wr9SqXyKhkr6FwFxejo6EWj0cjRNXSumkcvAuk4QsBuRyKRAG+zSWOhAr3fcDqlWMjhqMYqG8vkdLDV2IhdloUoitgh/dv6eqTq6iQ25XLser1SjK7ZrAgq1ZUF4ZYWMHNziMViYMxmbHR3I97ZiXhbG4LNzWBMpnKM9Ht/E3xtb8fq8DBm+vvhGhxEZGAA0b4+7Pf0YI+I7K2teNjUhJcNDUiQis4IMl1dOBofx+exMRyOjEAksvjQEKJEFCEiobcXH0lVQkcHUgrFnwKe51EqlWpSLBaRz+claKNzNKemIJfLIRAIIJVK4smSA48ZN6YtPPTWEGYsr1HIZ88X0GSr1YoF+xosngjCiSyiyQL4yDFWeBHzK2/g8/nOCmipJxKGYaBn/NgRj+GPfcf6fg5ewtanPHRL3tqCE6hAs+iD8KWA9UgWrJDF6ocMQgcFPHoRBMdx/xbonvPYFjNYC5eTKUGxgPvzrPSY1V+ZCkjSj9MCyuIrDq7QAYKxHLhYHgGyu+1dBtOzC7A/1f0WuFwupNPpb1Ry+mUmjpJwsu9JJRwM5AtonvGYmrUgsGyAffIm7l2/cEMS6PV6uN1ueDyec2HJOWBMU3BobmF7+QGME5dykkCtVrPkGON/mbx7G+Y7134aJi7jF1A6sIfsK39SAAAAAElFTkSuQmCC'
    ),
    (
        'Bill McNae',
        '2019-10-18 23:52:53',
        'bmcnae3',
        'uT8(xlr(',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALVSURBVDjLfZJNaFxlGIWf7853597JTJzQzDi9U6chPxCaOmi78idIlglEsEJJqFmIaDddlEK7EF3pKmJcdiUU3bmwXQiiGxsQQdBaF9HYUFucZP6SNHWS3uncO9+PiyDNGPDs3s3DOec94rOvflkyRrzRjo0fKQ7L9p6uBN/l2tuvnb4EII0VC7Mvl/K+7wshEvyfOga06nL9u7tvAvuAdmQ8z/PF58sP6fCAPXGH4cImKbeFsoad3RS/3c3SZ08gGeTy2WG0EeJfqIwVOE4CR0DsNBjObeIl/6IV7aG0QnoeI6WA+/fSDCRzGNPrSgIYwHEEkd0i6T7k78ctIt0hVgplQzzPI4xSDKYcLLanmCcAIbDKEOkuHRXxuBsRG4U2gOhijUY6Amt7W3UArN0H+OTZC9NYXCKjiZRGiCThXoZMskgi4YAVhyNYux8hkzhGtdEk69fpSzt4QvFop49mIyDIjiAdcegz0h4EuE9TTJ1i4/ZNBjI1hNa4nTzHRxfI+AHamP/O4omDOw/Oo42hG2uOtCTSfYVc4Rk27q9S2/wAIyMGt07xze5JdpvbT1248OmVlZWVq9JaiwCmT19CK833X/9A//EB5ubmCMOQjdFRfvw5R8JxmD33Kq50qdfr4tYt76NKpZKX4sBeV3/9g/ZWm9lzr/PJ1SV+v71KcDSgXC5Tr9dZ+niJRqPBsZGTauHsrKxUKucd3xUtTJfnCi/waD2ivz8LwOWL79GNFfPz80xOTjIzM8P09DRxHPPsS2dCgGw268mkFF98efPei7G25T83VTLRrvuAePf9D5VSSi4uLpJOpwEIwxCtDT99e631/FsL2Wq12hEHhzExMXFibGzs+tTU1NFSqWSklEeazSZra2t4nsfQ0BCFQgGl1M76+rqzvLzc6AGMj48ngiAop9PpG8ViMe95XgJwtre33wGquVzuBuBGUaRrtdpWGIZn/gGotkJJF2DBHwAAAABJRU5ErkJggg=='
    ),
    (
        'Meg WeldeEntern',
        '2003-09-19 07:07:47',
        'mwelden4',
        'vH2&i2NI1!Gyg6N4',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAANvSURBVDjLVZNbbFN1HMe/p+d0be3p6Lr7unWMbuCQbR3FQWAEyPASkYe5mHhJTIhhPPngDAQTEGOMIZBpFiKoIWiIhAdgYxI14cFEo1M6O+Zmx1ob2MbYhbEb6zn/y7n8fcCZ7ZP88nv7JN+HjySEwDKfDX6oMpO3Uc5fpJw0UM5AGY0Ryn+U+dZP/OI116evB3WsQFoWtA+c2MUM/vVmf2OFrLhhSBYKPPn4Z3wInYnL54LSF4PcMA9zbh043xr+eZXg9F/Hm0POys5cbwke8Fn0Z4YgCwe2q/W49MdXcx6zucEn7Y01VKqBxMhjjE5mXrlypLYLAByn+o8HKKcXC9QQ+jIp/LLwOxaMRVR6yjE9dR+aRo55RdN76wvcgcIcN6qKVRDCLz5/tCcAAA6dkbaof5eaJuMY0pPQTYp8OQCVOnF94Gp/UD5zixKjtbLMi+EJikC2C1WlPpXqpO0/gbZPdrowmBkGNxmyHSpqs59GLPUbyBJ9x2BKR2SdT+aGjfFZjtQUQ1GuF5TQfU8EhG5kkgkHJETUTWjK2YGpu6OIp+MXQt5vSghh0Rp/EsFHpwC6iLFJBpeigFFSAQCKRnRS6M7LavRtwfTEfZzra59jGu84Mb//bHIxrvy6Zu3dAq37mdLwDtTP/oSbCy+BcQWcUBkAFF0n93rv9ERu/N01wwg7eWSy9ErTnPctoSeSO/X4buf+7XklZVuQXVyPGtcHSPvq8OBhITgj6ScTNPJt98C1Q+1j4fqb6Zpg04x7yCgv+9iS5cBCnRXelns7z5fnh/X4O5TXv4md6g8YSY3BYOR7AFC60pELQicnhU7OGOHyLCNcDtuyoNwexFIV3g7VviqD9iF2qRvbDr6PPNIL76JJTSO/AwAcIqMp9lLmDbY1msWrKkCSw7A1At2vwxWKvOzL0WGze4CwYWV6UbG7DYdqYrPXmzspADicn5+dsZe0A9KtOJAYhrOoGBbJYG6TCX8oAlsfgLAJoi0bYPMJuN0prNvcEjQZf3dVC0uNe54TlH7Jw2srFqslOJueRdF6D6xMDEJwxK/dQbSlGpK8BvC8gD/PH3sobHuPtLLG+eo61WL88Ghr9tGNBy9nyY4RCHMegFjRnwOyZwOmE/1I3fjo6irBMj2no4+EZT8lbAFh2ytO/P9h2xBCxP8FbMDM8CUkkoMAAAAASUVORK5CYII='
    ),
    (
        'Zachery Boullin',
        '2015-05-14 01:28:44',
        'zboullin5',
        'sF8|!ngE.kg(R',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIJSURBVDjLjZNPSNNhGMc/7+/3Ww5LmRaho0AdQgWpbRUqHmohVIdBp6Cbp7DWpQi8VyRBt+jQpdNuHYLAWEEiORl0CCsbIlGH5YKFbXPE/rzv+3QYipIOH3h5eB94Pu/3ff4gIuzl5EZGZKe4wx7t1cTEjnElIpuXTCYjxhi01mx4rTX5fJ5UKkUwGCQUChGLxdRGjreVVq/X6evrA2ArWESIRqOICMlkcpuCbQCtNQCzy42fGQFjwYrFGLh4QlOtVncH1Go1RIRw158dCwmBvQHS2Q6sWLRtKNAGrBWuDGkqlUpzAMCZ7t+7tLOjuYJqtYqIMPejEyOCtmBNoxZihaun680VFE0BEWHsaP6/1z98m2P6xTyl1gLXHpwvFcprj2YeLt7fBNxNT/bsC/i5JJex1pJIJHAcB6UU6y05Wnv+cm7sLEc6+5ldetmW/vL+3nA8GNicRGttr+NzyRQ/IyJ4nkc4HCYSiZDTKwwdG8Q4hsHucYyqM3xyFOCmA3A7db0do94d9B3ibfY11lo8z8PzPBzHYa2cx6cOEDt+C4A7F54ROjwA4PcAjDaTRltZKS+r/bV2ktkZrM/iui5KKQqlNZZWF1hcnWdq/DnTbybwuy0AFSUixONxabZIP/mK25tjdGCM/q5TrPz6yMKnebLfi4+3LVMzG44Hp4EbQBuwDjxNP1md+gdPcFmX7csAmAAAAABJRU5ErkJggg=='
    ),
    (
        'Ashleigh Oleszcuk',
        '2013-06-15 04:41:25',
        'aoleszcuk6',
        'cH5"eM|PV&G4_w',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHbSURBVDjLpZM/a1RBFEfPnfciq4uChLgrWChaihBYbAxqBD+AgrGwVBDRxipgH1AMEQJpbawU9SvYCRaiEmOaBUkRDRYBwf3zZt691+K9DWuXxYELwzCce37MXHF3/mfJtYcv789d7jzZ7XvTHTDDzVBT3Bxzw1Uxd1wVNePIgdTb3NxefLuysJZ3LnRWpxrN0GpM1LjZ6+sqsJb3k4f+7p+J1QfJA0Du6izdOjMx4M7jLSqAGwCxVBxwc9TAcMwcNUNLr8qNqM6p9mHUtAJQv4IEQdzxILg4YkIIgkhARJHMySyQl9V9K2vAiBQAFwGBzMEEzJzMIUhGLqDiaKiMTa2OYPU/EAH3f0Ai4OqYgAsQhMyyCjCKMNpUDKk2YyDLhcV3t0mxJMZEGiZe3HyDWWUQypT2DEYAkbp9Ha0YJi6dnGf+9BUG/QKAMpV1hDpLBvhYlHGjYlBQlAVREw1psPlzA68N8pEKgNQ16r78folvP9aZOXiMYRmJGpk52uLB87ukvAXcIN/+vvXq3rO0YKqYGqqKmaEpYX6WeGKDQ9MFRRoSNbLza4fe7ymOl9dfA8h+pvHq8sUv7en2uRgT3W7388en67N71vsd5/OPZj+kYUqfVr7OjZ//BRjUGmnYsJxdAAAAAElFTkSuQmCC'
    ),
    (
        'Tabor Bassam',
        '1986-05-21 17:02:54',
        'tbassam7',
        'mR1!al`i',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAILSURBVDjLpZPNS5VBFIefmXduKVcrKKKSFBdJVJSCSfQPSC1tIxIEUQR9Qa6UQHQTuAiCFhbtWtSmoAKJJMpAqSBJ2gh9UaYXw4jU9N73zsdpMVfDIBDugWHODDMP/H7nHCUilBOaMqNsgOFe0380BLABnAUXwBbB+XjngaJACgaAXR3//A2rlw/gfcytL+UOXtwtAQAWchAC4ksPnEO8A+sQZ+PZWsQ5cJbM1t2Ql2WAgAg0d6My1cj4DcR79IFT4PL4x5fQR66hMhW45/3It7dgbQngXNQmATIbkFd9qEM9KJ8S3gyAD+iW82AXsQ8vkOxvx30dWwForI2AIKANVNVBcMjcFPpwF7rpJOHDE9SWBsyxW4TJ1xCiRFLBkC9EfSGgALXvBPJxEKpq8Pc70K1X0XvamOxpIfd5lsWZHCZrqG34TX0qGFIXaSFAsISx6+iDncj7QZK22+AtkzfPMZdW0thxkfX1e8m/G2Ji5CmmUERJ/w6h8TjCr+i6c4iNTouN7r98MEzz6T4qPw3D9Ahs3MQPU8fE0CiGvIC1KF+BWi6h97H2Es0tzheo2FYPRzv/dmDvdopBSoBnd1Y6Cy9QXL1njGJpfJDso7Ok+RmWgIX5BJNo1FqmcaS9pndddfbyzs3OGD3Fwqzjy/fE24L0qLWO82h7bdfiz9yZxKs6n8i0wEDrkLvyB9KrOCqdUGipAAAAAElFTkSuQmCC'
    ),
    (
        'Wilek Lamboll',
        '1993-11-16 01:32:29',
        'wlamboll8',
        'vH6#,O!cYRHR@S~D',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALASURBVDjLjZNJTFNRGIW7ZOFON2xMiBtDHOJKgom6dYgsWKCJTRgUIkSCYYOiiURiq1ZKsEUmAYMUEgm0MrWFIHagiEALhYJCKW2lpZOU9nUejve9CIJTvMn3huSe7/15N4e11HYnhVBK6CcYCRQhMdd4C5O11zH2+Eqiv/Ic1V120thamNYvZB8q5eccSAHAomGRzar1YQ5sE0I4ta/g1r+Ga64dm1PN2FDUwyLnwyjhYKHjLlS1eeitOAsiUO0KDB335nYEjplmQgvsmkZ8/SDEurQGRvETLHVVQdtcDgWPzQhq2alzuwL1vDl9Rj2O1eEmLIoeYEpYgDFOFsjYIGOjregIGgoOo6nkGLoeZaNJwIWgczh9V0Bfxlai0hlrBG5/DKFoEuFYEp5AHIu2EKbNQZjcERhdEQzMuiAYMkl3wrsCGpkh2CczBJLrZDMVTsDmjWHJHsYaCaq/+PBSZkm+GDT17g3vE9CItdsZEq3X+NHoh+VblAkP6Tyol5lX6gbXMn4N/ybYQTThVM6aKUyb/BBKzYo/7fmnoHvCodFZKcwQQd3AmvK/BSK1I1P8yWmet/jhoeKwb8cwOO0At2d5tbyhrLFUcNVXWJOFa9XnfRcqTtzfJ+hQbop7Jh3JNWeIOYlIPAlfKAGLJwp+Xyuq3uZhYEEInU0O/kgxcvjHcboklceE2xV22Yjegw1vFIFIAlESjieSoMiz1hpE3tOLkOhrITHUgV680ZvgjxbRghCra0Sf3qm0YdywBacvxoRJlhF4g3F83gzjcuUpDC20YO96Ny+kBWC6sCBrgEqjhmbZDasriO0AOUK7H6L3Jjx8o8OZ22l4Js8HR57LhDmy3J8T7C3T37pQzb2EbN5RPJffYL5M3+l35h/srTOpsJFUmPpRYaYLpMIJUmGKnX9wK7M4NUaPTfARuPT/+w5sF/jkpVJK3QAAAABJRU5ErkJggg=='
    ),
    (
        'Gavan Speares',
        '2015-09-13 22:57:40',
        'gspeares9',
        'yT4,ib|s,>r8k0LU',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKoSURBVDjLnZPdS5NhGMYVRIjwnyiKPojSTiKCCP+EDoqyA0H6OrAI3VjOVso2STTLQUmUI/REVzbQXNqqvVu6LSvbJ+7L3k3Wmpturj37dFfP88aGlEc+cPOe3Nd1/e4L3ioAVTsdjuMadyScn5+v1ev1Uq1WG9l2weVy1TkcDsXi4uKCxWLR0qRTW1Lrp+nTaDRptVr9v9jpdO6i4oVQKIRUKoVIJAKr1QqdTvd2dnZ2gKYGPB4PTCYT+vr6Rv9NrrXb7XM8z4O9UqmE8nO73RgbG0tTAgwODsaVSmWrVCrdXRZW04XLNpstFAgEUCgUsLm5KRiwSSQSSKfTCIfDUKlUUCgUTSKRqJZpGXI1nVfBYFBAZgKGzZbz+TwYjc+mRcjSiXxmHTMzM5DL5e1l6ipa1N0ychmbEfj9flAyrAR94E23EPeO45dTDXa/TCabrhiYzWYTQyzjMvRisQhCiHD38pdnWHWPoPDbh6XJJny3TEEikegrBgaDIZrL5SpChp3NZpHJZBALu+DWXkB2dRLZcD/W/FPQPTlXui2+2VgxME5MRFkawy4LWWGpjQ0sm3oQW9IgG+oC13Mc+bgG3543lr4+PXO2YmAdGuJYByxdENIik8kkIl4DlvUdyEVfgPiawSnrkeHFSATewKo66bI8PFEnGHjFouF0by/yRqOAv0GTk4k1uF9fwTotLvOjDWnP+b/jvURPGQBveIRP9xvuCAZ8S0uN70brHOnuEkpjhfKfR8Fz/chFHgvpae9FekKD8CWB6yA/teC6j/wy3Dt8SLgj0NxcY792dVgrFnOj7W1x7sHpIon5kVvTIxulHUTHt8xLFFIOrJhH8L5j//i2PxPFi5mUx4hRfpTQJEKTyEfZQfKh8wChIqKX7CN68V7yTrTH+Aes5yJtFoFr+wAAAABJRU5ErkJggg=='
    ),
    (
        'Damaris Sugden',
        '1994-05-28 13:59:27',
        'dsugdena',
        'jN1.$ebZ',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAANDSURBVDjLZZNvUBN0GMf3ot7ldb2q63UvuuuFd93Vq/ROMYyu9C4CCwE1uqHFOD3D1SxPUFCb5OBwBwMJMf5GjT/bMBhjILjGNraxv47JcGrIakIYAxT89BtXHdqLz7vn832eF99HAkg2UjhyYIugXRAR/CVYFswKumXD+995en6j+Izgh6TQf6sJe6wP0/QoutAonYEBOgLNHDLlPJL2ZRk+Mex57okAIT0rGGkMnufeooNQ3IsnPo424kQ/5afR6+Wya5x21wgV1jPkaNPdH7fvfn5jQFND4AxTC2b8CxZ8cz6csy6aJ338OBVG5ZhE+WuA74asaH0DVFgUpF9517AeIOS3BA+jD8zo5vR0zOvpjQ/Re9tLXfAGFz0hZHoHsh4Lp216NJEqHDNa3q9NXU1Tb9+dDPhJP1WN/Xc9LXNdtN23Yo25KXf6UNpuINU5yDcaOeLXoHYeJNj0EZNdpbgupVJS+YYnGRCd+KOHxmgt5bFLYrsXS8xF4S9OpF12iqw28iePUeLYxYxJzvyEDh7cZW6iA+P5nWvJgMXwvIlTwWJkk3I0dwdpidjJaR2jYGAYZegqSruCmO8EK7e7mTErSXh+ZnV6hPH6T5HIru1P3Jwz8Y37KAVuFfXTRnJbLOR2ekivuc6F/mri3q9ZS4yQuFlAfExG4EoeEw15vFf85rLks8HcO87ZTlTeU3wbHqTEdo3MRjvZ2hAntc3c93zF2pKFxfA+lqJ7WfAr8GtSMI+peF2x+Z5EFKNbG6hEN9XA4eunOelqJbtpFHltJTM2+T9yLku3svjTexy/+m2+139Onak4GTAoOaDLTBXFeOSJ6fnCeIgjA4WUNp3Fc7VInD3MUiSP5WgO8+KSgJCLLmZiDjcn5ceCrPUi7Wnd1VVuPkZPoAZlfQY+gwJ3r4o71gwWI3uJu77Epd6BXJ1BzVAxx9vy17f/18QPLqdtEsVwl/Uepv1cCixME9R8iEnxMqPVafSVbafBfBRjqAFFqzQphwQvPfFMO6u2bUq5sMVQIn2NFUsVK9YKrKXbaDv4Ct3D1WjMJ5LianKz4MX/feO/ZGx94WHZvlcf959No+7c1rUdis0JIfwmGBBkPz3/Nw6S0St8tXZAAAAAAElFTkSuQmCC'
    ),
    (
        'Chiquita Measen',
        '2015-01-17 01:14:01',
        'cmeasenb',
        'sA2)6AP{OK',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKGSURBVDjLjZNLSJRRFMd/3/eN6eSDGCeLHkLRy8SoTSZhUfRclVC4Ep1FLcJ9QQUSEUHQqqCCmFXELCrooWFFBRVB4WMi7YVjipqJiWOT4/fde26LL2ea2njhLi6c87+/c/7nWMYYurq69k09vtymxodQown2RD9UM7fz3ers7NygtX4lXrrQQTN25Si7rr+fU3YgEKgOxGKxDzU1Nc0FPa3RolLAgOd5OYEigjEm5x0MBn2R+vr6dVrrS1LWgIMi+fzpfz/Zto2IZN6WZWUEMwTz4q3R4jID4gcAnLk1iggY8BMEBGg5FM6WkSFY2IBjKSafPMsIiEDl8uAfAf9296cA0FrnEgS6H0RLwgZjTFbAGN71/0IAIwYjGjF+D2zbFoCsC2660LEUQxeOsD/WgzEmp+4Tt/eSmkly/mA7jpWHiKRCodD2LEHH/WjxQp9zNvnkzW+IaLQ2pPJmKA9XcCxWy8UDj8jPCxYCzl89aMRBMdHuu3D81m5MnsIVhWsplixYRcXiaqbSKSKxzZzddgfHcewMgf3mXrSkzCDa77gSl92VjWgjaNEIhuHJQaqWbeWnO01z+w7yl+r5fxE0YaMYb3uKZVmklYs2wtfxz3iiUOLhaY/kzBQbl9fy0/vFROTFoyzB67vRojIB3x3SKo3SikUl5SjRaCOMTA4QKlpMx+BLekc+MvqMxhwXbBT9pyPUtX/h8LXVpF0XV1zSymVleD1bVu7h7cAr4sNxbjQ9Ye2iSn8XlFJVm3of9s0PBTEGEokE53a0opTK7EHkwRYsO0h8IE5L7VV+9CX9sZ6d6cia0u3lRfN2DqW8weufxuP/7sOKUzzXxikYa9N10x0Mz67zb4UIk7Pj5YsYAAAAAElFTkSuQmCC'
    ),
    (
        'Saraann Lemonby',
        '2014-08-31 20:52:21',
        'slemonbyc',
        'mX6~PldP/Ky',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAANPSURBVBgZBcHdT1tlAMDh3zltORT6Ob4mtWDGMpgiU8LcEooJyiaEGbNkCkaNCVfeGP4Dr7zBG42J3hiVZInTeTMvFAPBYRhmGDBjEYaAMhhtVzraUjin5+M95/V5FCklAAAA4wtjfcCHwHmgAfADh8Ci9OSXn/d9+ysAAIAipQRgfGHMD0wC115PDmjxYANloxbDBuGaCHLMZqeEK9wZIdy3vh76/hhAkVIyvjAWAG731D/XeznZT9nUsLDZKitUSY0Dw0MKmyAGWWuepczSfeGIl79789ahCgBMdted6U0191BwbRxVQQiViqjCoIqCpbFvBtk7DNASeomek+1dtuXcAPAVL+2mgE/eOXPF97erk6VCxRMcmyEKVoCyCZvpIw51HS1+gBLd5GJ9B7Nrf566vji54rsw9uKnrzVf6FR8QbKqANnIU26I5ZyPiqmylj7Gqy6itf6DFdkk7xXxF10665Lq8sP1E37gfDKS4J6RIV+t8qyvDQ/Bzr6NaVaInpSUT0yz5ZXAksSExmbeYuCZbhxLPO8H6mr8tewYGfYtg3DNKUp2mGLRI9pg0hg3yLsvULZW0OQRR08OKJRqCAXDOLaI+aWUiiLBtspIkvgDLlN3HZRgiOyWQJURmhsqhI/6KKcdTJZw7G2QEiGE4neFVyjb5USdL0a4+hw7aQ9lZ502nvB0Yx3rd7LcpwNHFZzzVuloaSOTq2Zx/gGeJct+4Yi/HhZ2E6drksyk59H/OKY7mGBk5D10Xadtbw///CK6A++PXqO6KkA2m2V5eZloNm75ukbOHqzub789fDql3p6ZJb4f4sobV/nos6+4deM629v/0daSwDrM89vsLDd/vEnRyNLfd4nibimgfjP8w7RtOb9Mr/1O+CBINBwFIHZxCMO0GB0dJZVKMTQ0xODgIKZVwdduAhCLxlQ/gGM5785t3rtTT6SLfA4A4+5PKNJjYmKC2tpaAHRdR3qwMvXIGP6AmnQ6bSpSSgAGv3glbKTNnyP/xlOv9g4oiUSSgOojl8uxsbGBpmm0trbS1NSEI5zS3qM95ubmHitSSgAA2tvbfY399eOhx5GPmxubq7UqTVFQeKCsllyfu90pus4qKFiW5WYymbyu61f/B/q4pKqmYKY6AAAAAElFTkSuQmCC'
    ),
    (
        'Udall Hardwin',
        '2017-04-12 16:08:16',
        'uhardwind',
        'rI4{(p7AUL',
        'data:image/png,base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJ6SURBVDjLjZM7aJNhFIaf77/k/9OkJpBWjSWtaUEREVEXL6uoiIOLULCigyi4VRy8gHQo4uIsuIhOOuigCJKCLWpx8kLRQqFWhV4SQ1PTNGn+5Ls4RGlrq/jyLd9wHs57znvEvafvbmktTlZq2g8kq2VWfl0HfJe7Z4/v7gVwtBE9xw6kWn3fF0LY/EtVDUrWefxi/AzQAFQC7XmeL+4PzVFllpIYI73hO2G3iDSawnyYT+Mxmsw2HBJcOpFGaSF+Q52aBMuysQTUrCzplu94oW8UgxJSSRzPozOV5MtEhHioBa1XduUAaMCyBIHJE3Ln+LFYJFBValIiTRnP8ygHYRJhC4NZMZglgBAYqQlUnaoMWKwH1LREaUDUMVrhWAJjVk7VAjCmAfBppVSOYHAJtCKQCiFClEtRoqFN2LYFRqy2YEzDQtRuYyqbI+bP0BSx8IRkodBELpskGevEscSqzThmOcBdz6bwLibfDxKPTiOUwq220t7VQ9RPorT+MxZLHYzNnkNpjdKaLUGefakONDAxk+P5whW2f5xj6/gko7fnSTcnmjN38pcPZeRNxxiDAI40ggWAveMHlfIs/swILfvP0TOcYV39DVtOX8VLb2dxJGONvhroHzjolh2xRl5VOI4KxwlauhoJzDxgz6le/M9D8LKfpliczR0ddmHM9Dq+K4roemznhr0gxC+U+f0AeJvP4W9Mw9GLS977kthabHZCjnj4aHBiX02ZHcasfQOd0URz5cMzK/LkAsFilgpQmrdRNtPC/K1qmV53t/WFmiPXUgnpONYkpbzka85W9aq5/l8AgOHu9svlwvR5W4kOZZspA7cPZ+SNn/95GW/b/Tx4AAAAAElFTkSuQmCC'
    );

insert into
    money_tb (
        moneyDate,
        moneyInOut,
        moneyType,
        userId
    )
values (
        '2021-05-15 06:59:48',
        43462.63,
        2,
        10
    ),
    (
        '2022-06-09 16:36:38',
        66016.13,
        1,
        6
    ),
    (
        '2024-04-18 18:25:08',
        75481.71,
        2,
        10
    ),
    (
        '2022-11-01 09:50:28',
        45387.38,
        2,
        9
    ),
    (
        '2023-08-30 13:03:03',
        59865.18,
        1,
        13
    ),
    (
        '2022-01-12 21:48:07',
        75407.41,
        1,
        5
    ),
    (
        '2024-10-16 08:24:44',
        53863.19,
        1,
        1
    ),
    (
        '2021-07-11 08:49:06',
        38926.91,
        2,
        2
    ),
    (
        '2023-09-01 19:59:24',
        14206.37,
        2,
        12
    ),
    (
        '2022-07-12 12:03:31',
        20510.74,
        2,
        7
    ),
    (
        '2024-02-13 01:26:51',
        45166.61,
        2,
        13
    ),
    (
        '2022-06-26 19:52:02',
        90690.56,
        2,
        6
    ),
    (
        '2024-01-30 18:40:08',
        93643.1,
        2,
        9
    ),
    (
        '2023-12-22 04:36:51',
        64805.68,
        2,
        1
    ),
    (
        '2023-03-04 18:15:47',
        99993.26,
        1,
        1
    ),
    (
        '2023-01-28 21:43:02',
        82843.57,
        2,
        1
    ),
    (
        '2023-05-12 03:24:01',
        25736.93,
        1,
        8
    ),
    (
        '2023-09-07 10:04:51',
        53296.47,
        2,
        14
    ),
    (
        '2023-12-18 12:31:07',
        34244.07,
        2,
        9
    ),
    (
        '2024-07-18 05:49:43',
        94113.46,
        2,
        6
    ),
    (
        '2021-03-26 18:02:50',
        15017.69,
        2,
        11
    ),
    (
        '2023-05-08 15:40:36',
        82252.03,
        2,
        7
    ),
    (
        '2022-09-29 22:50:11',
        96859.17,
        1,
        3
    ),
    (
        '2024-04-16 00:07:11',
        73842.67,
        2,
        13
    ),
    (
        '2021-07-05 00:42:06',
        22272.86,
        1,
        7
    ),
    (
        '2022-02-18 05:00:39',
        65167.96,
        2,
        1
    ),
    (
        '2022-06-07 16:52:44',
        64295.71,
        1,
        4
    ),
    (
        '2021-09-18 01:41:11',
        40531.89,
        1,
        12
    ),
    (
        '2023-10-21 03:38:49',
        1421.01,
        1,
        9
    ),
    (
        '2022-01-31 19:42:32',
        82663.37,
        1,
        14
    ),
    (
        '2021-02-27 20:10:30',
        81362.25,
        1,
        13
    ),
    (
        '2023-07-21 14:34:12',
        60499.03,
        2,
        10
    ),
    (
        '2024-11-04 06:32:06',
        52464.2,
        2,
        12
    ),
    (
        '2024-09-02 11:05:39',
        33565.3,
        1,
        7
    ),
    (
        '2020-12-19 16:43:45',
        1716.33,
        1,
        8
    ),
    (
        '2022-12-06 16:56:18',
        60340.25,
        2,
        13
    ),
    (
        '2024-02-03 12:02:47',
        62524.36,
        1,
        2
    ),
    (
        '2021-12-31 12:23:38',
        57436.39,
        1,
        10
    ),
    (
        '2021-10-29 16:04:30',
        65042.28,
        1,
        6
    ),
    (
        '2021-10-09 23:37:41',
        82555.46,
        2,
        8
    ),
    (
        '2024-06-08 17:17:49',
        13421.01,
        2,
        1
    ),
    (
        '2023-07-18 18:00:43',
        96840.43,
        1,
        1
    ),
    (
        '2023-03-17 14:50:02',
        46279.6,
        2,
        7
    ),
    (
        '2021-04-30 04:08:23',
        79792.88,
        1,
        5
    ),
    (
        '2023-08-27 22:48:01',
        61700.78,
        2,
        10
    ),
    (
        '2022-09-14 14:25:10',
        94161.91,
        1,
        3
    ),
    (
        '2024-06-15 14:44:38',
        93406.9,
        2,
        5
    ),
    (
        '2023-05-14 07:23:10',
        61725.95,
        1,
        14
    ),
    (
        '2023-10-13 22:15:09',
        51020.49,
        2,
        4
    ),
    (
        '2021-05-18 02:35:04',
        41218.0,
        2,
        7
    ),
    (
        '2021-04-25 00:06:28',
        3392.29,
        1,
        1
    ),
    (
        '2021-08-13 21:55:08',
        63761.1,
        2,
        5
    ),
    (
        '2022-01-22 20:16:28',
        71497.78,
        2,
        9
    ),
    (
        '2022-03-02 06:53:49',
        73362.53,
        2,
        12
    ),
    (
        '2021-05-29 13:59:20',
        47827.23,
        1,
        4
    ),
    (
        '2023-03-17 07:27:17',
        93390.67,
        1,
        8
    ),
    (
        '2022-04-05 03:14:26',
        88920.94,
        1,
        13
    ),
    (
        '2024-01-02 11:59:56',
        90447.88,
        2,
        12
    ),
    (
        '2021-06-18 15:03:04',
        64853.07,
        1,
        4
    ),
    (
        '2023-07-08 14:31:47',
        98459.11,
        2,
        11
    ),
    (
        '2021-04-03 08:21:44',
        69339.95,
        1,
        11
    ),
    (
        '2021-08-27 08:46:28',
        96074.57,
        1,
        4
    ),
    (
        '2022-12-02 20:39:12',
        63089.7,
        1,
        7
    ),
    (
        '2021-06-23 12:47:16',
        15360.18,
        2,
        1
    ),
    (
        '2023-05-22 07:03:03',
        32933.89,
        2,
        1
    ),
    (
        '2020-12-07 16:39:54',
        32144.21,
        2,
        5
    ),
    (
        '2022-07-12 20:14:11',
        20465.11,
        2,
        13
    ),
    (
        '2021-05-15 03:20:56',
        75861.48,
        2,
        2
    ),
    (
        '2021-02-17 08:10:53',
        7873.7,
        1,
        3
    ),
    (
        '2022-05-10 11:39:25',
        61972.58,
        1,
        14
    ),
    (
        '2021-03-23 21:11:30',
        40785.55,
        1,
        4
    ),
    (
        '2023-05-08 15:54:47',
        96439.5,
        2,
        9
    ),
    (
        '2021-09-13 03:46:42',
        36888.39,
        2,
        10
    ),
    (
        '2023-11-02 05:59:46',
        93352.59,
        2,
        1
    ),
    (
        '2022-03-22 04:21:08',
        66258.65,
        1,
        11
    ),
    (
        '2022-10-04 06:08:51',
        53739.86,
        2,
        6
    ),
    (
        '2023-09-07 16:01:35',
        40618.38,
        1,
        3
    ),
    (
        '2022-09-05 05:18:17',
        78179.44,
        2,
        14
    ),
    (
        '2024-11-14 00:37:39',
        32839.51,
        1,
        3
    ),
    (
        '2021-11-28 06:20:23',
        33883.46,
        1,
        14
    ),
    (
        '2021-09-14 03:32:18',
        37964.1,
        1,
        3
    ),
    (
        '2022-07-14 12:51:36',
        99625.31,
        2,
        13
    ),
    (
        '2023-03-29 23:08:52',
        18557.16,
        2,
        7
    ),
    (
        '2023-05-08 04:35:32',
        25653.08,
        2,
        13
    ),
    (
        '2021-10-13 15:20:47',
        58365.34,
        1,
        10
    ),
    (
        '2021-04-09 09:23:04',
        1051.59,
        1,
        2
    ),
    (
        '2021-12-01 10:44:38',
        9474.49,
        1,
        13
    ),
    (
        '2021-09-19 02:11:55',
        40224.42,
        2,
        4
    ),
    (
        '2024-08-14 08:31:29',
        35478.55,
        1,
        13
    ),
    (
        '2023-11-16 00:35:13',
        30977.76,
        1,
        1
    ),
    (
        '2022-09-17 10:22:50',
        48363.97,
        2,
        12
    ),
    (
        '2021-12-18 15:51:36',
        62478.74,
        1,
        12
    ),
    (
        '2023-05-26 14:59:08',
        81597.03,
        1,
        13
    ),
    (
        '2023-05-25 11:34:44',
        57787.32,
        1,
        12
    ),
    (
        '2021-07-10 11:58:20',
        50298.0,
        2,
        1
    ),
    (
        '2023-07-13 02:11:50',
        33768.01,
        2,
        12
    ),
    (
        '2022-08-11 06:55:32',
        40189.86,
        2,
        4
    ),
    (
        '2022-11-14 02:31:07',
        86391.26,
        2,
        12
    ),
    (
        '2021-06-07 00:15:08',
        5840.79,
        2,
        12
    ),
    (
        '2021-10-05 07:42:01',
        61350.65,
        2,
        5
    );