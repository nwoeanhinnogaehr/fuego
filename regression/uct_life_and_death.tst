#-----------------------------------------------------------------------------
# Life and Death tests for GoUctGlobalSearchPlayer.
#-----------------------------------------------------------------------------

uct_param_player max_games 50000

#-----------------------------------------------------------------------------

loadsgf sgf/games/2008/CGOS/248520.sgf 25
10 reg_genmove b
#? [J4|H5]*
# keeping w separated is easiest way to keep both sides dead

20 sg_compare_float 0.5 uct_value
#? [1]
# B wins.

loadsgf sgf/games/2008/CGOS/248520.sgf 31
30 reg_genmove b
#? [J4|H5]*
# keeping w separated, kill top, is enough to win game

40 sg_compare_float 0.5 uct_value
#? [1]
# B wins.

loadsgf sgf/games/2008/CGOS/248520.sgf 43
50 reg_genmove b
#? [J4]*
# keeping w separated, kill one side, is enough to win game

60 sg_compare_float 0.5 uct_value
#? [1]
# B wins.

loadsgf sgf/games/2008/mogo-ko+ld-problem-variation.sgf 35
reg_genmove w
70 sg_compare_float 0.5 uct_value
#? [-1]*
# W lost, but program does not see it
# Only after Black E2 the value drops

loadsgf sgf/games/2008/mogo-ko+ld-problem-variation.sgf 37
reg_genmove w
80 sg_compare_float 0.2 uct_value
#? [-1]
# After Black E2 the program sees the loss

loadsgf sgf/games/2008/mogo-ko+ld-problem.sgf
90 reg_genmove w
#? [J4]
# apparently Mogo cannot solve this one.

loadsgf sgf/lifeanddeath/4x4nakade.sgf
reg_genmove w
100 sg_compare_float 0.8 uct_value
#? [1]
# apparently Mogo has some trouble with this one, thinks the b group is alive.

loadsgf sgf/lifeanddeath/eye-tricky.sgf 1
110 reg_genmove b
#? [D3]
# only way to live.

120 sg_compare_float 0.9 uct_value
#? [1]

130 reg_genmove w
#? [D3|F1|F3]
# three ways to kill.

140 sg_compare_float 0.7 uct_value
#? [1]

loadsgf sgf/lifeanddeath/eye-tricky.sgf 2
150 reg_genmove w
#? [D3]

160 sg_compare_float 0.7 uct_value
#? [1]

loadsgf sgf/lifeanddeath/eye-tricky.sgf 4
170 reg_genmove w
#? [E2]

180 sg_compare_float 0.7 uct_value
#? [1]

loadsgf sgf/lifeanddeath/eye-tricky.sgf 6
190 reg_genmove w
#? [F3]

200 sg_compare_float 0.9 uct_value
#? [1]

loadsgf sgf/games/2008/gnu-uct3K-28.sgf 40
210 reg_genmove w
#? [G8|H9]

loadsgf sgf/games/2008/KGS/7/26/MatroidX-4.sgf 36
220 reg_genmove w
#? [D2|E2]

loadsgf sgf/games/2008/KGS/7/26/MatroidX-4.sgf 37
230 reg_genmove b
#? [D2]

loadsgf sgf/games/2008/KGS/7/26/MatroidX-4.sgf 39
240 reg_genmove b
#? [A1]
# play ko for kill

loadsgf sgf/games/2008/KGS/7/26/MatroidX-5.sgf 43
250 reg_genmove b
#? [C8]
# defend territory, don't try to kill

loadsgf sgf/games/2008/CGOS/428168.sgf 36
260 reg_genmove w
#? [B9|D9]

loadsgf sgf/games/2008/CGOS/428168.sgf 37
270 reg_genmove b
#? [B9]

loadsgf sgf/games/2008/CGOS/428168.sgf 41
280 reg_genmove b
#? [A6]

loadsgf sgf/games/2008/CGOS/428168.sgf 42
290 reg_genmove w
#? [A6]

loadsgf sgf/games/2008/CGOS/428168.sgf 73
300 reg_genmove b
#? [B1]
# making 2 eyes is safest way, even though B wins the semeai

loadsgf sgf/games/2008/CGOS/397919.sgf 44
310 reg_genmove w
#? [A1]

loadsgf sgf/games/2008/CGOS/397919-variation.sgf 1
320 reg_genmove b
#? [A4]

loadsgf sgf/games/2008/CGOS/397739.sgf 44
330 reg_genmove w
#? [B2]*
# B2 seems 0.5 pt win. C4 leads to damezumari

loadsgf sgf/games/2008/CGOS/397651.sgf 60
340 reg_genmove w
#? [B2|C2|C1]
# must defend bottom or lose at least 4 stones and game.
# interesting case for Niu?

loadsgf sgf/games/2008/CGOS/397651.sgf 61
350 reg_genmove b
#? [B3]*

loadsgf sgf/games/2008/CGOS/397651.sgf 63
360 reg_genmove b
#? [C2]*

loadsgf sgf/games/2008/CGOS/397651.sgf 65
370 reg_genmove b
#? [B2]*

loadsgf sgf/games/2008/CGOS/397651.sgf 67
380 reg_genmove b
#? [A1]

loadsgf sgf/games/2008/CGOS/365007.sgf 39
390 reg_genmove b
#? [J7]
# nakade

loadsgf sgf/games/2008/CGOS/365007.sgf 52
400 reg_genmove w
#? [H8]

410 sg_compare_float 0.7 uct_value
#? [1]*
# cannot solve the Life&Death problem - value too low.

loadsgf sgf/games/2008/CGOS/543088.sgf 22
420 reg_genmove w
#? [B1]

loadsgf sgf/games/2008/CGOS/543088.sgf 23
430 reg_genmove b
#? [B1]*

