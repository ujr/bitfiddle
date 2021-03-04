% The Science of the Bit Fiddle: illustrations

outputtemplate := "%j-%c.mps";
u := 13mm;

beginfig(1) % 255 & i
draw u*up -- origin -- 2u*right;
draw (1u,u) -- (1u,0) dashed withdots scaled .5;
draw (2u,u) -- (2u,0) dashed withdots scaled .5;
pickup pencircle scaled 1pt;
draw origin -- (u,u);
draw (u,0) -- (2u,u);
label.top(btex{\tt 255\&i}etex, (u,u));
label.lft(btex 255 etex, (0,u));
label.lft(btex $0$ etex, origin);
endfig;

beginfig(2) % 2i == i<<1
draw u*up -- origin -- 2u*right;
for i:=0 upto 3:
  draw (.5(i+1)*u,u)--(.5(i+1)*u,0) dashed withdots scaled .5;
  draw (.5i*u,0)--(.5(i+1)*u,u) withpen pencircle scaled 1pt;
endfor
label.top(btex{\tt 2i $\equiv$ i<<1}etex, (u,u));
endfig;

beginfig(3) % i & 127
draw u*up -- origin -- 2u*right;
for i:=0 upto 3:
  draw (.5(i+1)*u,.5u)--(.5(i+1)*u,0) dashed withdots scaled .5;
  draw (.5i*u,0)--(.5(i+1)*u,.5u) withpen pencircle scaled 1pt;
endfor
label.top(btex{\tt 127\&i}etex, (u,u));
endfig;

beginfig(4) % (127&i)<<1
draw u*up -- origin -- 2u*right;
for i:=0 upto 3:
  draw (.5(i+1)*u,u)--(.5(i+1)*u,0) dashed withdots scaled .5;
  draw (.5i*u,0)--(.5(i+1)*u,u) withpen pencircle scaled 1pt;
endfor
label.top(btex{\tt(127\&i)<<1}etex, (u,u));
label.lft(btex 255 etex, (0,u));
label.lft(btex $0$ etex, origin);
label.bot(btex 256 etex, (u,0));
label.bot(btex 512 etex, (2u,0));
endfig;

beginfig(5) % (127&(i>>1))<<1
draw u*up -- origin -- 2u*right;
for i:=0 upto 1:
  draw ((i+1)*u,u)--((i+1)*u,0) dashed withdots scaled .5;
  draw (i*u,0)--((i+1)*u,u) withpen pencircle scaled 1pt;
endfor
label.top(btex{\tt(127\&(i>>1))<<1}etex, (u,u));
label.bot(btex 256 etex, (u,0));
label.bot(btex 512 etex, (2u,0));
endfig;

beginfig(6) % close-up
draw u*up -- origin -- 2u*right;
pickup pencircle scaled 2pt;
drawdot (0.8u,.2u); drawdot (0.9u,.2u);
drawdot (1.0u,.4u); drawdot (1.1u,.4u);
drawdot (1.2u,.6u); drawdot (1.3u,.6u);
drawdot (1.4u,.8u); drawdot (1.5u,.8u);
pickup pencircle scaled .3pt;
for i:=8 upto 15: draw (.1i*u,0)--(.1i*u,u) dashed withdots scaled .2; endfor
for i:=2 upto 8: draw (0,.1i*u)--(2u,.1i*u) dashed withdots scaled .2; endfor
label.top(btex ditto, closeup etex, (u,u));
label.bot(btex \phantom{128} etex, (u,0));
endfig;

beginfig(7)
draw u*up -- origin -- 8u*right;
draw .3u*up -- (.3u*up + 8u*right) dashed withdots scaled .5;
draw .6u*up -- (.6u*up + 8u*right) dashed withdots scaled .5;
draw .9u*up -- (.9u*up + 8u*right) dashed withdots scaled .5;
begingroup interim linecap := butt;
for i:=0 upto 15:
  draw (origin -- .5u*right)
    shifted (.5i*u, .3u*(i mod 4))
      withpen pencircle scaled 2pt;
endfor endgroup;
for i:=1 upto 4:
  draw (2i*u,0)--(2i*u,u) dashed withdots scaled .5;
endfor
label.top(btex{\tt putchar((3 \& (i*n >> o)) << 4);}etex, (4u,u));
label.lft(btex  $0$ etex, origin);
label.lft(btex $48$ etex, (0,.9u));
label.bot(btex $4\cdot 2^o/n$ etex, (2u,0));
label.bot(btex $8\cdot 2^o/n$ etex, (4u,0));
label.bot(btex $12\cdot 2^o/n$ etex, (6u,0));
label.rt(btex $i$ etex, (8u,0));
endfig;

end
